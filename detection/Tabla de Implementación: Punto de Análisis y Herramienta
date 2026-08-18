| Regla | Tipo | Punto de Análisis | Herramienta | Frecuencia |
| :--- | :--- | :--- | :--- | :--- |
| **YARA: BootROM_JTAG_USB_Mux** | YARA | `/dmesg`, `boot.img` | `yara -r` sobre imágenes firmware | Una vez por firmware |
| **YARA: Protected_Heap_Carveout** | YARA | `/dmesg`, `/proc/kmsg` | `yara -r` sobre logs kernel | Una vez por firmware |
| **YARA: PMIC_Thermal_Resets** | YARA | `/dmesg` | `yara -r` sobre logs kernel | Una vez por firmware |
| **YARA: F2FS_Corruption** | YARA | `/dmesg` | `yara -r` sobre logs kernel | Una vez por firmware |
| **YARA: Camera_Firmware_Load** | YARA | `/dmesg`, `/vendor/firmware/` | `yara -r` sobre imágenes firmware | Una vez por firmware |
| **YARA: SgpsUtils_SUPL_Write** | YARA | `classes.dex` (SGPS) | `yara -r` sobre APKs | Una vez por firmware |
| **YARA: Unisoc_AIEngine** | YARA | `classes.dex` (aiengine) | `yara -r` sobre APKs | Una vez por firmware |
| **YARA: OSU_WebView_Capture** | YARA | `classes.dex` (hotspot2) | `yara -r` sobre APKs | Una vez por firmware |
| **YARA: Pipeline_Buffer** | YARA | `classes.dex` (greenrobot) | `yara -r` sobre APKs | Una vez por firmware |
| **YARA: NFW_Proxy_Location** | YARA | `/vendor/etc/gps.conf` | `yara -r` sobre configs | Una vez por firmware |
| **VQL: Kernel_Modules** | VQL | `/proc/modules`, `/lib/modules/` | Velociraptor (en vivo) | Monitoreo continuo |
| **VQL: IOMMU_Manipulation** | VQL | `/lib/modules/sprd_iommu.ko` | Velociraptor (en vivo) | Monitoreo continuo |
| **VQL: NFC_Firmware** | VQL | `/vendor/firmware/sec_s3nrn4v_firmware.bin` | Velociraptor (triage) | Una vez por dispositivo |
| **VQL: TEE_Sunwave** | VQL | `/vendor/etc/sunwave_config.xml` | Velociraptor (triage) | Una vez por dispositivo |
| **VQL: DRM_Widevine** | VQL | `/vendor/etc/vintf/manifest/` | Velociraptor (triage) | Una vez por dispositivo |
| **VQL: CQA_SEQUENCE** | VQL | `/vendor/etc/motorola/12m/cqatest_cfg` | Velociraptor (triage) | Una vez por dispositivo |
| **VQL: WireGuard_Tunnel** | VQL | `ip addr`, `ss -tunap` | Velociraptor (en vivo) | Monitoreo continuo |
| **VQL: DNS_Private** | VQL | `/etc/resolv.conf`, conexiones | Velociraptor (en vivo) | Monitoreo continuo |
| **VQL: OSU_Active** | VQL | `ps`, `dumpsys wifi` | Velociraptor (en vivo) | Monitoreo continuo |
| **Sigma: Kernel_Modules** | Sigma | Logs de driver load (SELinux) | SIEM (Splunk/Elastic) | Tiempo real |
| **Sigma: NFC_TEE_DRM** | Sigma | Logs de file access (SELinux) | SIEM (Splunk/Elastic) | Tiempo real |
| **Sigma: Network_Exfil** | Sigma | Logs de red (conntrack) | SIEM (Splunk/Elastic) | Tiempo real |
