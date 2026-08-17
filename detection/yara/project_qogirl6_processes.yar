rule ProjectQogirl6_WcnChr_Process
{
    meta:
        author = "Alexis Michel De La Cruz Correa"
        date = "2026-08-17"
        description = "Detecta el proceso wcn_chr (Wireless Connectivity Character) asociado al túnel tun0"
        reference = "Project Qogirl6 - IOC-025"
        hash = "N/A"
        license = "MIT"
    strings:
        $proc1 = "wcn_chr" ascii wide
        $proc2 = "tun0" ascii wide
        $dns_private = "10.215.173.2" ascii
    condition:
        (any of ($proc*)) and $dns_private
}

rule ProjectQogirl6_LinkTurboNative
{
    meta:
        author = "Alexis Michel De La Cruz Correa"
        date = "2026-08-17"
        description = "Detecta el proceso linkturbonative (acelerador de red con bypass DNS)"
        reference = "Project Qogirl6 - IOC-026"
        license = "MIT"
    strings:
        $proc = "linkturbonative" ascii wide
        $bypass = "bypass" ascii
        $dns = "dns" ascii
    condition:
        $proc and (any of ($bypass, $dns))
}

rule ProjectQogirl6_SprdNetworkControl
{
    meta:
        author = "Alexis Michel De La Cruz Correa"
        date = "2026-08-17"
        description = "Detecta el proceso sprd_networkcontrol (control de red Unisoc comprometido)"
        reference = "Project Qogirl6 - IOC-027"
        license = "MIT"
    strings:
        $proc = "sprd_networkcontrol" ascii wide
        $sipc = "sprd_sipc" ascii
        $chan4 = "chan-4" ascii
        $chan5 = "chan-5" ascii
    condition:
        $proc and (any of ($sipc, $chan4, $chan5))
}

rule ProjectQogirl6_SrmiApp
{
    meta:
        author = "Alexis Michel De La Cruz Correa"
        date = "2026-08-17"
        description = "Detecta la app com.sprd.srmi.Srmiapp (C2 Client)"
        reference = "Project Qogirl6 - IOC-028"
        license = "MIT"
    strings:
        $pkg = "com.sprd.srmi.Srmiapp" ascii wide
        $c2 = "srmi" ascii
        $remote = "remote" ascii
    condition:
        $pkg and (any of ($c2, $remote))
}

rule ProjectQogirl6_IMS_GhostApp
{
    meta:
        author = "Alexis Michel De La Cruz Correa"
        date = "2026-08-17"
        description = "Detecta la app IMS fantasma spreadtrum.ims.app (interceptación RCS/VoLTE)"
        reference = "Project Qogirl6 - IOC-029"
        license = "MIT"
    strings:
        $pkg = "spreadtrum.ims.app" ascii wide
        $ims = "ims" ascii
        $volte = "volte" ascii
        $rcs = "rcs" ascii
    condition:
        $pkg and (any of ($ims, $volte, $rcs))
}

rule ProjectQogirl6_Motocit_Sequence
{
    meta:
        author = "Alexis Michel De La Cruz Correa"
        date = "2026-08-17"
        description = "Detecta la secuencia de extracción de 42 pasos en com.motorola.motocit"
        reference = "Project Qogirl6 - CVE-2026-5804"
        license = "MIT"
    strings:
        $pkg = "com.motorola.motocit" ascii wide
        $seq = "SEQUENCE" ascii
        $step37 = "gps.GPS" ascii
        $step41 = "simcard.SIMCard" ascii
        $step36 = "fingerprint.FingerPrintTestR" ascii
    condition:
        $pkg and $seq and (any of ($step37, $step41, $step36))
}

rule ProjectQogirl6_UnisocOverlayPower
{
    meta:
        author = "Alexis Michel De La Cruz Correa"
        date = "2026-08-17"
        description = "Detecta el APK malicioso unisoc_overlay_power_qogirl6.apk"
        reference = "Project Qogirl6 - IOC-009"
        license = "MIT"
    strings:
        $apk = "unisoc_overlay_power_qogirl6" ascii wide
        $vendor = "/vendor/overlay/" ascii
    condition:
        $apk and $vendor
}   
