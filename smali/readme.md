# Smali Analysis: Project Qogirl6

Esta carpeta contiene el código Smali de los componentes de sistema comprometidos, organizado por aplicación.

## ⚠️ Advertencia de Anti-Forense
La manipulación de los Smalis relacionados con los sensores IMS y `TsGestures` puede provocar un **kernel panic intencional** 
como mecanismo de defensa del backdoor (Rescue Party). Se requiere un control estricto del entorno de análisis.

## Estructura por Aplicación

### `com.spreadtrum.sgps/` (GNSS/SUPL)
| Archivo | Path Original | Hallazgo Crítico |
| :--- | :--- | :--- |
| `SgpsUtils.smali` | `/system/priv-app/SGPS/classes.dex` | `READ_SUPL_ALL`, `WRITE_SUPL_SINGLE`, `UART_LOG_SWITCH`, `mScreenWakeLock` |

### `com.motorola.motocit/` (MOTOCIT/CQA Test)
| Archivo | Path Original | Hallazgo Crítico |
| :--- | :--- | :--- |
| `NFCTest.smali` | `/system/priv-app/Motocit/classes.dex` | Fuerza estado NFC, inicia escaneo |
| `GPS.smali` | `/system/priv-app/Motocit/classes.dex` | Invoca `SgpsUtils.StartGpsMode()` |
| `SIMCard.smali` | `/system/priv-app/Motocit/classes.dex` | Lee IMEI, IMSI, ICCID |
| `FingerPrintTestR.smali` | `/system/priv-app/Motocit/classes.dex` | Extrae/verifica huella dactilar |
| `ScanNetwork.smali` | `/system/priv-app/Motocit/classes.dex` | Escanea SSIDs/BSSIDs |

### `com.longcheer.sidebar/` (SystemUI/Sidebar)
| Archivo | Path Original | Hallazgo Crítico |
| :--- | :--- | :--- |
| `Singleton.smali` | `/system/priv-app/Sidebar/classes.dex` | Persistencia Dagger (sin liberación) |
| `SidebarService.smali` | `/system/priv-app/Sidebar/classes.dex` | Ancla de persistencia `cmd_skt` |
| `SidebarServiceManager.smali` | `/system/priv-app/Sidebar/classes.dex` | Orquesta inicialización |

### `com.ts.tsgestures/` (TsGestures)
| Archivo | Path Original | Hallazgo Crítico |
| :--- | :--- | :--- |
| `BaseActivityTsGestures.smali` | `/system/priv-app/TsGestures/classes.dex` | `onTouchEvent` interceptado |
| `SettingsActivity.smali` | `/system/priv-app/TsGestures/classes.dex` | `INJECT_EVENTS`, `WRITE_SECURE_SETTINGS` |

### `com.android.hotspot2/` (NFC/Hotspot 2.0)
| Archivo | Path Original | Hallazgo Crítico |
| :--- | :--- | :--- |
| `OsuLoginActivity.smali` | `/system/app/Hotspot2/classes.dex` | `mWebView` (credenciales), `mForceDisconnect` |

### `com.unisoc.aiengine/` (AI Engine)
| Archivo | Path Original | Hallazgo Crítico |
| :--- | :--- | :--- |
| `RuntimeOptions.smali` | `/system/priv-app/AIEngine/classes.dex` | `dynamicBackendsPath`, `is_debug` |

### `org.greenrobot.essentials.io/` (GreenRobot I/O)
| Archivo | Path Original | Hallazgo Crítico |
| :--- | :--- | :--- |
| `PipelineOutputStream.smali` | `/system/framework/greenrobot-essentials.jar` | `CircularByteBuffer` (interceptación) |

### `spreadtrum.ims.app/` (IMS/STK)
| Archivo | Path Original | Hallazgo Crítico |
| :--- | :--- | :--- |
| `SpreadtrumImsApp.smali` | `/system/priv-app/IMS/classes.dex` | Interceptación RCS/VoLTE |
| `BootCompletedReceiver.smali` | `/system/priv-app/IMS/classes.dex` | Persistencia en boot |

### `com.sprd.srmi.Srmiapp/` (SRMI/C2)
| Archivo | Path Original | Hallazgo Crítico |
| :--- | :--- | :--- |
| `Srmiapp.smali` | `/system/priv-app/SRMI/classes.dex` | C2 Client (SIPC) |

## Notas de Análisis
- El análisis se realizó con 
- App Manager
A fully-featured package manager for android  io.github.muntashirakon.AppManager
Agradecimientos espaciales y recomendación de excelente herramienta para análisis y verificación de aplicaciones 
- **NO recompilar** los Smalis sin un entorno aislado (riesgo de kernel panic / Rescue Party).
- Referencia técnica: [README Principal](../README.md)   
