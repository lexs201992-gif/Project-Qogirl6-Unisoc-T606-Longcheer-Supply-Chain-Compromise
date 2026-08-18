rule ProjectQogirl6_BootROM_JTAG_USB_Mux
{
    meta:
        author = "Alexis Michel De La Cruz Correa"
        date = "2026-08-18"
        description = "Detecta el hardware MUX JTAG/USB en kmsg (Rescue Party)"
        reference = "Project Qogirl6 - AttackerKB Rescue Party Report"
        license = "MIT"
    strings:
        $mux1 = "usb-uart_jtag_mux" ascii
        $mux2 = "CTS-spidrv" ascii
        $iommu = "sprd_iommu" ascii
    condition:
        any of them
}

rule ProjectQogirl6_Protected_Heap_Carveout
{
    meta:
        author = "Alexis Michel De La Cruz Correa"
        date = "2026-08-18"
        description = "Detecta el protected heap carveout (nd_pmem) invisible para Android"
        reference = "Project Qogirl6 - Rescue Party Evidence"
        license = "MIT"
    strings:
        $heap1 = "carve_heap_name" ascii
        $heap2 = "Protec" ascii
        $pmem = "nd_pmem" ascii
        $gsi = "GSI-api" ascii
    condition:
        any of ($heap*) and $gsi
}

rule ProjectQogirl6_PMIC_Thermal_Resets
{
    meta:
        author = "Alexis Michel De La Cruz Correa"
        date = "2026-08-18"
        description = "Detecta acceso I2C a PMIC correlacionado con resets térmicos"
        reference = "Project Qogirl6 - aw9610x_i2c_probe"
        license = "MIT"
    strings:
        $pmic1 = "aw9610x_i2c_probe" ascii
        $pmic2 = "sc22xx-fgu" ascii
        $calib = "Calibrate property" ascii
    condition:
        any of ($pmic*) and $calib
}

rule ProjectQogirl6_F2FS_Corruption
{
    meta:
        author = "Alexis Michel De La Cruz Correa"
        date = "2026-08-18"
        description = "Detecta corrupción F2FS reportada por fscrypt (posible manipulación)"
        reference = "Project Qogirl6 - kmsg Imagen 6"
        license = "MIT"
    strings:
        $f2fs1 = "fscrypt f2fs: Info: Fox fsb reported corruption" ascii
        $f2fs2 = "f2fs f2fs info: nor exist /proc/version" ascii
    condition:
        any of them
}

rule ProjectQogirl6_Camera_Firmware_Load
{
    meta:
        author = "Alexis Michel De La Cruz Correa"
        date = "2026-08-18"
        description = "Detecta carga de firmware de cámara OmniVision (vector de inyección)"
        reference = "Project Qogirl6 - kmsg Imagen 6"
        license = "MIT"
    strings:
        $cam1 = "omnivision-tcm-spi" ascii
        $cam2 = "Hdl_firmware.img" ascii
        $cam3 = "Pixel Firmware" ascii
    condition:
        $cam1 and (any of ($cam2, $cam3))
}   
