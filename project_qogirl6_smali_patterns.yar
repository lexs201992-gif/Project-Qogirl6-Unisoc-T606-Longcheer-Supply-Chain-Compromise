rule ProjectQogirl6_SgpsUtils_SUPL_Write_Access
{
    meta:
        author = "Alexis Michel De La Cruz Correa"
        date = "2026-08-18"
        description = "Detecta SgpsUtils con acceso de escritura a configuración SUPL"
        reference = "Project Qogirl6 - SgpsUtils.smali"
        license = "MIT"
    strings:
        $cls = "com/spreadtrum/sgps" ascii
        $supl1 = "READ_SUPL_ALL" ascii
        $supl2 = "WRITE_SUPL_SINGLE" ascii
        $uart = "UART_LOG_SWITCH" ascii
        $wake = "mScreenWakeLock" ascii
    condition:
        $cls and (any of ($supl*)) and (any of ($uart, $wake))
}

rule ProjectQogirl6_Unisoc_AIEngine_Dynamic_Backend
{
    meta:
        author = "Alexis Michel De La Cruz Correa"
        date = "2026-08-18"
        description = "Detecta el motor de IA Unisoc con backends dinámicos y debug"
        reference = "Project Qogirl6 - com.unisoc.aiengine.RuntimeOptions"
        license = "MIT"
    strings:
        $pkg = "com/unisoc/aiengine" ascii
        $backend = "dynamicBackendsPath" ascii
        $debug = "is_debug" ascii
        $fp16 = "is_enableFp16TurboMode" ascii
        $parcel = "writeToParcel" ascii
    condition:
        $pkg and $backend and (any of ($debug, $fp16, $parcel))
}

rule ProjectQogirl6_OSU_WebView_Credential_Capture
{
    meta:
        author = "Alexis Michel De La Cruz Correa"
        date = "2026-08-18"
        description = "Detecta OsuLoginActivity con WebView y fuerza desconexión"
        reference = "Project Qogirl6 - OsuLoginActivity.smali"
        license = "MIT"
    strings:
        $cls = "OsuLoginActivity" ascii
        $webview = "mWebView" ascii
        $disconnect = "mForceDisconnect" ascii
        $callback = "mNetworkCallback" ascii
        $redirect = "mRedirectResponseReceived" ascii
    condition:
        $cls and $webview and (any of ($disconnect, $callback, $redirect))
}

rule ProjectQogirl6_Pipeline_Buffer_Interception
{
    meta:
        author = "Alexis Michel De La Cruz Correa"
        date = "2026-08-18"
        description = "Detecta PipelineOutputStream con buffer circular accesible"
        reference = "Project Qogirl6 - PipelineOutputStream.smali"
        license = "MIT"
    strings:
        $cls = "PipelineOutputStream" ascii
        $buffer = "CircularByteBuffer" ascii
        $wait = "waitForBuffer" ascii
        $notify = "notifyBuffer" ascii
        $input = "PipelineInputStream" ascii
    condition:
        $cls and $buffer and (any of ($wait, $notify, $input))
}

rule ProjectQogirl6_NFW_Proxy_Location_Redirect
{
    meta:
        author = "Alexis Michel De La Cruz Correa"
        date = "2026-08-18"
        description = "Detecta el proxy NFW de Unisoc para redirección SUPL/AGPS"
        reference = "Project Qogirl6 - gps.conf"
        license = "MIT"
    strings:
        $nfw = "com.spreadtrum.proxy.nfwlocation" ascii
        $supl = "SUPL_HOST" ascii
        $lpp = "LPP_PROFILE" ascii
    condition:
        $nfw and (any of ($supl, $lpp))
}   
