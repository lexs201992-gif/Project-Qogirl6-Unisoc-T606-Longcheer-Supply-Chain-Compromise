rule ProjectQogirl6_ModemCP_BootcodeInjection
{
    meta:
        author = "Alexis Michel De La Cruz Correa"
        date = "2026-08-17"
        description = "Detecta inyección de bootcode en modem_cp_info.xml (src_file=NULL)"
        reference = "Project Qogirl6 - IOC-020"
        license = "MIT"
    strings:
        $xml1 = "modem_bootcode" ascii
        $xml2 = "src_file=\"NULL\"" ascii
        $xml3 = "dst_file=\"boot_code\"" ascii
        $flag = "0x00000104" ascii
    condition:
        $xml1 and $xml2 and $xml3 and $flag
}

rule ProjectQogirl6_NFC_ScreenOffPower
{
    meta:
        author = "Alexis Michel De La Cruz Correa"
        date = "2026-08-17"
        description = "Detecta configuración NFC con SCREEN_OFF_POWER_STATE=1"
        reference = "Project Qogirl6 - libnfc-nci.conf"
        license = "MIT"
    strings:
        $nfc1 = "SCREEN_OFF_POWER_STATE=1" ascii
        $nfc2 = "NFA_AID_BLOCK_ROUTE=1" ascii
        $nfc3 = "LEGACY_MIFARE_READER=1" ascii
    condition:
        $nfc1 and (any of ($nfc2, $nfc3))
}

rule ProjectQogirl6_TEE_Sunwave_Emulation
{
    meta:
        author = "Alexis Michel De La Cruz Correa"
        date = "2026-08-17"
        description = "Detecta configuración TEE Sunwave con key_emulation y data_dumping"
        reference = "Project Qogirl6 - sunwave_config.xml"
        license = "MIT"
    strings:
        $tee1 = "key_emulation" ascii
        $tee2 = "data_dumping" ascii
        $tee3 = "img_invciper_data" ascii
        $tee4 = "Environment=\"TEE\"" ascii
    condition:
        $tee4 and (any of ($tee1, $tee2, $tee3))
}

rule ProjectQogirl6_CQA_Sequence42
{
    meta:
        author = "Alexis Michel De La Cruz Correa"
        date = "2026-08-17"
        description = "Detecta la secuencia de 42 pasos en cqatest_cfg"
        reference = "Project Qogirl6 - CVE-2026-5804"
        license = "MIT"
    strings:
        $cqa1 = "<SEQUENCE>" ascii
        $cqa2 = "NFCTest" ascii
        $cqa3 = "FingerPrintTestR" ascii
        $cqa4 = "SIMCard" ascii
        $cqa5 = "GPS" ascii
        $cqa6 = "ScanNetwork" ascii
    condition:
        $cqa1 and (3 of ($cqa*))
}   
