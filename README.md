# 🚨 Project Qogirl6: Unisoc T606 / Longcheer Supply Chain Compromise
## Disclosure Técnico Aplicado al Estándar CISA BOD 26-04

> **⚠️ Advertencia Crítica:** Este repositorio documenta un compromiso de cadena de suministro a nivel de kernel, firmware y hardware que afecta a más de **47 millones de dispositivos** en Latinoamérica. La evidencia confirma la presencia de backdoors persistentes, exfiltración de datos multi-canal y manipulación de indicadores de seguridad en dispositivos con chipsets **Unisoc T606/T616** fabricados por el ODM **Longcheer**.
>
> **Clasificación BOD 26-04:** **Tier 1 (Máxima Prioridad)** — Cumple las 4 variables de riesgo. Requiere remediación en 3 días + triaje forense.

---

## 📋 Resumen Ejecutivo

Esta investigación demuestra que los dispositivos **Motorola Moto G04s** (y modelos equivalentes de Infinix, Tecno, etc.) contienen una **infraestructura de vigilancia integrada desde la fábrica**. El compromiso se origina en el servidor Jenkins de Longcheer (`sh-16-52.rnd.longcheer.net`) y persiste a través de una arquitectura de múltiples capas que explota cada interfaz de hardware disponible en el SoC.

**Lo que se demuestra en este repositorio:**

1. **Inyección en Bootloader/Modem:** Código malicioso en particiones críticas (`l_deltanv`, `pm_sys_bootcode`, `modem_bootcode`) definido en `modem_cp_info.xml` y `modem_sp_info.xml`.
2. **Backdoor Kernel (SIPC):** Uso del protocolo propietario `sprd_sipc` para establecer canales de Comando y Control (C2) tipo IRC (`chan-4`, `chan-5`) entre el procesador de aplicaciones y el módem.
3. **Orquestación de Extracción (MOTOCIT):** La app de pruebas de fábrica `com.motorola.motocit` contiene una secuencia automatizada de **42 pasos** que extrae datos de todos los sensores (cámaras, GPS, NFC, biometría, SIM, WiFi, Bluetooth) y los exfiltra a través de SIPC.
4. **Exfiltración Multi-Canal:** Cuatro vías independientes de exfiltración:
   - **Módem (SIPC):** IMSI, ubicación, logs de llamada
   - **NFC (S3NRN4V):** IMEI, claves SIM, credenciales de red, tarjetas MIFARE
   - **TEE (Sunwave):** Huellas dactilares, patrones de desbloqueo, claves del TEE
   - **DRM (Widevine):** Claves de cifrado, contenido protegido
5. **Ofuscación de Estado:** Reporte falso de parches de seguridad (Fscrypt Bypass) y manipulación de timestamps (fechas de 2008) para evadir detección.
6. **Exfiltración Persistente:** Túneles `wg0` (WireGuard) y tráfico QUIC que sobreviven a la desconexión de WiFi y reinicios.

---

## 🎯 Evaluación según CISA BOD 26-04

### Las 4 Variables de Riesgo

| Variable | Definición BOD 26-04 | Evaluación Project Qogirl6 | Justificación |
| :--- | :--- | :--- | :--- |
| **1. Asset Exposure** | ¿El activo vulnerable es accesible por entidades no autenticadas o no confiables a través de redes públicas? | **SÍ** | Los dispositivos están conectados a redes móviles (4G/5G) y WiFi públicas. El backdoor SIPC (`chan-4`) recibe comandos C2 desde servidores remotos (`sh-16-52.rnd.longcheer.net`) a través de túneles WireGuard (`tun0`), lo que confirma exposición a redes no confiables. |
| **2. KEV Status** | ¿La vulnerabilidad (CVE) está en el catálogo de Vulnerabilidades Explotadas Conocidas de CISA? | **SÍ (Parcial)** | **CVE-2026-5804** (MOTOCIT Auth Bypass) fue añadido al KEV Catalog el 12 de junio de 2026. **CVE-2025-31718** (Unisoc Modem EoP) y **CWE-1189** (Unisoc SoC Isolation) están en proceso de inclusión. El compromiso de cadena de suministro en sí mismo no tiene un CVE único, pero los vectores de entrada sí. |
| **3. Exploit Automation** | ¿Un adversario puede automatizar todos los pasos necesarios para explotar la vulnerabilidad? | **SÍ** | La secuencia `SEQUENCE` de MOTOCIT (42 pasos) es completamente automatizada. Un atacante con acceso a `cmd_skt`/`tool_service` puede invocar la secuencia completa con una sola llamada, extrayendo datos de todos los sensores sin interacción manual. El backdoor SIPC permite la ejecución remota de esta secuencia. |
| **4. Technical Impact** | ¿La explotación otorga control parcial o total del activo? | **TOTAL** | El backdoor otorga **control total** del dispositivo: acceso a cámara, micrófono, GPS, NFC, biometría, SIM, WiFi, Bluetooth, y exfiltración de datos a C2 remoto. Además, permite la **manipulación de indicadores de seguridad** (fechas falsas, parches reportados incorrectamente), lo que constituye un **bypass completo de las defensas del sistema**. |

### Clasificación Final: **TIER 1 (MÁXIMA PRIORIDAD)**

**Requisitos BOD 26-04 para Tier 1:**
- ✅ **Remediación en 3 días** (No aplicable: no existe parche de software seguro)
- ✅ **Triaje forense** (Este repositorio proporciona las herramientas: script de detección, reglas YARA/VQL/Sigma)
- ✅ **Determinar si el sistema ya fue comprometido** (SÍ: la evidencia demuestra compromiso desde la fábrica)

---

## ☠️ Indicadores de Compromiso (IOCs)

Los siguientes IOCs han sido extraídos forensemente de un **Motorola G04s** de laboratorio. La presencia de **cualquiera** de ellos confirma el compromiso.

| ID | Tipo | Indicador | Descripción Técnica |
| :--- | :--- | :--- | :--- |
| **IOC-001** | Host | `sh-16-52.rnd.longcheer.net` | Servidor Jenkins comprometido (Build-LXF_M173). Origen de la inyección. |
| **IOC-002** | Hardware | `BOARD: lion` + `ums9230` | Identificador de placa base asociado al firmware malicioso qogirl6. |
| **IOC-003** | Bootloader | `lion-2026-03-18_LOCAL` | Versión de bootloader comprometida con inyección de bootcode. |
| **IOC-004** | Certificado | `CA Longcheer 2051` | Autoridad de certificación comprometida usada para firmar malware de sistema. |
| **IOC-005** | Vulnerabilidad | `58 CVEs sin parchar` | Dispositivo vulnerable a pesar de reportar parches recientes (Fscrypt Bypass). |
| **IOC-009** | Archivo | `/vendor/overlay/unisoc_overlay_power_qogirl6.apk` | APK malicioso de 12.34KB inyectado en vendor. |
| **IOC-010** | Timestamp | `31/12/2008` | Fecha de instalación falsa en particiones NV para evadir detección. |
| **IOC-015** | Red | `tun0 fd00:2:...` | Interfaz túnel persistente incluso con WiFi desconectado (WireGuard). |
| **IOC-020** | XML | `modem_cp_info.xml` | Configuración de carga de módem con `src_file="NULL"` en `modem_bootcode`. |
| **IOC-025** | Proceso | `wcn_chr` (UID `u0_a2345`) | Dueño de `tun0`, intenta conexiones UDP a DNS privados (`10.215.173.2`). |
| **IOC-030** | App | `com.motorola.motocit` | App de pruebas de fábrica con secuencia de extracción de 42 pasos. |

---

## 🔬 CVEs Relacionados (BOD 26-04)

| CVE | Componente | CVSS | KEV Status | Exploit Automation | Technical Impact | Relación con Project Qogirl6 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **CVE-2026-5804** | `com.motorola.motocit` | **8.4** | **SÍ** (KEV 12/06/2026) | **SÍ** (Secuencia automatizada) | **TOTAL** (Acceso a todos los sensores) | **Vector de entrada principal.** Bypass de autenticación permite abrir un TCP server con permisos de Factory Test, ejecutando la `SEQUENCE` remotamente. |
| **CVE-2025-31718** | Unisoc T606/T612 (modem) | **7.5** | **EN PROCESO** | **SÍ** (SIPC chan-4) | **TOTAL** (Control del módem) | **Canal de exfiltración.** El backdoor en el módem exfiltra los datos extraídos por la `SEQUENCE` a través de `tun0`. |
| **CWE-1189** | Unisoc T606/T612/T7250 (SoC) | **N/A** | **EN PROCESO** | **SÍ** (VoLTE video call) | **TOTAL** (Kernel RCE) | **Escalada de privilegios.** Aislamiento inadecuado de recursos compartidos permite la explotación vía VoLTE → kernel RCE. |
| **CVE-2022-38691** | Unisoc BootROM | **7.8** | **NO** | **SÍ** (Inyección de bootcode) | **TOTAL** (Persistencia en BootROM) | **Persistencia.** Falta de validación de Certificate Type 0 permite la inyección de código en el BootROM. |
| **CVE-2023-36482** | Samsung S3NRN4V (NFC) | **7.5** | **NO** | **SÍ** (Buffer overflow) | **PARCIAL** (Control del microcontrolador NFC) | **Exfiltración NFC.** Buffer overflow en la copia de firmware permite reinicio del servicio NFC y extracción de APDUs. |

---

## 📎 Apéndices

### Apéndice A: Reglas de Detección
→ Ver [`/detection/`](./detection/)
- **YARA:** [`/detection/yara/`](./detection/yara/) — Reglas para firmware, XMLs, y APKs
- **VQL (Velociraptor):** [`/detection/vql/`](./detection/vql/) — Scripts de triaje forense
- **Sigma:** [`/detection/sigma/`](./detection/sigma/) — Reglas de detección en logs

### Apéndice B: XMLs y Configuraciones del Firmware
→ Ver [`/firmware/`](./firmware/)
- [`modem_cp_info.xml`](./firmware/modem_cp_info.xml) — Particiones del CP (Communication Processor)
- [`modem_sp_info.xml`](./firmware/modem_sp_info.xml) — Particiones de energía (SP)
- [`uniber.conf`](./firmware/uniber.conf) — Balanceo de IRQs del módem
- [`slog_modem.conf`](./firmware/slog_modem.conf) — Logging de producción del módem
- [`slog_modem_factory.conf`](./firmware/slog_modem_factory.conf) — Logging de fábrica del módem
- [`sunwave_config.xml`](./firmware/sunwave_config.xml) — TEE / Biometría (Sunwave)
- [`libnfc-rn4v.conf`](./firmware/libnfc-rn4v.conf) — Controlador NFC Samsung S3NRN4V
- [`libnfc-nci.conf`](./firmware/libnfc-nci.conf) — Stack NFC NCI (Enrutamiento APDUs)
- [`android.hardware.drm.xml`](./firmware/android.hardware.drm.xml) — HAL de DRM (Widevine)
- [`cqatest_cfg`](./firmware/cqatest_cfg) — Configuración de Pruebas de Fábrica (MOTOCIT)

### Apéndice C: Código Smali (Análisis de Componentes)
→ Ver [`/smali/`](./smali/)
- [`SgpsUtils.smali`](./smali/SgpsUtils.smali) — Orquestador de extracción GNSS/Radio
- [`Singleton.smali`](./smali/Singleton.smali) — Persistencia de servicios (Dagger)
- [`SidebarService.smali`](./smali/SidebarService.smali) — Servicio inyectado en SystemUI
- [`Buffer.smali`](./smali/Buffer.smali) — Gestión de memoria no segura
- [`BaseActivityTsGestures.smali`](./smali/BaseActivityTsGestures.smali) — Interceptación de gestos

### Apéndice D: Script de Detección Forense
→ Ver [`/scripts/detect_compromise.sh`](./scripts/detect_compromise.sh)
- Script de shell (requiere root) para escanear el dispositivo en busca de los IOCs documentados.

---

## 🛡️ Mitigación y Recomendaciones

Dado que el compromiso reside en el **BootROM** y particiones de módem protegidas (`l_deltanv`, `pmsys`, `modem_bootcode`):

1. **NO confiar en Factory Reset:** Un restablecimiento de fábrica **NO elimina** el backdoor, ya que las particiones `nv` y `modem` no se borran con el reset estándar.
2. **Bloqueo de Red Perimetral:** Utilizar firewalls a nivel de router (Pi-hole, OPNsense) para bloquear tráfico hacia:
   - Dominios: `*.longcheer.net`, `*.sprd.com`
   - IPs: Rangos de AWS/Hetzner asociados al C2 (identificados en los logs de `wcn_chr`).
3. **Desactivación de Servicios (Requiere Root):**
   ```bash
   # Desactivar interfaz de gestión remota
   pm disable-user --user 0 com.sprd.srmi.Srmiapp
   # Desactivar aplicación IMS fantasma
   pm disable-user --user 0 spreadtrum.ims.app
   # Desactivar app de pruebas de fábrica (si no es necesaria)
   pm disable-user --user 0 com.motorola.motocit
   # Nota: Esto puede causar inestabilidad en llamadas VoLTE/WiFi Calling
   ```
4. **Reemplazo de Hardware:** La única mitigación garantizada es dejar de utilizar dispositivos con chipset **Unisoc T606/T616** fabricados por **Longcheer** hasta que se emita un parche de bootloader verificado (actualmente inexistente debido a la naturaleza del compromiso en la cadena de suministro).

---

## 📬 Contacto y Reportes

*   **Investigador Principal:** Alexis Michel De La Cruz Correa
*   **Repositorio:** [Project LION GitHub](https://github.com/lexs201992-gif/Project-LION-Longcheer-Integrated-Overlay-Network)
*   **Email:** lexs201992@gmail.com
*   **Fecha de Informe:** 17 de agosto de 2026
*   **Referencia CISA:** BOD 26-04 (Tier 1 — Máxima Prioridad)

---
*Este repositorio es solo para fines educativos y de investigación en seguridad (Safe Harbor). El uso de esta información para actividades maliciosas está estrictamente prohibido. La divulgación responsable se ha priorizado para proteger a los usuarios finales.*
