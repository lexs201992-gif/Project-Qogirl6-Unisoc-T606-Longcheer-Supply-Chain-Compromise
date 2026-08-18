.class public Lcom/motorola/motocit/wlan/ScanNetwork;
.super Lcom/motorola/motocit/Test_Base;
.source "ScanNetwork.java"


# instance fields
.field private SHOW_PASS:Ljava/lang/String;

.field private isRecord:Z

.field private isScanNetwork:Z

.field private isWiFiOffDefault:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mScanResult:Landroid/widget/TextView;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private mlistView:Landroid/widget/ListView;

.field myListView:Landroid/widget/ListView;

.field service:Ljava/lang/String;

.field wifiNetworkTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/motocit/Test_Base;-><init>()V

    const-string v0, "wifi"

    iput-object v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->service:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->isWiFiOffDefault:Z

    iput-object v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->myListView:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->wifiNetworkTextView:Landroid/widget/TextView;

    const-string v0, "PASS"

    iput-object v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->SHOW_PASS:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->isScanNetwork:Z

    iput-boolean v1, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->isRecord:Z

    new-instance v0, Lcom/motorola/motocit/wlan/ScanNetwork$1;

    invoke-direct {v0, p0}, Lcom/motorola/motocit/wlan/ScanNetwork$1;-><init>(Lcom/motorola/motocit/wlan/ScanNetwork;)V

    iput-object v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/motocit/wlan/ScanNetwork;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/motocit/wlan/ScanNetwork;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/wlan/ScanNetwork;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/motocit/wlan/ScanNetwork;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/motocit/wlan/ScanNetwork;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/wlan/ScanNetwork;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method private init()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->service:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/wlan/ScanNetwork;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->isWiFiOffDefault:Z

    iget-object v1, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/wlan/ScanNetwork;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/motorola/motocit/wlan/ScanNetwork;->requestPermissions([Ljava/lang/String;I)V

    :cond_1
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/wlan/ScanNetwork;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[rick debug] isGpsStateDefault is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x76

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/motocit/wlan/ScanNetwork;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    if-nez v1, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x190

    invoke-virtual {p0, v2, v3}, Lcom/motorola/motocit/wlan/ScanNetwork;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->wifiNetworkTextView:Landroid/widget/TextView;

    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->wifiNetworkTextView:Landroid/widget/TextView;

    const-string v3, "Starting scan networks..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private turnOffWiFi()V
    .locals 2

    iget-boolean v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->isWiFiOffDefault:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-wide/16 v0, 0x640

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

    iget-object v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->strRxCmd:Ljava/lang/String;

    const-string v1, "NO_VALID_COMMANDS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->strRxCmd:Ljava/lang/String;

    const-string v1, "help"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/motocit/wlan/ScanNetwork;->printHelp()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "%s help printed"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CmdPassException;

    iget v2, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->TAG:Ljava/lang/String;

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->strRxCmd:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v1, "Activity \'%s\' does not recognize command \'%s\'"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x69

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/motocit/wlan/ScanNetwork;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/motocit/Test_Base;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x69

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/wlan/ScanNetwork;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const/16 v0, 0x190

    if-ne p1, v0, :cond_1

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/wlan/ScanNetwork;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->TAG:Ljava/lang/String;

    const/16 v2, 0x65

    const-string v3, "Failed to enable Location"

    invoke-virtual {p0, v1, v3, v2}, Lcom/motorola/motocit/wlan/ScanNetwork;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v1, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->wifiNetworkTextView:Landroid/widget/TextView;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->wifiNetworkTextView:Landroid/widget/TextView;

    const-string v2, "Failed to start GPS, please quit"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->TAG:Ljava/lang/String;

    const/16 v2, 0x76

    const-string v3, "Location should be enabled"

    invoke-virtual {p0, v1, v3, v2}, Lcom/motorola/motocit/wlan/ScanNetwork;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v1, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->wifiNetworkTextView:Landroid/widget/TextView;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->wifiNetworkTextView:Landroid/widget/TextView;

    const-string v2, "Starting scan networks..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "WLAN_ScanNetwork"

    iput-object v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->TAG:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/motorola/motocit/Test_Base;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f080062

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/wlan/ScanNetwork;->adjustViewDisplayArea(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->mGestureListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->mGestureListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    const v1, 0x7f06015c

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/wlan/ScanNetwork;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->wifiNetworkTextView:Landroid/widget/TextView;

    const v1, 0x7f060115

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/wlan/ScanNetwork;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->mlistView:Landroid/widget/ListView;

    const v1, 0x7f0600e4

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/wlan/ScanNetwork;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->mScanResult:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/motorola/motocit/wlan/ScanNetwork;->init()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 10

    invoke-virtual {p0}, Lcom/motorola/motocit/wlan/ScanNetwork;->wasActivityStartedByCommServer()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    invoke-static {}, Lcom/motorola/motocit/TestUtils;->getPassFailMethods()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VOLUME_KEYS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v0, 0x19

    const-wide/16 v2, 0x3e8

    const v4, 0x8000

    const-string v5, "testresult.txt"

    const/16 v6, 0x69

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->TAG:Ljava/lang/String;

    const-string v9, "WLAN - ScanNetworks:  KEYCODE_VOLUME_DOWN PASS"

    invoke-virtual {p0, v0, v9, v6}, Lcom/motorola/motocit/wlan/ScanNetwork;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const-string v0, "WLAN - ScanNetworks:  PASS\r\n\r\n"

    invoke-virtual {p0, v5, v0, v4}, Lcom/motorola/motocit/wlan/ScanNetwork;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->TAG:Ljava/lang/String;

    const-string v4, "PASS"

    invoke-virtual {p0, v0, v4, v7, v7}, Lcom/motorola/motocit/wlan/ScanNetwork;->logTestResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    :try_start_0
    invoke-static {v2, v3, v8}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    invoke-direct {p0}, Lcom/motorola/motocit/wlan/ScanNetwork;->turnOffWiFi()V

    invoke-virtual {p0, v8}, Lcom/motorola/motocit/wlan/ScanNetwork;->systemExitWrapper(I)V

    goto :goto_2

    :cond_1
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->TAG:Ljava/lang/String;

    const-string v9, "WLAN - ScanNetworks:  KEYCODE_VOLUME_UP FAILED"

    invoke-virtual {p0, v0, v9, v6}, Lcom/motorola/motocit/wlan/ScanNetwork;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const-string v0, "WLAN - ScanNetworks:  FAILED\r\n\r\n"

    invoke-virtual {p0, v5, v0, v4}, Lcom/motorola/motocit/wlan/ScanNetwork;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->TAG:Ljava/lang/String;

    const-string v4, "FAIL"

    invoke-virtual {p0, v0, v4, v7, v7}, Lcom/motorola/motocit/wlan/ScanNetwork;->logTestResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    :try_start_1
    invoke-static {v2, v3, v8}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    invoke-direct {p0}, Lcom/motorola/motocit/wlan/ScanNetwork;->turnOffWiFi()V

    invoke-virtual {p0, v8}, Lcom/motorola/motocit/wlan/ScanNetwork;->systemExitWrapper(I)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    const-string v0, "Seq"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/wlan/ScanNetwork;->modeCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/wlan/ScanNetwork;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v8

    :cond_3
    invoke-direct {p0}, Lcom/motorola/motocit/wlan/ScanNetwork;->turnOffWiFi()V

    invoke-virtual {p0, v8}, Lcom/motorola/motocit/wlan/ScanNetwork;->systemExitWrapper(I)V

    :cond_4
    :goto_2
    return v1

    :cond_5
    :goto_3
    return v1
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onPause()V

    iget-object v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/wlan/ScanNetwork;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/motocit/wlan/ScanNetwork;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/motorola/motocit/wlan/ScanNetwork;->sendStartActivityPassed()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onStart()V

    return-void
.end method

.method public onSwipeDown()Z
    .locals 2

    const-string v0, "Seq"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/wlan/ScanNetwork;->modeCheck(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/wlan/ScanNetwork;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/motorola/motocit/wlan/ScanNetwork;->turnOffWiFi()V

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/wlan/ScanNetwork;->systemExitWrapper(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSwipeLeft()Z
    .locals 3

    const-string v0, "testresult.txt"

    const-string v1, "WLAN - ScanNetworks:  PASS\r\n\r\n"

    const v2, 0x8000

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/wlan/ScanNetwork;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->TAG:Ljava/lang/String;

    const-string v1, "PASS"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/motorola/motocit/wlan/ScanNetwork;->logTestResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

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
    invoke-direct {p0}, Lcom/motorola/motocit/wlan/ScanNetwork;->turnOffWiFi()V

    invoke-virtual {p0, v2}, Lcom/motorola/motocit/wlan/ScanNetwork;->systemExitWrapper(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSwipeRight()Z
    .locals 3

    const-string v0, "testresult.txt"

    const-string v1, "WLAN - ScanNetworks:  FAILED\r\n\r\n"

    const v2, 0x8000

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/wlan/ScanNetwork;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->TAG:Ljava/lang/String;

    const-string v1, "FAIL"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/motorola/motocit/wlan/ScanNetwork;->logTestResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

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
    invoke-direct {p0}, Lcom/motorola/motocit/wlan/ScanNetwork;->turnOffWiFi()V

    invoke-virtual {p0, v2}, Lcom/motorola/motocit/wlan/ScanNetwork;->systemExitWrapper(I)V

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

    iget-object v1, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "This function will perform a WiFi network scan"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/motorola/motocit/wlan/ScanNetwork;->getBaseHelp()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v1, "Activity Specific Commands"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CommServerDataPacket;

    iget v2, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->strRxCmd:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/wlan/ScanNetwork;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    return-void
.end method

.method protected receivedBroadcastScanResult(Landroid/content/Intent;)V
    .locals 13

    iget-object v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->TAG:Ljava/lang/String;

    const-string v1, "Scan result ready"

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/wlan/ScanNetwork;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v0, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->wifiNetworkTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number of available access points: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v2}, Lcom/motorola/motocit/wlan/ScanNetwork;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v9, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "ItemInfo"

    const-string v5, "ItemSsid"

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v8, v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v3, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "dBm "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/net/wifi/ScanResult;->frequency:I

    int-to-double v9, v7

    const-wide v11, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, "GHz  ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v8

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/widget/SimpleAdapter;

    const v6, 0x7f080063

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x2

    new-array v8, v3, [I

    fill-array-data v8, :array_0

    move-object v3, v2

    move-object v4, p0

    move-object v5, v0

    invoke-direct/range {v3 .. v8}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iget-object v3, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->mScanResult:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->mScanResult:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->SHOW_PASS:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->mScanResult:Landroid/widget/TextView;

    const v6, -0xff0100

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iput-boolean v5, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->isScanNetwork:Z

    :cond_1
    invoke-static {}, Lcom/motorola/motocit/TestUtils;->getTestMode()Ljava/lang/String;

    move-result-object v3

    const-string v6, "SEQUENCE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/motorola/motocit/TestUtils;->getTestMode()Ljava/lang/String;

    move-result-object v3

    const-string v6, "MMI"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->isScanNetwork:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->isRecord:Z

    if-nez v3, :cond_3

    iput-boolean v5, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->isRecord:Z

    iget-object v3, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->TAG:Ljava/lang/String;

    const/16 v5, 0x69

    const-string v6, "WLAN - ScanNetworks:  AUTO PASS"

    invoke-virtual {p0, v3, v6, v5}, Lcom/motorola/motocit/wlan/ScanNetwork;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const v3, 0x8000

    const-string v5, "testresult.txt"

    const-string v6, "WLAN - ScanNetworks:  PASS\r\n\r\n"

    invoke-virtual {p0, v5, v6, v3}, Lcom/motorola/motocit/wlan/ScanNetwork;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->TAG:Ljava/lang/String;

    const-string v5, "PASS"

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v5, v6, v6}, Lcom/motorola/motocit/wlan/ScanNetwork;->logTestResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    const-wide/16 v5, 0x3e8

    :try_start_0
    invoke-static {v5, v6, v4}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    invoke-direct {p0}, Lcom/motorola/motocit/wlan/ScanNetwork;->turnOffWiFi()V

    invoke-virtual {p0, v4}, Lcom/motorola/motocit/wlan/ScanNetwork;->systemExitWrapper(I)V

    :cond_3
    iget-object v3, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->mGestureListener:Landroid/view/View$OnTouchListener;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->mlistView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->mGestureListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_4
    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/motorola/motocit/wlan/ScanNetwork;->wifiNetworkTextView:Landroid/widget/TextView;

    const-string v3, "No Network Found"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :array_0
    .array-data 4
        0x7f06002a
        0x7f060029
    .end array-data
.end method
