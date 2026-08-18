# Firmware Evidence: Project Qogirl6

Esta carpeta contiene los XMLs y configuraciones de firmware extraídos del dispositivo de laboratorio (Motorola Moto G04s, Unisoc T606).

## Archivos

| Archivo | Descripción | Hallazgo Crítico |
| :--- | :--- | :--- |
| `modem_cp_info.xml` | Particiones del Communication Processor (CP) | `modem_bootcode` con `src_file="NULL"` (inyección dinámica) |
| `modem_sp_info.xml` | Particiones de energía (SP) | `pm_sys_bootcode` con bootcode hex inyectado |
| `uniber.conf` | Balanceo de IRQs del módem | `IGNORED_IRQ_NO` comentado (sin aislamiento AP/CP) |
| `slog_modem.conf` | Logging de producción del módem | `minidump enable`, `overwrite on` (anti-forense) |
| `slog_modem_factory.conf` | Logging de fábrica del módem | `cp_wcn on` (captura de tráfico baseband) |
| `sw_config.xml` | Configuración TEE (Sunwave/Trusty) | `key_emulation`, `data_dumping`, `img_invciper_data` |
| `libnfc-sec-vendor.conf` | Controlador NFC Samsung S3NRN4V | `CP_COLDRESET_ENABLE=1`, `OFFHOST_ROUTE_UICC=0x83` |
| `libnfc-nci.conf` | Stack NFC NCI (Enrutamiento APDUs) | `SCREEN_OFF_POWER_STATE=1`, `NFA_AID_BLOCK_ROUTE=1` |
| `android.hardware.drm.xml` | HAL de DRM (Widevine) | AIDL v1 (vulnerable a interceptación binder) |
| `cqatest_cfg` | Configuración MOTOCIT (Pruebas de Fábrica) | `SEQUENCE` 42 pasos, `MMI`, `PAT`, `LDA1-5` |
| `gps_conf` | Configuración GNSS/SUPL | `NFW_PROXY_APPS=com.spreadtrum.proxy.nfwlocation` |
| `lmkd_config` | Excepciones del Low Memory Killer | `com.longcheer.SarControl` (persistencia garantizada) |
| `build.prop` | Propiedades del sistema (product) | `oem_trusted_certificate`, `ro.base_build=noah` |
| `build.prop_system_ext` | Propiedades del sistema (system_ext) | `SYSTEM-Android14--U1.0-W26.11.3`, `no_require_sim=true` |

### Nota de Ofuscación: `sw_config.xml` (Sunwave TEE)
- **Nombre real:** `sw_config.xml`
- **Path original:** `/vendor/odm/etc/sw_config.xml`
- **Nombre esperado:** `sunwave_config.xml` en `/vendor/etc/`
- **Hallazgo:** El ODM (Longcheer/Unisoc) renombra y mueve la configuración del TEE (Sunwave) a la partición `odm` para evadir auditorías estándar. Esto confirma la intención de ocultar las capacidades de emulación y dump del sensor biométrico.
- **Proveedor:** Sunwave Corporation (Shenzhen) — fabricante independiente de sensores de huella. No es propiedad de Unisoc/Longcheer.
- **Implicación:** El backdoor no está en el chip Sunwave, sino en la **configuración inyectada por Longcheer** en el TEE de Unisoc.

### Nota sobre `FD_tunning_param.xml` (Reconocimiento Facial)
- **Path original:** `/system/vendor/etc/FD_tunning_param.xml`
- **Hallazgo:** Configuración de tuning para el motor de reconocimiento facial de Unisoc.
- **Riesgo:** El modo preview tiene `doubleCheck=1` y `checkFaceNum=3`, lo que permite **capturar datos faciales de múltiples personas** en tiempo real. Un atacante puede **forzar el modo preview** para **exfiltrar perfiles faciales** sin activar el FaceID oficial.
- **Implicación:** El dispositivo no solo captura una imagen, sino que **procesa y optimiza** el reconocimiento facial, construyendo un **perfil facial** a partir de múltiples frames.

### Nota sobre `FaceID.xml` (Sistema de Reconocimiento Facial)
- **Path original:** `/system/vendor/etc/FaceID.xml`
- **Hallazgo:** Configuración completa del sistema FaceID de Unisoc con liveness detection, análisis ocular y verificación facial activos.
- **Riesgo:** Los parámetros `fliveEnable=1`, `eyeAnalyzeEnable=1`, y `fvEnable=1` permiten **capturar datos faciales, estado de ojos, y liveness** en tiempo real. Un atacante puede **forzar una verificación facial** para **exfiltrar perfiles faciales** y **crear deepfakes**.
- **Implicación:** El dispositivo no solo desbloquea con la cara, sino que **procesa y almacena** datos faciales detallados (ángulos, calidad, liveness) que pueden ser **exfiltrados** a través del canal SIPC.   
### Nota sobre `FaceID.xml` (Parte 2: Liveness, FV y EyeAnalyze)
- **Path original:** `/system/vendor/etc/FaceID.xml`
- **Hallazgo:** Parámetros de liveness detection, Face Verification, y análisis ocular.
- **Riesgo:** 
  - `authLittleThr=0.50` permite **capturar perfiles faciales en contraluz/oscuridad**.
  - `authAnaEyeOpenBackThr=-20` permite **capturar datos faciales con contraluz**.
  - Los umbrales escalonados de ojos abiertos/cerrados permiten **capturar datos con parpadeo parcial**.
- **Implicación:** El sistema está diseñado para **capturar datos faciales en las peores condiciones de luz**, lo que facilita la **exfiltración encubierta** de perfiles faciales a través del canal SIPC.   

### Nota de Ofuscación: `libnfc-sec-vendor.conf` (NFC S3NRN4V)
- **Nombre real:** `libnfc-sec-vendor.conf`
- **Path original:** `/vendor/etc/libnfc-sec-vendor.conf`
- **Nombre esperado:** `libnfc-rn4v.conf` o `libnfc-samsung.conf`
- **Hallazgo:** El ODM usa el prefijo `sec-` (Samsung) y el sufijo `-vendor` para ocultar que el controlador NFC es un **S3NRN4V**. El "RN4V" solo es visible en el comentario `#Target: RN4V` y en los nombres de los binarios de firmware (`sec_s3nrn4v_*.bin`). Esto dificulta la identificación rápida del hardware NFC comprometido.

## Notas de Seguridad
- **No contienen datos personales** (IMEI, serial, MAC) han sido anonimizados.
- Los archivos son **evidencia primaria** del compromiso de cadena de suministro.
- **Advertencia de Anti-Forense:** La manipulación de los Smalis relacionados con los sensores IMS y `TsGestures` puede provocar un *kernel panic* intencional como mecanismo de defensa del backdoor. Se requiere un control estricto del entorno de análisis para evitar la activación de la "Rescue Party".
- Referencia técnica: [README Principal](../README.md)   
