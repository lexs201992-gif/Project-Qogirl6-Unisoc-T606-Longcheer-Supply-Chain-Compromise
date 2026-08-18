.class public Lcom/motorola/motocit/wlan/WlanUtilityNexTest;
.super Lcom/motorola/motocit/Test_Base;
.source "WlanUtilityNexTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/motocit/wlan/WlanUtilityNexTest$WifiServiceHandler;
    }
.end annotation


# static fields
.field private static WLAN_DISCONNECT_TIMEOUT_MSECS:J

.field public static WLAN_ENABLE_DISABLE_TIMEOUT_MSECS:J

.field private static WLAN_GET_MAC_TIMEOUT_MSECS:J

.field private static actionListenerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static asyncConnect:Ljava/lang/reflect/Method;

.field private static channelClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static channelListenerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static connectJB:Ljava/lang/reflect/Method;

.field private static connectNetwork:Ljava/lang/reflect/Method;

.field private static forgetAllNetwork:Ljava/lang/reflect/Method;

.field private static forgetAllNetworkJB:Ljava/lang/reflect/Method;

.field private static forgetJB:Ljava/lang/reflect/Method;

.field private static forgetNetwork:Ljava/lang/reflect/Method;

.field private static initializeJB:Ljava/lang/reflect/Method;


# instance fields
.field private mChannel:Ljava/lang/Object;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mIsBound:Z

.field private mIsWlanScanServiceBound:Z

.field private mMacAddress:Ljava/lang/String;

.field private mServiceMessage:Landroid/os/Messenger;

.field private mStatusTextView:Landroid/widget/TextView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWlanScanConnection:Landroid/content/ServiceConnection;

.field protected mWlanScanService:Lcom/motorola/motocit/wlan/WlanScanService;

.field private service:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->WLAN_ENABLE_DISABLE_TIMEOUT_MSECS:J

    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->WLAN_DISCONNECT_TIMEOUT_MSECS:J

    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->WLAN_GET_MAC_TIMEOUT_MSECS:J

    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->asyncConnect:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->connectNetwork:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->forgetNetwork:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->forgetAllNetwork:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->initializeJB:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->connectJB:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->forgetJB:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->forgetAllNetworkJB:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->channelClass:Ljava/lang/Class;

    sput-object v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->actionListenerClass:Ljava/lang/Class;

    sput-object v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->channelListenerClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/motocit/Test_Base;-><init>()V

    const-string v0, "wifi"

    iput-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->service:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mIsWlanScanServiceBound:Z

    iput-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mChannel:Ljava/lang/Object;

    iput-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mServiceMessage:Landroid/os/Messenger;

    new-instance v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest$1;

    invoke-direct {v0, p0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest$1;-><init>(Lcom/motorola/motocit/wlan/WlanUtilityNexTest;)V

    iput-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWlanScanConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest$3;

    invoke-direct {v0, p0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest$3;-><init>(Lcom/motorola/motocit/wlan/WlanUtilityNexTest;)V

    iput-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/motocit/wlan/WlanUtilityNexTest;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/motocit/wlan/WlanUtilityNexTest;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/motocit/wlan/WlanUtilityNexTest;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/motorola/motocit/wlan/WlanUtilityNexTest;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/motorola/motocit/wlan/WlanUtilityNexTest;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/motocit/wlan/WlanUtilityNexTest;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/motocit/wlan/WlanUtilityNexTest;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/motocit/wlan/WlanUtilityNexTest;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mStatusTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/motocit/wlan/WlanUtilityNexTest;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/motorola/motocit/wlan/WlanUtilityNexTest;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$802(Lcom/motorola/motocit/wlan/WlanUtilityNexTest;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mServiceMessage:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$902(Lcom/motorola/motocit/wlan/WlanUtilityNexTest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mIsBound:Z

    return p1
.end method

.method private configureWifiAsyncMethods()V
    .locals 11

    const-string v0, "forgetAllNetwork"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "android.net.wifi.WifiManager$Channel"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->channelClass:Ljava/lang/Class;

    const-string v5, "android.net.wifi.WifiManager$ActionListener"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->actionListenerClass:Ljava/lang/Class;

    const-string v5, "android.net.wifi.WifiManager$ChannelListener"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->channelListenerClass:Ljava/lang/Class;

    const-class v6, Landroid/net/wifi/WifiManager;

    const-string v7, "initialize"

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    aput-object v10, v9, v3

    const-class v10, Landroid/os/Looper;

    aput-object v10, v9, v2

    aput-object v5, v9, v1

    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->initializeJB:Ljava/lang/reflect/Method;

    const-class v5, Landroid/net/wifi/WifiManager;

    const-string v6, "connect"

    new-array v7, v8, [Ljava/lang/Class;

    sget-object v9, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->channelClass:Ljava/lang/Class;

    aput-object v9, v7, v3

    const-class v9, Landroid/net/wifi/WifiConfiguration;

    aput-object v9, v7, v2

    sget-object v9, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->actionListenerClass:Ljava/lang/Class;

    aput-object v9, v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->connectJB:Ljava/lang/reflect/Method;

    const-class v5, Landroid/net/wifi/WifiManager;

    const-string v6, "forget"

    new-array v7, v8, [Ljava/lang/Class;

    sget-object v9, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->channelClass:Ljava/lang/Class;

    aput-object v9, v7, v3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v2

    sget-object v9, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->actionListenerClass:Ljava/lang/Class;

    aput-object v9, v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->forgetJB:Ljava/lang/reflect/Method;

    const-class v5, Landroid/net/wifi/WifiManager;

    new-array v6, v8, [Ljava/lang/Class;

    sget-object v7, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->channelClass:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    sget-object v7, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->actionListenerClass:Ljava/lang/Class;

    aput-object v7, v6, v1

    invoke-virtual {v5, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->forgetAllNetworkJB:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->initializeJB:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {p0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    aput-object v8, v7, v2

    aput-object v4, v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mChannel:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    sput-object v4, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->channelClass:Ljava/lang/Class;

    sput-object v4, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->actionListenerClass:Ljava/lang/Class;

    sput-object v4, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->channelListenerClass:Ljava/lang/Class;

    sput-object v4, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->initializeJB:Ljava/lang/reflect/Method;

    sput-object v4, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->connectJB:Ljava/lang/reflect/Method;

    sput-object v4, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->forgetJB:Ljava/lang/reflect/Method;

    sput-object v4, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->forgetAllNetworkJB:Ljava/lang/reflect/Method;

    iput-object v4, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mChannel:Ljava/lang/Object;

    :goto_0
    :try_start_1
    const-class v5, Landroid/net/wifi/WifiManager;

    const-string v6, "asyncConnect"

    new-array v7, v1, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v3

    const-class v8, Landroid/os/Handler;

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->asyncConnect:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    aput-object v7, v1, v3

    new-instance v7, Lcom/motorola/motocit/wlan/WlanUtilityNexTest$WifiServiceHandler;

    invoke-direct {v7, p0, v4}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest$WifiServiceHandler;-><init>(Lcom/motorola/motocit/wlan/WlanUtilityNexTest;Lcom/motorola/motocit/wlan/WlanUtilityNexTest$1;)V

    aput-object v7, v1, v2

    invoke-virtual {v5, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    sput-object v4, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->asyncConnect:Ljava/lang/reflect/Method;

    :goto_1
    sget-object v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->asyncConnect:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    :try_start_2
    const-class v1, Landroid/net/wifi/WifiManager;

    const-string v5, "forgetNetwork"

    new-array v6, v2, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->forgetNetwork:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    sput-object v4, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->forgetNetwork:Ljava/lang/reflect/Method;

    :goto_2
    :try_start_3
    const-class v1, Landroid/net/wifi/WifiManager;

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->forgetAllNetwork:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    sput-object v4, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->forgetAllNetwork:Ljava/lang/reflect/Method;

    :goto_3
    :try_start_4
    const-class v0, Landroid/net/wifi/WifiManager;

    const-string v1, "connectNetwork"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v5, Landroid/net/wifi/WifiConfiguration;

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->connectNetwork:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    sput-object v4, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->connectNetwork:Ljava/lang/reflect/Method;

    :cond_0
    :goto_4
    return-void
.end method

.method private connectToNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/motocit/CmdFailException;
        }
    .end annotation

    sget-object v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->connectJB:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x69

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const-string v4, "calling JB connect"

    invoke-virtual {p0, v0, v4, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    :try_start_0
    sget-object v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->connectJB:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mChannel:Ljava/lang/Object;

    aput-object v6, v5, v2

    aput-object p1, v5, v1

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const-string v1, "finish calling JB connect"

    invoke-virtual {p0, v0, v1, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connect(%s) threw exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_0
    sget-object v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->connectNetwork:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const-string v4, "calling ICS connectNetwork"

    invoke-virtual {p0, v0, v4, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    :try_start_1
    sget-object v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->connectNetwork:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    nop

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const-string v1, "finish calling ICS connectNetwork"

    invoke-virtual {p0, v0, v1, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connectNetwork(%s) threw exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v4, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v0, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v1

    iget-object v4, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableNetwork returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->reconnect()Z

    move-result v4

    iget-object v5, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reconnect returned "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    if-eqz v4, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "reconnect failed"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v6, v2, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v6, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v6, v5}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "enableNetwork failed"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v5, v2, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v5, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v5, v4}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2
.end method

.method private doBindService()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.motorola.android.jvtcmd"

    const-string v3, "com.motorola.android.jvtcmd.JavaTcmdHelperWifiService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v1, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const-string v2, "bindService"

    const/16 v3, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method private doUnbindService()V
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mIsBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mIsBound:Z

    :cond_0
    return-void
.end method

.method public static intToIp(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isWifiConfigPreloaded(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v1, v3

    const-string v3, "preloaded_ssid"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    iget-object v4, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to access field by reflection. obj = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " class = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", field = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x65

    invoke-virtual {p0, v4, v5, v3, v6}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;C)V

    :goto_0
    return v0
.end method

.method private isWlanScanServiceRunning()Z
    .locals 10

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v1, 0x65

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const-string v4, "isWlanScanServiceRunning() Could not retrieve ActivityManager"

    invoke-virtual {p0, v3, v4, v1}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return v2

    :cond_0
    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const-string v5, "isWlanScanServiceRunning() Could not retrieve list of running services"

    invoke-virtual {p0, v4, v5, v1}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return v2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".wlan.WlanScanService"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWlanScanServiceRunning() looking for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x69

    invoke-virtual {p0, v4, v5, v6}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningServiceInfo;

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isWlanScanServiceRunning() check service named "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8, v6}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v7, v5, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v2, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const-string v4, "isWlanScanServiceRunning() returned true"

    invoke-virtual {p0, v2, v4, v6}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const/4 v2, 0x1

    return v2

    :cond_3
    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const-string v5, "isWlanScanServiceRunning() returned false"

    invoke-virtual {p0, v4, v5, v6}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return v2
.end method

.method private removeAllNetworks()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/motocit/CmdFailException;
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const-string v1, "removeAllNetworks"

    const/16 v2, 0x69

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v2}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->isWifiConfigPreloaded(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->removeNetwork(Landroid/net/wifi/WifiConfiguration;)V

    invoke-direct {p0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->removeAllNetworks()V

    :cond_1
    return-void
.end method

.method private removeNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/motocit/CmdFailException;
        }
    .end annotation

    sget-object v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->forgetJB:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x69

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calling JB forget "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    :try_start_0
    sget-object v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->forgetJB:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mChannel:Ljava/lang/Object;

    aput-object v6, v5, v2

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const-string v1, "finished calling JB forget"

    invoke-virtual {p0, v0, v1, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "forget(%s) threw exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_0
    sget-object v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->forgetNetwork:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calling ICS forgetNetwork "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    :try_start_1
    sget-object v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->forgetNetwork:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-array v5, v1, [Ljava/lang/Object;

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    nop

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const-string v1, "finished calling ICS forgetNetwork"

    invoke-virtual {p0, v0, v1, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "forgetNetwork(%s) threw exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removing configured network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result v0

    iget-object v4, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeNetwork() returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v5, v1, v2

    const-string v5, "removeNetwork(%s) failed"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1
.end method

.method private updateStatusText(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest$2;-><init>(Lcom/motorola/motocit/wlan/WlanUtilityNexTest;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected disableWlan()Z
    .locals 7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    iget-object v3, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const/16 v4, 0x76

    const-string v5, "Waiting for WLAN adapter to stop"

    invoke-virtual {p0, v3, v5, v4}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    sget-wide v5, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->WLAN_ENABLE_DISABLE_TIMEOUT_MSECS:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const/16 v4, 0x65

    const-string v5, "Failed to stop WLAN adapter"

    invoke-virtual {p0, v3, v5, v4}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_2
    return v0
.end method

.method protected disconnectFromNetwork()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/motocit/CmdFailException;
        }
    .end annotation

    sget-object v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->forgetAllNetworkJB:Ljava/lang/reflect/Method;

    const/16 v1, 0x69

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const-string v3, "calling JB forgetAllNetwork"

    invoke-virtual {p0, v0, v3, v1}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    :try_start_0
    sget-object v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->forgetAllNetworkJB:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mChannel:Ljava/lang/Object;

    aput-object v5, v4, v2

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const-string v2, "finished calling JB forgetAllNetwork"

    invoke-virtual {p0, v0, v2, v1}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JB forgetAllNetwork() threw exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v4, v2, v1}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v3}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_0
    sget-object v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->forgetAllNetwork:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const-string v3, "calling ICS forgetAllNetwork"

    invoke-virtual {p0, v0, v3, v1}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    :try_start_1
    sget-object v0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->forgetAllNetwork:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    nop

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const-string v2, "finished calling ICS forgetAllNetwork"

    invoke-virtual {p0, v0, v2, v1}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ICS forgetAllNetwork() threw exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v4, v2, v1}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v3}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_1
    invoke-direct {p0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->removeAllNetworks()V

    :goto_0
    return-void
.end method

.method doBindWlanScanService()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/motorola/motocit/wlan/WlanScanService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWlanScanConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v2, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mIsWlanScanServiceBound:Z

    return-void
.end method

.method protected enableWlan()Z
    .locals 7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    iget-object v3, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const/16 v4, 0x76

    const-string v5, "Waiting for WLAN adapter to start"

    invoke-virtual {p0, v3, v5, v4}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    sget-wide v5, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->WLAN_ENABLE_DISABLE_TIMEOUT_MSECS:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const/16 v4, 0x65

    const-string v5, "Failed to start WLAN adapter"

    invoke-virtual {p0, v3, v5, v4}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_2
    return v0
.end method

.method protected getDeclaredField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected handleTestSpecificActions()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/motocit/CmdFailException;,
            Lcom/motorola/motocit/CmdPassException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    const-string v2, "ENABLE_WLAN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/high16 v2, -0x10000

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/16 v5, 0x69

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->enableWlan()Z

    move-result v0

    if-ne v0, v4, :cond_0

    const-string v0, "Successfully enabled WLAN"

    invoke-direct {v1, v0, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->updateStatusText(Ljava/lang/String;I)V

    nop

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/motocit/CmdPassException;

    iget v3, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v4, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_0
    const-string v0, "Failed to enabled WLAN"

    invoke-direct {v1, v0, v2}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->updateStatusText(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "Failed to enable wlan"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v5}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v4, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_1
    iget-object v0, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    const-string v7, "DISABLE_WLAN"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->disableWlan()Z

    move-result v0

    if-ne v0, v4, :cond_2

    const-string v0, "Successfully disabled WLAN"

    invoke-direct {v1, v0, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->updateStatusText(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/motocit/CmdPassException;

    iget v3, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v4, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_2
    const-string v0, "Failed to disable WLAN"

    invoke-direct {v1, v0, v2}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->updateStatusText(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "Failed to disable wlan"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v5}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v4, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_3
    iget-object v0, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    const-string v7, "GET_WLAN_STATE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const-string v2, "UNKNOWN"

    goto :goto_0

    :pswitch_0
    const-string v2, "ENABLED"

    goto :goto_0

    :pswitch_1
    const-string v2, "ENABLING"

    goto :goto_0

    :pswitch_2
    const-string v2, "DISABLED"

    goto :goto_0

    :pswitch_3
    const-string v2, "DISABLING"

    nop

    :goto_0
    iget-object v3, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wlanState = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/motocit/CommServerDataPacket;

    iget v4, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v5, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    iget-object v6, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/motocit/CmdPassException;

    iget v6, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v7, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v4}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v5

    :cond_4
    iget-object v0, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    const-string v7, "START_WLAN_SCAN"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->isWlanScanServiceRunning()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v4, Lcom/motorola/motocit/wlan/WlanScanService;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v0, "Started WLAN scan service"

    invoke-direct {v1, v0, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->updateStatusText(Ljava/lang/String;I)V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->doBindWlanScanService()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/motocit/CmdPassException;

    iget v3, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v4, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_6
    iget-object v0, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    const-string v7, "STOP_WLAN_SCAN"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->isWlanScanServiceRunning()Z

    move-result v0

    if-ne v0, v4, :cond_7

    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v4, Lcom/motorola/motocit/wlan/WlanScanService;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->stopService(Landroid/content/Intent;)Z

    const-string v0, "Stopped WLAN scan service"

    invoke-direct {v1, v0, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->updateStatusText(Ljava/lang/String;I)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->unbindWlanScanService()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/motocit/CmdPassException;

    iget v3, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v4, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_8
    iget-object v0, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    const-string v7, "GET_WLAN_SCAN_RESULTS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v7, 0x2

    if-eqz v0, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/motorola/motocit/wlan/WlanScanService;->getScanResults(Ljava/util/List;)V

    const/4 v2, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    iget-object v11, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    aput-object v11, v10, v4

    const-string v11, "SSID_%d=%s"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    iget-object v11, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v11, v10, v4

    const-string v11, "BSSID_%d=%s"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    iget-object v11, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    aput-object v11, v10, v4

    const-string v11, "CAPABILITIES_%d=%s"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    iget v11, v9, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    const-string v11, "FREQUENCY_%d=%d"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    iget v11, v9, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    const-string v11, "LEVEL_%d=%d"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_9
    new-instance v4, Lcom/motorola/motocit/CommServerDataPacket;

    iget v6, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v7, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    iget-object v8, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-direct {v4, v6, v7, v8, v5}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WLAN scan found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " APs"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->updateStatusText(Ljava/lang/String;I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/motorola/motocit/CmdPassException;

    iget v8, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v9, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v3}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v7

    :cond_a
    iget-object v0, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    const-string v8, "GET_WLAN_MAC"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    const-string v8, "CONNECT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v8, "Cannot execute %s because WLAN is not enabled"

    if-eqz v0, :cond_22

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xe

    if-lt v0, v9, :cond_21

    const/4 v0, 0x0

    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v15, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmdDataList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-eqz v15, :cond_20

    iget-object v15, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmdDataList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-object v2, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v0

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->splitKeyValuePair(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    aget-object v3, v17, v6

    aget-object v5, v17, v4

    const-string v4, "SSID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object v4, v5

    move-object v9, v4

    goto/16 :goto_3

    :cond_b
    const-string v4, "IP_ASSIGNMENT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v4}, Landroid/net/IpConfiguration$IpAssignment;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    move-object v10, v4

    goto/16 :goto_3

    :cond_c
    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v4}, Landroid/net/IpConfiguration$IpAssignment;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    move-object v10, v4

    goto/16 :goto_3

    :cond_d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v6

    const/4 v8, 0x1

    aput-object v5, v7, v8

    const-string v8, "\'%s\' is set to an invalid value \'%s\'"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v8, 0x69

    invoke-virtual {v1, v7, v6, v8}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v6, Lcom/motorola/motocit/CmdFailException;

    iget v7, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v8, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v4}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v6

    :cond_e
    const-string v4, "IP_ADDRESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object v4, v5

    move-object v11, v4

    goto :goto_3

    :cond_f
    const-string v4, "NETWORK_PREFIX_LENGTH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v12, v4

    goto :goto_3

    :cond_10
    const-string v4, "GATEWAY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object v4, v5

    move-object v13, v4

    goto :goto_3

    :cond_11
    const-string v4, "DNS_1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object v4, v5

    move-object v14, v4

    goto :goto_3

    :cond_12
    const-string v4, "DNS_2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object v2, v5

    :cond_13
    :goto_3
    const/4 v3, -0x1

    const/4 v4, 0x1

    const/16 v5, 0x69

    goto/16 :goto_2

    :cond_14
    iget-object v0, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v4}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->isWifiConfigPreloaded(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_15

    goto :goto_4

    :cond_15
    invoke-direct {v1, v4}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->removeNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_4

    :cond_16
    if-eqz v9, :cond_1e

    iget-object v0, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting up config object for SSID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x69

    invoke-virtual {v1, v0, v4, v5}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput v6, v4, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    iput v7, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v10, v0, :cond_1d

    if-eqz v11, :cond_1c

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v11}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v5, v0

    nop

    const/4 v8, -0x1

    if-eq v8, v12, :cond_1b

    if-ltz v12, :cond_1a

    const/16 v0, 0x20

    if-gt v12, v0, :cond_1a

    :try_start_1
    invoke-virtual {v1, v5, v12, v4}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->setIpAddress(Ljava/net/InetAddress;ILandroid/net/wifi/WifiConfiguration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    if-eqz v13, :cond_19

    const/4 v8, 0x0

    :try_start_2
    invoke-static {v13}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v8, v0

    nop

    if-eqz v14, :cond_18

    const/4 v15, 0x0

    :try_start_3
    invoke-static {v14}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v15, v0

    nop

    if-nez v2, :cond_17

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-array v7, v6, [Ljava/lang/Object;

    const-string v6, "DNS_2 key not set"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v16, v3

    const/16 v3, 0x69

    invoke-virtual {v1, v6, v7, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v3, Lcom/motorola/motocit/CmdFailException;

    iget v6, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v7, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v6, v7, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3

    :cond_17
    move-object/from16 v16, v3

    :try_start_4
    invoke-static {v2}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid dns 2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v0

    const/4 v7, 0x0

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v7, 0x69

    invoke-virtual {v1, v0, v6, v7}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v0, Lcom/motorola/motocit/CmdFailException;

    iget v6, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v7, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v0, v6, v7, v3}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v0

    :catch_1
    move-exception v0

    move-object/from16 v16, v3

    move-object v3, v0

    move-object v0, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid dns 1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v0

    const/4 v7, 0x0

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v7, 0x69

    invoke-virtual {v1, v0, v6, v7}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v0, Lcom/motorola/motocit/CmdFailException;

    iget v6, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v7, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v0, v6, v7, v3}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v0

    :cond_18
    move-object/from16 v16, v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "DNS_1 key not set"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v7, 0x69

    invoke-virtual {v1, v6, v3, v7}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v3, Lcom/motorola/motocit/CmdFailException;

    iget v6, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v7, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v6, v7, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3

    :catch_2
    move-exception v0

    move-object/from16 v16, v3

    move-object v3, v0

    move-object v0, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid gateway: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v15, v7, [Ljava/lang/Object;

    invoke-static {v6, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/16 v15, 0x69

    invoke-virtual {v1, v6, v7, v15}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v6, Lcom/motorola/motocit/CmdFailException;

    iget v7, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v15, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v6, v7, v15, v3}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v6

    :cond_19
    move-object/from16 v16, v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "GATEWAY key not set"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v7, 0x69

    invoke-virtual {v1, v6, v3, v7}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v3, Lcom/motorola/motocit/CmdFailException;

    iget v6, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v7, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v6, v7, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3

    :cond_1a
    move-object/from16 v16, v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid networkPrefixLength: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v7, 0x69

    invoke-virtual {v1, v3, v6, v7}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v3, Lcom/motorola/motocit/CmdFailException;

    iget v6, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v7, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v6, v7, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3

    :cond_1b
    move-object/from16 v16, v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "NETWORK_PREFIX_LENGTH key not set"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v7, 0x69

    invoke-virtual {v1, v6, v3, v7}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v3, Lcom/motorola/motocit/CmdFailException;

    iget v6, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v7, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v6, v7, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3

    :catch_3
    move-exception v0

    move-object/from16 v16, v3

    move-object v3, v0

    move-object v0, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid IP address: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/16 v8, 0x69

    invoke-virtual {v1, v6, v7, v8}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v6, Lcom/motorola/motocit/CmdFailException;

    iget v7, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v8, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v3}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v6

    :cond_1c
    move-object/from16 v16, v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "IP_ADDRESS key not set"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v6, 0x69

    invoke-virtual {v1, v5, v3, v6}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v3, Lcom/motorola/motocit/CmdFailException;

    iget v5, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v6, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v5, v6, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3

    :cond_1d
    move-object/from16 v16, v3

    :goto_6
    invoke-direct {v1, v4}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->connectToNetwork(Landroid/net/wifi/WifiConfiguration;)V

    new-array v0, v7, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v9, v0, v3

    invoke-virtual {v10}, Landroid/net/IpConfiguration$IpAssignment;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v0, v5

    const-string v3, "CONNECT to \'%s\' via %s IP assignment"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    invoke-direct {v1, v0, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->updateStatusText(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/motorola/motocit/CmdPassException;

    iget v5, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v6, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v5, v6, v0}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3

    :cond_1e
    move-object/from16 v16, v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "SSID key not set"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v5, 0x69

    invoke-virtual {v1, v4, v3, v5}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v3, Lcom/motorola/motocit/CmdFailException;

    iget v4, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v5, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3

    :cond_1f
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v4, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v0, v5

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/high16 v4, -0x10000

    invoke-direct {v1, v0, v4}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->updateStatusText(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x69

    invoke-virtual {v1, v3, v4, v5}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v3, Lcom/motorola/motocit/CmdFailException;

    iget v4, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v5, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3

    :cond_20
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "No key=value pairs sent for CONNECT cmd"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x69

    invoke-virtual {v1, v3, v4, v5}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v3, Lcom/motorola/motocit/CmdFailException;

    iget v4, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v5, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v2}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3

    :cond_21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "CONNECT command is only support on phones using API level %d and above.  Current phone has API level %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x69

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v4, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_22
    iget-object v0, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    const-string v2, "REMOVE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_23

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v3, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/high16 v3, -0x10000

    invoke-direct {v1, v0, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->updateStatusText(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x69

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v4, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->disconnectFromNetwork()V

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Remove from current wlan network"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->updateStatusText(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/motocit/CmdPassException;

    iget v3, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v4, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_24
    iget-object v0, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    const-string v2, "GET_CONNECTION_INFO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "NULL"

    const-string v2, "NULL"

    const/4 v3, 0x0

    const/16 v4, -0x270f

    const/4 v5, -0x1

    const/4 v6, 0x0

    sget-object v8, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    const/4 v9, 0x0

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "SSID="

    if-nez v9, :cond_25

    iget-object v11, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const-string v12, "intent == null "

    const/16 v13, 0x69

    invoke-virtual {v1, v11, v12, v13}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    goto/16 :goto_7

    :cond_25
    if-eqz v9, :cond_28

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    if-eqz v11, :cond_28

    const-string v12, "networkInfo"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/NetworkInfo;

    if-nez v12, :cond_26

    iget-object v13, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const-string v14, " info == null "

    const/16 v15, 0x69

    invoke-virtual {v1, v13, v14, v15}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    goto/16 :goto_7

    :cond_26
    if-eqz v12, :cond_28

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    iget-object v13, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " wifiConnectState : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x69

    invoke-virtual {v1, v13, v14, v15}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    sget-object v13, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v8, v13, :cond_28

    iget-object v13, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v13

    if-nez v13, :cond_27

    iget-object v14, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const-string v15, " wifiInfo == null "

    const/16 v7, 0x69

    invoke-virtual {v1, v14, v15, v7}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    goto :goto_7

    :cond_27
    if-eqz v13, :cond_28

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    iget-object v7, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x69

    invoke-virtual {v1, v7, v14, v15}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const-string v7, "^\\s*\""

    const-string v14, ""

    invoke-virtual {v0, v7, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "\"\\s*$"

    invoke-virtual {v0, v7, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getHiddenSSID()Z

    move-result v3

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v5

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v6

    :cond_28
    :goto_7
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CONNECT_STATE="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/net/NetworkInfo$State;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BSSID="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HIDDEN_RSSI="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_29

    const-string v11, "YES"

    goto :goto_8

    :cond_29
    const-string v11, "NO"

    :goto_8
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RSSI="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IP_ADDRESS="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->intToIp(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "LINK_SPEED="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/motocit/CommServerDataPacket;

    iget v11, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v12, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    iget-object v13, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-direct {v10, v11, v12, v13, v7}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v10}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v8}, Landroid/net/NetworkInfo$State;->name()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x1

    aput-object v0, v11, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string v12, "CONNECTION_INFO: CONNECT_STATE=%s, SSID=\'%s\', RSSI=%d"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, -0x1

    invoke-direct {v1, v11, v12}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->updateStatusText(Ljava/lang/String;I)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/motocit/CmdPassException;

    iget v13, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v14, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v12, v13, v14, v11}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v12

    :cond_2a
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v3, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/high16 v3, -0x10000

    invoke-direct {v1, v0, v3}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->updateStatusText(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x69

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v4, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_2b
    iget-object v0, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    const-string v2, "help"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->printHelp()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s help printed"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CmdPassException;

    iget v3, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v4, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_2c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "Activity \'%s\' does not recognize command \'%s\'"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x69

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v4, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_2d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "This test is no longer supported."

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v4, 0x69

    invoke-virtual {v1, v3, v2, v4}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v4, v1, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "WLAN_Utility_NexTest"

    iput-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/motorola/motocit/Test_Base;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f080071

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->adjustViewDisplayArea(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mGestureListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mGestureListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v1, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->service:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->configureWifiAsyncMethods()V

    const v1, 0x7f0601a6

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mStatusTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    const-string v2, "Activity Started"

    invoke-direct {p0, v2, v1}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->updateStatusText(Ljava/lang/String;I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const-string v1, "OnDestroy() called"

    const/16 v2, 0x69

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onDestroy()V

    invoke-virtual {p0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->unbindWlanScanService()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onResume()V

    invoke-virtual {p0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->sendStartActivityPassed()V

    return-void
.end method

.method public onSwipeDown()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onSwipeLeft()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onSwipeRight()Z
    .locals 1

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

    iget-object v1, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "This function is use by NexTest to test WLAN"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->getBaseHelp()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v1, "Activity Specific Commands"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "  GET_WLAN_STATE    - Returns WLAN state"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "    STATE=<DISABLING, DISABLED, ENABLING, ENABLED or UNKNOWN>"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "  ENABLE_WLAN     - enables WLAN adapter"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "  DISABLE_WLAN    - disables WLAN adapter"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "  START_WLAN_SCAN - starts WLAN scan background service"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "  STOP_WLAN_SCAN  - stops WLAN scan background service"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "  GET_WLAN_SCAN_RESULTS - returns APs found by WLAN scan service"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "  GET_WLAN_MAC    - this test is no longer supported"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "  CONNECT - takes the following key-value pairs to connect to the specified AP"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "    SSID=<SSID> - SSID of AP to connect to"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "    IP_ASSIGNMENT=<STATIC or DHCP> - connect with static ip or request ip thru DHCP."

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "                                     If not supplied then default is DHCP"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "    IP_ADDRESS=<IP> - STATIC only: IP address to connect to AP with"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "    NETWORK_PREFIX_LENGTH=<PREFIX_LENGTH> - STATIC only: Integer value greater than 0 and less than 32"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "    GATEWAY=<IP> - STATIC only: IP address of gateway"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "    DNS_1=<IP> - STATIC only: IP address of DNS 1"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "    DNS_2=<IP> - STATIC only: IP address of DNS 2"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "  REMOVE - Forget & disconnect from currently connected AP (if any)"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "  GET_CONNECTION_INFO - Retrieve information current connection (if any)."

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "                        Returns the following key-value pairs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    CONNECT_STATE=<CONNECTING, CONNECTED, SUSPENDED, DISCONNECTING, DISCONNECTED, or UNKNOWN>"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    SSID=<SSID> - CONNECTED state only: SSID of connected AP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    BSSID=<MAC_ADDR> - CONNECTED state only: MAC address of connected AP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    HIDDEN_RSSI=<YES or NO> - CONNECTED state only: If connected AP SSID is hidden or not"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    RSSI=<RSSI> - CONNECTED state only: Rssi of connected AP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    IP_ADDRESS=<IP> - CONNECTED state only: IP address assigned to the phone when connected to the AP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    LINK_SPEED=<LINK_SPEED> - CONNECTED state only: Link speed in Mbps that the phone is connected to the AP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CommServerDataPacket;

    iget v2, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->strRxCmd:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    return-void
.end method

.method protected setIpAddress(Ljava/net/InetAddress;ILandroid/net/wifi/WifiConfiguration;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "linkProperties"

    invoke-virtual {p0, p3, v0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->getDeclaredField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "android.net.LinkAddress"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/net/InetAddress;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "mLinkAddresses"

    invoke-virtual {p0, v0, v4}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->getDeclaredField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const/16 v6, 0x69

    const-string v7, "mLinkAddress add link address"

    invoke-virtual {p0, v5, v7, v6}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method unbindWlanScanService()V
    .locals 3

    iget-boolean v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mIsWlanScanServiceBound:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->TAG:Ljava/lang/String;

    const/16 v1, 0x69

    const-string v2, "OnDestroy() unbindService(mWlanScanConnection)"

    invoke-virtual {p0, v0, v2, v1}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mWlanScanConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/motocit/wlan/WlanUtilityNexTest;->mIsWlanScanServiceBound:Z

    :cond_0
    return-void
.end method
