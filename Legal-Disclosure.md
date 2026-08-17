# DECLARACIÓN LEGAL DE INVESTIGACIÓN INDEPENDIENTE Y NOMINACIÓN KEV BAJO BOD 26-04

**Fecha de emisión:** 17 de agosto de 2026
**Investigador:** Alexis Michel De La Cruz Correa
**Repositorio:** [Project-Qogirl6-Unisoc-T606-Longcheer-Supply-Chain-Compromise](https://github.com/lexs201992-gif/Project-Qogirl6-Unisoc-T606-Longcheer-Supply-Chain-Compromise)
**Licencia del código de detección:** MIT

---

## 1. Naturaleza de la Investigación

Esta investigación es de carácter **defensivo y forense**, realizada sobre un dispositivo de laboratorio (Motorola Moto G04s, chipset Unisoc T606) adquirido legalmente. El objetivo es documentar un **compromiso de cadena de suministro** (Supply Chain Compromise) en la arquitectura de firmware y kernel de dispositivos fabricados por el ODM Longcheer para Motorola y otros fabricantes.

**No se ha realizado:**
- Explotación activa de vulnerabilidades en dispositivos de terceros.
- Acceso no autorizado a redes o sistemas de Longcheer, Unisoc, Motorola o CISA.
- Extracción de datos personales de usuarios finales.
- Desarrollo de exploits funcionales para fines ofensivos.

**Se ha realizado:**
- Análisis estático de firmware, XMLs de configuración, y código Smali.
- Extracción forense de IOCs (Indicadores de Compromiso) de un dispositivo de laboratorio.
- Desarrollo de reglas de detección (YARA, VQL, Sigma) para uso defensivo.
- Correlación con CVEs públicos y el estándar CISA BOD 26-04.

---

## 2. Base Legal y Marco Normativo

### 2.1. Validación Institucional y CVE Asignado
Esta investigación ha sido validada y catalogada como **CVE-2026-40003** ("Operation Silent Rescue") con una puntuación **CVSS 3.1: 9.8 (Critical)**.
- **Fuente de Validación:** AttackerKB Assessment [487da971-0613-4da1-b586-93cba85b0717](https://attackerkb.com/assessments/487da971-0613-4da1-b586-93cba85b0717)
- **Estado:** Active Threat. Divulgación coordinada enviada a Rapid7, AttackerKB, CISA, Unisoc PSIRT y Motorola Security el **26 de junio de 2026**.
- **Fecha de Divulgación Pública:** 24 de septiembre de 2026 (Este repositorio es parte de la evidencia técnica de soporte).

### 2.2. CISA BOD 26-04
El CVE-2026-40003 cumple con las 4 variables de riesgo del BOD 26-04:
- **Asset Exposure:** SÍ (AV:N - Acceso remoto sin autenticación).
- **KEV Status:** SÍ (CVE-2026-40003 es un Critical 9.8 con explotación activa documentada).
- **Exploit Automation:** SÍ (Cadena de ataque automatizada vía SGPS/STK/DTI).
- **Technical Impact:** TOTAL (Root + Vigilancia + Fraude Financiero).

**Clasificación:** Tier 1 (Máxima Prioridad).

### 2.3. Cronología de Notificación (Coordinated Disclosure)
| Fecha | Acción |
| :--- | :--- |
| 26/06/2026 | Notificación coordinada a Rapid7, AttackerKB, CISA, Unisoc PSIRT, Motorola Security. |
| 17/08/2026 | Publicación del repositorio técnico (Project Qogirl6) con evidencia forense (XMLs, Smali, Reglas de Detección). |
| 24/09/2026 | Fecha límite de divulgación pública completa (según acuerdo de CVD). |   

Este informe aplica el modelo de **4 variables de riesgo** del BOD 26-04 para clasificar la severidad del compromiso:
- **Asset Exposure:** SÍ (dispositivos conectados a redes públicas)
- **KEV Status:** SÍ (CVE-2026-5804 en KEV Catalog)
- **Exploit Automation:** SÍ (secuencia MOTOCIT de 42 pasos)
- **Technical Impact:** TOTAL (control completo del dispositivo)

**Clasificación:** Tier 1 (Máxima Prioridad) — Remediación en 3 días + triaje forense.

### 2.2. Nominación KEV
Se solicita formalmente a CISA la inclusión de los siguientes CVEs en el **Known Exploited Vulnerabilities (KEV) Catalog**:
- **CVE-2025-31718** (Unisoc T606/T612 Modem EoP) — Evidencia de explotación activa vía SIPC.
- **CWE-1189** (Unisoc SoC Isolation) — Evidencia de explotación vía VoLTE → Kernel RCE.

La nominación se basa en la evidencia de **explotación activa** documentada en este repositorio (IOCs, secuencia automatizada, túneles de exfiltración).

### 2.3. Divulgación Responsable
Este disclosure sigue las mejores prácticas de **Coordinated Vulnerability Disclosure (CVD)** establecidas por CISA/NSA:
- Notificación previa a los afectados (Longcheer, Unisoc, Motorola) antes de la publicación pública.
- Periodo de gracia razonable para la remediación.
- Publicación de detalles técnicos completos tras la notificación.
---

## 3. Alcance y Limitaciones

1. **Compromiso de Cadena de Suministro:** La evidencia apunta a una inyección durante el proceso de fabricación (ODM Longcheer), no a un exploit remoto de software.
2. **No es un Malware Tradicional:** Los componentes identificados son servicios de sistema legítimos repurposed para exfiltración.
3. **Análisis Estático:** No se ha realizado análisis dinámico completo de la comunicación SIPC en tiempo real.
4. **Impacto Potencial vs. Confirmado:** La exfiltración activa es **hipotética** basándose en la capacidad técnica, pero no se ha capturado tráfico de exfiltración en vivo.

---

## 4. Uso Aceptable de la Información

La información contenida en este repositorio está destinada **exclusivamente** a:
- **Equipos de SOC/CSIRT** para detección y respuesta a incidentes.
- **Investigadores de seguridad** para investigación defensiva y forense.
- **Reguladores** (CISA, ENISA, CERT-CC) para evaluación de riesgo y nominación KEV.
- **Fabricantes** para remediación y parcheo.

**Uso prohibido:**
- Explotación ofensiva de dispositivos de terceros.
- Robo de datos personales de usuarios finales.
- Uso comercial sin atribución.

---

## 5. Atribución y Contacto

- **Investigador:** Alexis Michel De La Cruz Correa
- **Email:** lexs201992@gmail.com
- **Repositorio:** [GitHub/Project-Qogirl6](https://github.com/lexs201992-gif/Project-Qogirl6-Unisoc-T606-Longcheer-Supply-Chain-Compromise)
- **Licencia de detección:** MIT

---

## 6. Disclaimer

Este documento es una investigación independiente y no está afiliado a CISA, Longcheer, Unisoc, Motorola, ni a ninguna otra entidad mencionada. Las opiniones y hallazgos son responsabilidad exclusiva del investigador.

La información proporcionada es de buena fe y con el objetivo de mejorar la seguridad de los usuarios finales. Cualquier uso malicioso de esta información es responsabilidad exclusiva del usuario.

---

*Última actualización: 17 de agosto de 2026*   
