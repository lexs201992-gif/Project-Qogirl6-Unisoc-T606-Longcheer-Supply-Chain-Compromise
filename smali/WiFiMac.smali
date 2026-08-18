.class public Lcom/motorola/motocit/wlan/WiFiMac;
.super Lcom/motorola/motocit/Test_Base;
.source "WiFiMac.java"


# instance fields
.field private isWiFiOffDefault:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private macTextView:Landroid/widget/TextView;

.field private wifiConnectionInfo:Landroid/net/wifi/WifiInfo;

.field private wifiMac_to_result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/motorola/motocit/Test_Base;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/motocit/wlan/WiFiMac;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/motorola/motocit/wlan/WiFiMac;->wifiConnectionInfo:Landroid/net/wifi/WifiInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/motocit/wlan/WiFiMac;->isWiFiOffDefault:Z

    new-instance v0, Lcom/motorola/motocit/wlan/WiFiMac$1;

    invoke-direct {v0, p0}, Lcom/motorola/motocit/wlan/WiFiMac$1;-><init>(Lcom/motorola/motocit/wlan/WiFiMac;)V

    iput-object v0, p0, Lcom/motorola/motocit/wlan/WiFiMac;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/motocit/wlan/WiFiMac;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WiFiMac;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private logResults(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "MAC_ADDRESS"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/motorola/motocit/wlan/WiFiMac;->wifiMac_to_result:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/motorola/motocit/wlan/WiFiMac;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/motorola/motocit/wlan/WiFiMac;->logTestResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private restoreWiFiState()V
    .locals 2

    iget-boolean v0, p0, Lcom/motorola/motocit/wlan/WiFiMac;->isWiFiOffDefault:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WiFiMac;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WiFiMac;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-wide/16 v0, 0x5dc

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected handleTestSpecificActions()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/motocit/CmdFailException;,
            Lcom/motorola/motocit/CmdPassException;
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WiFiMac;->strRxCmd:Ljava/lang/String;

    const-string v1, "NO_VALID_COMMANDS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/motocit/wlan/WiFiMac;->strRxCmd:Ljava/lang/String;

    const-string v1, "help"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/motocit/wlan/WiFiMac;->printHelp()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/motorola/motocit/wlan/WiFiMac;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "%s help printed"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CmdPassException;

    iget v2, p0, Lcom/motorola/motocit/wlan/WiFiMac;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/wlan/WiFiMac;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/motorola/motocit/wlan/WiFiMac;->TAG:Ljava/lang/String;

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/motorola/motocit/wlan/WiFiMac;->strRxCmd:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v1, "Activity \'%s\' does not recognize command \'%s\'"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/motorola/motocit/wlan/WiFiMac;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x69

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/motocit/wlan/WiFiMac;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/wlan/WiFiMac;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/wlan/WiFiMac;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "WLAN_MacAddress"

    iput-object v0, p0, Lcom/motorola/motocit/wlan/WiFiMac;->TAG:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/motorola/motocit/Test_Base;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/wlan/WiFiMac;->adjustViewDisplayArea(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/motocit/wlan/WiFiMac;->mGestureListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/motocit/wlan/WiFiMac;->mGestureListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    const v1, 0x7f06018f

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/wlan/WiFiMac;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/wlan/WiFiMac;->macTextView:Landroid/widget/TextView;

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/wlan/WiFiMac;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/motorola/motocit/wlan/WiFiMac;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/motocit/wlan/WiFiMac;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/motocit/wlan/WiFiMac;->wifiConnectionInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/motocit/wlan/WiFiMac;->macTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WiFi MAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/motorola/motocit/wlan/WiFiMac;->wifiConnectionInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/motorola/motocit/wlan/WiFiMac;->wifiConnectionInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/motocit/wlan/WiFiMac;->wifiMac_to_result:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/motorola/motocit/wlan/WiFiMac;->macTextView:Landroid/widget/TextView;

    const-string v2, "WiFi MAC: Failed to get Mac."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "Failed to get wifi mac"

    iput-object v1, p0, Lcom/motorola/motocit/wlan/WiFiMac;->wifiMac_to_result:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/motocit/wlan/WiFiMac;->isWiFiOffDefault:Z

    iget-object v1, p0, Lcom/motorola/motocit/wlan/WiFiMac;->macTextView:Landroid/widget/TextView;

    const-string v2, "Turning on wifi..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/motorola/motocit/wlan/WiFiMac;->wasActivityStartedByCommServer()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/motorola/motocit/TestUtils;->getPassFailMethods()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VOLUME_KEYS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    const/16 v0, 0x19

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/16 v3, 0x18

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const-string v0, "Seq"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/wlan/WiFiMac;->modeCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/wlan/WiFiMac;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v2

    :cond_2
    invoke-direct {p0}, Lcom/motorola/motocit/wlan/WiFiMac;->restoreWiFiState()V

    invoke-virtual {p0, v2}, Lcom/motorola/motocit/wlan/WiFiMac;->systemExitWrapper(I)V

    goto :goto_3

    :cond_3
    :goto_0
    const v3, 0x8000

    const-string v4, "testresult.txt"

    if-ne p1, v0, :cond_4

    const-string v0, "WLAN - WiFiMac: PASS\r\n"

    invoke-virtual {p0, v4, v0, v3}, Lcom/motorola/motocit/wlan/WiFiMac;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "PASS"

    invoke-direct {p0, v0}, Lcom/motorola/motocit/wlan/WiFiMac;->logResults(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "WLAN - WiFiMac: FAILED\r\n"

    invoke-virtual {p0, v4, v0, v3}, Lcom/motorola/motocit/wlan/WiFiMac;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "FAIL"

    invoke-direct {p0, v0}, Lcom/motorola/motocit/wlan/WiFiMac;->logResults(Ljava/lang/String;)V

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/motorola/motocit/wlan/WiFiMac;->wifiMac_to_result:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v3}, Lcom/motorola/motocit/wlan/WiFiMac;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4, v2}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    invoke-direct {p0}, Lcom/motorola/motocit/wlan/WiFiMac;->restoreWiFiState()V

    invoke-virtual {p0, v2}, Lcom/motorola/motocit/wlan/WiFiMac;->systemExitWrapper(I)V

    :cond_5
    :goto_3
    return v1

    :cond_6
    :goto_4
    return v1
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onPause()V

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WiFiMac;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/wlan/WiFiMac;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WiFiMac;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/wlan/WiFiMac;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/motocit/wlan/WiFiMac;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/motocit/wlan/WiFiMac;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/motorola/motocit/wlan/WiFiMac;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    invoke-virtual {p0}, Lcom/motorola/motocit/wlan/WiFiMac;->sendStartActivityPassed()V

    return-void
.end method

.method public onSwipeDown()Z
    .locals 2

    const-string v0, "Seq"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/wlan/WiFiMac;->modeCheck(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/wlan/WiFiMac;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/motorola/motocit/wlan/WiFiMac;->restoreWiFiState()V

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/wlan/WiFiMac;->systemExitWrapper(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSwipeLeft()Z
    .locals 4

    const-string v0, "testresult.txt"

    const-string v1, "WLAN - WiFiMac: PASS\r\n"

    const v2, 0x8000

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/wlan/WiFiMac;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/motorola/motocit/wlan/WiFiMac;->wifiMac_to_result:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/wlan/WiFiMac;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "PASS"

    invoke-direct {p0, v0}, Lcom/motorola/motocit/wlan/WiFiMac;->logResults(Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v1, v2}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    invoke-direct {p0}, Lcom/motorola/motocit/wlan/WiFiMac;->restoreWiFiState()V

    invoke-virtual {p0, v2}, Lcom/motorola/motocit/wlan/WiFiMac;->systemExitWrapper(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSwipeRight()Z
    .locals 4

    const-string v0, "testresult.txt"

    const-string v1, "WLAN - WiFiMac: FAILED\r\n"

    const v2, 0x8000

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/wlan/WiFiMac;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/motorola/motocit/wlan/WiFiMac;->wifiMac_to_result:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/wlan/WiFiMac;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "FAIL"

    invoke-direct {p0, v0}, Lcom/motorola/motocit/wlan/WiFiMac;->logResults(Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v1, v2}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    invoke-direct {p0}, Lcom/motorola/motocit/wlan/WiFiMac;->restoreWiFiState()V

    invoke-virtual {p0, v2}, Lcom/motorola/motocit/wlan/WiFiMac;->systemExitWrapper(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSwipeUp()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected printHelp()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/motorola/motocit/wlan/WiFiMac;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "This function will return the WiFi Mac Address"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/motorola/motocit/wlan/WiFiMac;->getBaseHelp()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v1, "Activity Specific Commands"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CommServerDataPacket;

    iget v2, p0, Lcom/motorola/motocit/wlan/WiFiMac;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/wlan/WiFiMac;->strRxCmd:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/motocit/wlan/WiFiMac;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/wlan/WiFiMac;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    return-void
.end method

.method protected receivedWifiOn(Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WiFiMac;->TAG:Ljava/lang/String;

    const-string v1, "receivedWifiOn"

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/wlan/WiFiMac;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WiFiMac;->macTextView:Landroid/widget/TextView;

    const-string v1, "Getting wifi mac..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WiFiMac;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/motocit/wlan/WiFiMac;->wifiConnectionInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WiFiMac;->TAG:Ljava/lang/String;

    const-string v1, "receivedWifiOn - get mac"

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/wlan/WiFiMac;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WiFiMac;->macTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiFi MAC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/motorola/motocit/wlan/WiFiMac;->wifiConnectionInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WiFiMac;->wifiConnectionInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/motocit/wlan/WiFiMac;->wifiMac_to_result:Ljava/lang/String;

    :cond_0
    return-void
.end method
