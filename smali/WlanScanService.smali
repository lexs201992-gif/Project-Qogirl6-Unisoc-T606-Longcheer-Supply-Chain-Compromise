.class public Lcom/motorola/motocit/wlan/WlanScanService;
.super Landroid/app/Service;
.source "WlanScanService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/motocit/wlan/WlanScanService$LocalBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WLAN_Scan_Service"

.field private static final lockPrevScanResults:Ljava/util/concurrent/locks/Lock;

.field private static prevScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private NOTIFICATION:I

.field private channelId:Ljava/lang/String;

.field private final mBinder:Landroid/os/IBinder;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mNM:Landroid/app/NotificationManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/motocit/wlan/WlanScanService;->prevScanResults:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/motorola/motocit/wlan/WlanScanService;->lockPrevScanResults:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/motorola/motocit/wlan/WlanScanService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/motorola/motocit/wlan/WlanScanService$LocalBinder;-><init>(Lcom/motorola/motocit/wlan/WlanScanService;)V

    iput-object v0, p0, Lcom/motorola/motocit/wlan/WlanScanService;->mBinder:Landroid/os/IBinder;

    const v0, 0x7f0a0185

    iput v0, p0, Lcom/motorola/motocit/wlan/WlanScanService;->NOTIFICATION:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/motocit/wlan/WlanScanService;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v0, "CQATest_Wlan"

    iput-object v0, p0, Lcom/motorola/motocit/wlan/WlanScanService;->channelId:Ljava/lang/String;

    new-instance v0, Lcom/motorola/motocit/wlan/WlanScanService$1;

    invoke-direct {v0, p0}, Lcom/motorola/motocit/wlan/WlanScanService$1;-><init>(Lcom/motorola/motocit/wlan/WlanScanService;)V

    iput-object v0, p0, Lcom/motorola/motocit/wlan/WlanScanService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/motocit/wlan/WlanScanService;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/motocit/wlan/WlanScanService;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method private dbgLog(Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/motorola/motocit/TestUtils;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method public static getScanResults(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :try_start_0
    sget-object v0, Lcom/motorola/motocit/wlan/WlanScanService;->lockPrevScanResults:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    sget-object v1, Lcom/motorola/motocit/wlan/WlanScanService;->prevScanResults:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/motorola/motocit/wlan/WlanScanService;->lockPrevScanResults:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private showNotification()V
    .locals 7

    const v0, 0x7f0a0185

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/wlan/WlanScanService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/motocit/wlan/WlanScanService;->channelId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const v3, 0x7f05001c

    move-object v1, p0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lcom/motorola/motocit/NotificationUtils;->getNotification(Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;J)Landroid/app/Notification;

    move-result-object v1

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroid/app/Notification;->flags:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x1f

    if-lt v2, v4, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x2000000

    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    :goto_0
    const v3, 0x7f0a0184

    invoke-virtual {p0, v3}, Lcom/motorola/motocit/wlan/WlanScanService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p0, v3, v0, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v3, p0, Lcom/motorola/motocit/wlan/WlanScanService;->mNM:Landroid/app/NotificationManager;

    iget v4, p0, Lcom/motorola/motocit/wlan/WlanScanService;->NOTIFICATION:I

    invoke-virtual {v3, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const-string v0, "WLAN_Scan_Service"

    const-string v1, "Binding to WlanScanService"

    const/16 v2, 0x69

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/motocit/wlan/WlanScanService;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanScanService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/wlan/WlanScanService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/motorola/motocit/wlan/WlanScanService;->mNM:Landroid/app/NotificationManager;

    const-string v0, "WLAN_Scan_Service"

    const-string v1, "OnCreate of WlanScanService called"

    const/16 v2, 0x69

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/motocit/wlan/WlanScanService;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/wlan/WlanScanService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/motorola/motocit/wlan/WlanScanService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanScanService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanScanService;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/motocit/wlan/WlanScanService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/motocit/wlan/WlanScanService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/motorola/motocit/wlan/WlanScanService;->startWlanScan()V

    invoke-direct {p0}, Lcom/motorola/motocit/wlan/WlanScanService;->showNotification()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "WLAN_Scan_Service"

    const-string v1, "OnDestroy() of WlanScanService called"

    const/16 v2, 0x69

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/motocit/wlan/WlanScanService;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanScanService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/wlan/WlanScanService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanScanService;->mNM:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/motorola/motocit/wlan/WlanScanService;->NOTIFICATION:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received start id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WLAN_Scan_Service"

    const/16 v2, 0x69

    invoke-direct {p0, v1, v0, v2}, Lcom/motorola/motocit/wlan/WlanScanService;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const/4 v0, 0x1

    return v0
.end method

.method protected receivedBroadcastScanResult(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "WLAN_Scan_Service"

    const-string v1, "Scan result ready"

    const/16 v2, 0x64

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/motocit/wlan/WlanScanService;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    :try_start_0
    sget-object v0, Lcom/motorola/motocit/wlan/WlanScanService;->lockPrevScanResults:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v1, p0, Lcom/motorola/motocit/wlan/WlanScanService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/motorola/motocit/wlan/WlanScanService;->prevScanResults:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/motorola/motocit/wlan/WlanScanService;->lockPrevScanResults:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected startWlanScan()V
    .locals 8

    const-string v0, "no permission for startScanActive"

    const-string v1, "WLAN_Scan_Service"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x65

    :try_start_0
    iget-object v5, p0, Lcom/motorola/motocit/wlan/WlanScanService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "startScanActive"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v5

    invoke-direct {p0, v1, v0, v4}, Lcom/motorola/motocit/wlan/WlanScanService;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-virtual {v5}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v5

    invoke-direct {p0, v1, v0, v4}, Lcom/motorola/motocit/wlan/WlanScanService;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-virtual {v5}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :goto_1
    const/16 v0, 0x69

    if-eqz v2, :cond_0

    :try_start_1
    const-string v5, "Invoke active scan method"

    invoke-direct {p0, v1, v5, v0}, Lcom/motorola/motocit/wlan/WlanScanService;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanScanService;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v3, "cannot invoke startScanActive"

    invoke-direct {p0, v1, v3, v4}, Lcom/motorola/motocit/wlan/WlanScanService;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v3, "no access to startScanActive"

    invoke-direct {p0, v1, v3, v4}, Lcom/motorola/motocit/wlan/WlanScanService;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v0

    const-string v3, "bad argument for startScanActive"

    invoke-direct {p0, v1, v3, v4}, Lcom/motorola/motocit/wlan/WlanScanService;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_2
    goto :goto_3

    :cond_0
    const-string v3, "Invoke passive scan"

    invoke-direct {p0, v1, v3, v0}, Lcom/motorola/motocit/wlan/WlanScanService;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanScanService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    :goto_3
    return-void
.end method
