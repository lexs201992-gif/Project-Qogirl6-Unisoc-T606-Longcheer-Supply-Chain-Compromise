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
| `sunwave_config.xml` | Configuración TEE (Sunwave/Trusty) | `key_emulation`, `data_dumping`, `img_invciper_data` |
| `libnfc-rn4v.conf` | Controlador NFC Samsung S3NRN4V | `CP_COLDRESET_ENABLE=1`, `OFFHOST_ROUTE_UICC=0x83` |
| `libnfc-nci.conf` | Stack NFC NCI (Enrutamiento APDUs) | `SCREEN_OFF_POWER_STATE=1`, `NFA_AID_BLOCK_ROUTE=1` |
| `android.hardware.drm.xml` | HAL de DRM (Widevine) | AIDL v1 (vulnerable a interceptación binder) |
| `cqatest_cfg` | Configuración MOTOCIT (Pruebas de Fábrica) | `SEQUENCE` 42 pasos, `MMI`, `PAT`, `LDA1-5` |
| `gps_conf` | Configuración GNSS/SUPL | `NFW_PROXY_APPS=com.spreadtrum.proxy.nfwlocation` |
| `lmkd_config` | Excepciones del Low Memory Killer | `com.longcheer.SarControl` (persistencia garantizada) |
| `build.prop` | Propiedades del sistema (product) | `oem_trusted_certificate`, `ro.base_build=noah` |
| `build.prop_system_ext` | Propiedades del sistema (system_ext) | `SYSTEM-Android14--U1.0-W26.11.3`, `no_require_sim=true` |

## Notas de Seguridad
- **No contener datos personales** (IMEI, serial, MAC) han sido anonimizados.
- Los archivos son **evidencia primaria** del compromiso de cadena de suministro.
- Referencia técnica: [README Principal](../README.md)   
