.class public Lcom/motorola/bach/modemstats/ImsStatsReport;
.super Ljava/lang/Object;
.source "ImsStatsReport.java"


# static fields
.field public static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field public static final HANDOVER_FAILURE:I = 0x1

.field public static final HANDOVER_SUCCESS:I = 0x0

.field public static final INITIAL_REG:I = -0x1

.field public static final INVALID:I = -0xff

.field public static final MSG_IMS_HO_STAT:B = 0x4bt

.field public static final QCRIL_RADIO_TECH_1xRTT:I = 0x6

.field public static final QCRIL_RADIO_TECH_EDGE:I = 0x2

.field public static final QCRIL_RADIO_TECH_EHRPD:I = 0xd

.field public static final QCRIL_RADIO_TECH_EVDO_0:I = 0x7

.field public static final QCRIL_RADIO_TECH_EVDO_A:I = 0x8

.field public static final QCRIL_RADIO_TECH_EVDO_B:I = 0xc

.field public static final QCRIL_RADIO_TECH_GPRS:I = 0x1

.field public static final QCRIL_RADIO_TECH_HSDPA:I = 0x9

.field public static final QCRIL_RADIO_TECH_HSPA:I = 0xb

.field public static final QCRIL_RADIO_TECH_HSUPA:I = 0xa

.field public static final QCRIL_RADIO_TECH_IS95A:I = 0x4

.field public static final QCRIL_RADIO_TECH_IS95B:I = 0x5

.field public static final QCRIL_RADIO_TECH_IWLAN:I = 0x12

.field public static final QCRIL_RADIO_TECH_LTE:I = 0xe

.field public static final QCRIL_RADIO_TECH_UMTS:I = 0x3

.field public static final QCRIL_RADIO_TECH_UNKNOWN:I = 0x0

.field private static final TIMEOUT_MILLIS:J = 0x7d0L

.field private static mImsStatsReport:Lcom/motorola/bach/modemstats/ImsStatsReport;


# instance fields
.field private final TAG_CALL_PRESENT:Ljava/lang/String;

.field private final TAG_CAUSE_CODE:Ljava/lang/String;

.field private final TAG_DATA_RAT:Ljava/lang/String;

.field private final TAG_ECIO:Ljava/lang/String;

.field private final TAG_IMS_DEST_RAT:Ljava/lang/String;

.field private final TAG_IMS_REGISTER:Ljava/lang/String;

.field private final TAG_IMS_REG_TYPE:Ljava/lang/String;

.field private final TAG_IMS_SOURCE_RAT:Ljava/lang/String;

.field private final TAG_ROAM_STAT:Ljava/lang/String;

.field private final TAG_RSSI:Ljava/lang/String;

.field private final TAG_SIM_OPERATOR:Ljava/lang/String;

.field private final TAG_WFC_STATUS:Ljava/lang/String;

.field private final TAG_WIFI_RSSI:Ljava/lang/String;

.field private final VERSION_NUMBER:Ljava/lang/String;

.field private mImsIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

.field private mMotoExtTelMgr:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

.field private mService:Lcom/motorola/bach/modemstats/ModemStatsService;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$BZFeKtZGF5RrRPPrX4c-LyYwBMY(Ljava/util/concurrent/LinkedBlockingQueue;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/motorola/bach/modemstats/ModemStatsService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iput-object v0, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iput-object v0, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->mTm:Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->mMotoExtTelMgr:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    iput-object v0, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v0, "1.0"

    iput-object v0, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->VERSION_NUMBER:Ljava/lang/String;

    const-string v0, "ims_reg_type"

    iput-object v0, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->TAG_IMS_REG_TYPE:Ljava/lang/String;

    const-string v0, "cause"

    iput-object v0, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->TAG_CAUSE_CODE:Ljava/lang/String;

    const-string v0, "sig_strength"

    iput-object v0, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->TAG_RSSI:Ljava/lang/String;

    const-string v0, "sig_quality"

    iput-object v0, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->TAG_ECIO:Ljava/lang/String;

    const-string v0, "ims_srat"

    iput-object v0, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->TAG_IMS_SOURCE_RAT:Ljava/lang/String;

    const-string v0, "ims_trat"

    iput-object v0, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->TAG_IMS_DEST_RAT:Ljava/lang/String;

    const-string v0, "data_rat"

    iput-object v0, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->TAG_DATA_RAT:Ljava/lang/String;

    const-string v0, "sim_operator"

    iput-object v0, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->TAG_SIM_OPERATOR:Ljava/lang/String;

    const-string v0, "ims_reg"

    iput-object v0, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->TAG_IMS_REGISTER:Ljava/lang/String;

    const-string v0, "wfc_status"

    iput-object v0, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->TAG_WFC_STATUS:Ljava/lang/String;

    const-string v0, "roam_stat"

    iput-object v0, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->TAG_ROAM_STAT:Ljava/lang/String;

    const-string v0, "rssi_wifi"

    iput-object v0, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->TAG_WIFI_RSSI:Ljava/lang/String;

    const-string v0, "call_pres"

    iput-object v0, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->TAG_CALL_PRESENT:Ljava/lang/String;

    new-instance v0, Lcom/motorola/bach/modemstats/ImsStatsReport$1;

    invoke-direct {v0, p0}, Lcom/motorola/bach/modemstats/ImsStatsReport$1;-><init>(Lcom/motorola/bach/modemstats/ImsStatsReport;)V

    iput-object v0, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ImsStatsReport Construct"

    invoke-static {p0, v1, v0}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    invoke-static {p1}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getInstance(Landroid/content/Context;)Lcom/motorola/bach/modemstats/ModemStatsUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object p1, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Lcom/motorola/bach/modemstats/ModemStatsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->mTm:Landroid/telephony/TelephonyManager;

    new-instance p1, Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    iget-object v0, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    invoke-direct {p1, v0}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->mMotoExtTelMgr:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    iget-object p1, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Lcom/motorola/bach/modemstats/ModemStatsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private CallTypeToString(I)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "cs_voice"

    return-object p0

    :cond_0
    const/4 p0, 0x1

    if-ne p1, p0, :cond_1

    const-string p0, "ps_voice"

    return-object p0

    :cond_1
    const/4 p0, 0x2

    if-ne p1, p0, :cond_2

    const-string p0, "ps_video"

    return-object p0

    :cond_2
    const-string p0, "not_present"

    return-object p0
.end method

.method static synthetic access$000(Lcom/motorola/bach/modemstats/ImsStatsReport;)V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/bach/modemstats/ImsStatsReport;->powerUpImsStateCheckin()V

    return-void
.end method

.method private getImsReportCriteria()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static declared-synchronized getInstance(Lcom/motorola/bach/modemstats/ModemStatsService;)Lcom/motorola/bach/modemstats/ImsStatsReport;
    .locals 2

    const-class v0, Lcom/motorola/bach/modemstats/ImsStatsReport;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/bach/modemstats/ImsStatsReport;->mImsStatsReport:Lcom/motorola/bach/modemstats/ImsStatsReport;

    if-nez v1, :cond_0

    new-instance v1, Lcom/motorola/bach/modemstats/ImsStatsReport;

    invoke-direct {v1, p0}, Lcom/motorola/bach/modemstats/ImsStatsReport;-><init>(Lcom/motorola/bach/modemstats/ModemStatsService;)V

    sput-object v1, Lcom/motorola/bach/modemstats/ImsStatsReport;->mImsStatsReport:Lcom/motorola/bach/modemstats/ImsStatsReport;

    :cond_0
    sget-object p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->mImsStatsReport:Lcom/motorola/bach/modemstats/ImsStatsReport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getReversedIntegerFromBytes([BII)I
    .locals 3

    array-length p0, p1

    add-int v0, p3, p2

    const/4 v1, 0x0

    if-lt p0, v0, :cond_2

    const/4 p0, 0x4

    if-le p3, p0, :cond_0

    goto :goto_1

    :cond_0
    new-array p0, p0, [I

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    :goto_0
    if-ltz p3, :cond_1

    add-int v2, p2, p3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    aput v2, p0, p3

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    aget p1, p0, v1

    aget p2, p0, v0

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    const/4 p2, 0x2

    aget p2, p0, p2

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    const/4 p2, 0x3

    aget p0, p0, p2

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    return p0

    :cond_2
    :goto_1
    return v1
.end method

.method private getSimOperator()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/motorola/bach/modemstats/utils/TelephonyUtils;->getActiveDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/bach/modemstats/ImsStatsReport;->getSimOperator(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSimOperator(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/motorola/bach/modemstats/utils/TelephonyUtils;->getSimOperator(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTimeString(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    :cond_0
    new-instance p0, Landroid/text/format/Time;

    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "%m-%d %H:%M:%S"

    invoke-virtual {p0, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    const-wide/16 v1, 0x3e8

    rem-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, p0

    const-string p0, "%s.%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getWFCStatus()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/bach/modemstats/ImsStatsReport;->getWFCStatus(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getWFCStatus(I)Ljava/lang/String;
    .locals 7

    new-instance v0, Landroid/telephony/ims/ImsManager;

    iget-object v1, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    invoke-direct {v0, v1}, Landroid/telephony/ims/ImsManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v4, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    const/4 v5, 0x2

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/motorola/bach/modemstats/ImsStatsReport$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4}, Lcom/motorola/bach/modemstats/ImsStatsReport$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;)V

    invoke-virtual {v0, v2, v5, v3, v6}, Landroid/telephony/ims/ImsMmTelManager;->isSupported(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    const-wide/16 v5, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWFCStatus, isEnabledByPlatform: e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "powerUpImsStateCheckin"

    invoke-static {v5, v3, v4}, Lcom/motorola/bach/modemstats/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v1

    :goto_0
    const-string v4, "Invalid"

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    const-string v3, ""

    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/ims/ImsMmTelManager;->isVoWiFiSettingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "E"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "NE"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v3, v0

    invoke-static {p1}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningStatusForCapability(II)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-P-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-NP-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v3, v0

    iget-object v0, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->mMotoExtTelMgr:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x48

    invoke-virtual {p1, v2}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningStringValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "O"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "NO"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWFCStatus: get exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p0, v0

    :goto_3
    return-object p0
.end method

.method private handleIMSStateChangeNotify([BI)V
    .locals 13

    const/4 v0, 0x7

    aget-byte v0, p1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*IMS-STATS-REPORT* In handleIMSStateChangeNotify() at"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v9, -0x1

    invoke-direct {p0, v9, v10}, Lcom/motorola/bach/modemstats/ImsStatsReport;->getTimeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    array-length v1, p1

    add-int/lit8 v1, v1, -0x8

    if-ne v1, v0, :cond_6

    const/16 v12, 0x19

    if-eq v0, v12, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    new-instance v0, Lcom/motorola/android/provider/CheckinEvent;

    const-string v2, "MOT_IMS"

    const-string v3, "ImsStats"

    const-string v4, "1.0"

    move-object v1, v0

    move-wide v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v1, 0x9

    const/4 v2, 0x4

    :try_start_1
    invoke-direct {p0, p1, v1, v2}, Lcom/motorola/bach/modemstats/ImsStatsReport;->getReversedIntegerFromBytes([BII)I

    move-result v1

    const/16 v3, 0xd

    invoke-direct {p0, p1, v3, v2}, Lcom/motorola/bach/modemstats/ImsStatsReport;->getReversedIntegerFromBytes([BII)I

    move-result v3

    const/16 v4, 0x11

    invoke-direct {p0, p1, v4, v2}, Lcom/motorola/bach/modemstats/ImsStatsReport;->getReversedIntegerFromBytes([BII)I

    move-result v4

    const/16 v5, 0x15

    invoke-direct {p0, p1, v5, v2}, Lcom/motorola/bach/modemstats/ImsStatsReport;->getReversedIntegerFromBytes([BII)I

    move-result v5

    invoke-direct {p0, p1, v12, v2}, Lcom/motorola/bach/modemstats/ImsStatsReport;->getReversedIntegerFromBytes([BII)I

    move-result v6

    const/16 v7, 0x1d

    invoke-direct {p0, p1, v7, v2}, Lcom/motorola/bach/modemstats/ImsStatsReport;->getReversedIntegerFromBytes([BII)I

    move-result p1

    const/16 v2, 0xff

    const/16 v7, -0xff

    if-lt v6, v7, :cond_1

    if-le v6, v2, :cond_2

    :cond_1
    move v6, v7

    :cond_2
    if-lt p1, v7, :cond_3

    if-le p1, v2, :cond_4

    :cond_3
    move p1, v7

    :cond_4
    const-string v2, "ims_reg_type"

    invoke-direct {p0, v1}, Lcom/motorola/bach/modemstats/ImsStatsReport;->hoStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ims_srat"

    invoke-virtual {p0, v3}, Lcom/motorola/bach/modemstats/ImsStatsReport;->mapRilRatToTelephonyRat(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/motorola/bach/modemstats/ImsStatsReport;->ratToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ims_trat"

    invoke-virtual {p0, v4}, Lcom/motorola/bach/modemstats/ImsStatsReport;->mapRilRatToTelephonyRat(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/motorola/bach/modemstats/ImsStatsReport;->ratToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data_rat"

    invoke-virtual {p0, v5}, Lcom/motorola/bach/modemstats/ImsStatsReport;->mapRilRatToTelephonyRat(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/motorola/bach/modemstats/ImsStatsReport;->ratToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sig_strength"

    invoke-virtual {v0, v1, v6}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v1, "sig_quality"

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    const-string v1, "rssi_wifi"

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string p1, "sim_operator"

    invoke-direct {p0, p2}, Lcom/motorola/bach/modemstats/ImsStatsReport;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ims_reg"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyManager;->isImsRegistered(I)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Z)V

    const-string p1, "wfc_status"

    invoke-direct {p0, p2}, Lcom/motorola/bach/modemstats/ImsStatsReport;->getWFCStatus(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    iget-object v1, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    invoke-direct {p1, v1, p2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;-><init>(Landroid/content/Context;I)V

    const-string v1, "call_pres"

    invoke-virtual {p1}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getActiveCallType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/motorola/bach/modemstats/ImsStatsReport;->CallTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "roam_stat"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-direct {p0}, Lcom/motorola/bach/modemstats/ImsStatsReport;->getImsReportCriteria()Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "*IMS-STATS-REPORT* handleIMSStateChangeNotify at "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0, v9, v10}, Lcom/motorola/bach/modemstats/ImsStatsReport;->getTimeString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v11, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->logEvent(Lcom/motorola/android/provider/CheckinEvent;)V

    goto :goto_1

    :cond_5
    new-array p1, v11, [Ljava/lang/Object;

    const-string p2, "*IMS-STATS-REPORT* Criteria not met. Not sending IMS Report"

    invoke-static {p0, p2, p1}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "*IMS-STATS-REPORT* handleIMSStateChangeNotify(): Exception occured at "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {p0, p2, v0}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_6
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Length is not right. Data length: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", (array length) - 8: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p1, p1

    add-int/lit8 p1, p1, -0x8

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", return."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v11, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private hoStatusToString(I)Ljava/lang/String;
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_2

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const-string p0, "invalid"

    return-object p0

    :cond_0
    const-string p0, "HandoverFail"

    return-object p0

    :cond_1
    const-string p0, "HandoverSuccess"

    return-object p0

    :cond_2
    const-string p0, "InitialReg"

    return-object p0
.end method

.method private powerUpImsStateCheckin()V
    .locals 12

    new-instance v0, Landroid/telephony/ims/ImsManager;

    iget-object v1, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    invoke-direct {v0, v1}, Landroid/telephony/ims/ImsManager;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    const/4 v5, 0x2

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/motorola/bach/modemstats/ImsStatsReport$$ExternalSyntheticLambda0;

    invoke-direct {v6, v3}, Lcom/motorola/bach/modemstats/ImsStatsReport$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;)V

    invoke-virtual {v0, v4, v5, v2, v6}, Landroid/telephony/ims/ImsMmTelManager;->isSupported(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    const-wide/16 v4, 0x7d0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "powerUpImsStateCheckin, isEnabledByPlatform: e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ImsStatsReport"

    invoke-static {v3, v0, v2}, Lcom/motorola/bach/modemstats/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*IMS-STATS-REPORT* In powerUpImsStateCheckin() at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v10, -0x1

    invoke-direct {p0, v10, v11}, Lcom/motorola/bach/modemstats/ImsStatsReport;->getTimeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    new-instance v0, Lcom/motorola/android/provider/CheckinEvent;

    const-string v3, "MOT_IMS"

    const-string v4, "ImsStats"

    const-string v5, "1.0"

    move-object v2, v0

    move-wide v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v2, -0x1

    :try_start_2
    const-string v3, "ims_reg_type"

    invoke-direct {p0, v2}, Lcom/motorola/bach/modemstats/ImsStatsReport;->hoStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ims_srat"

    invoke-virtual {p0, v1}, Lcom/motorola/bach/modemstats/ImsStatsReport;->mapRilRatToTelephonyRat(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/motorola/bach/modemstats/ImsStatsReport;->ratToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ims_trat"

    invoke-virtual {p0, v1}, Lcom/motorola/bach/modemstats/ImsStatsReport;->mapRilRatToTelephonyRat(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/motorola/bach/modemstats/ImsStatsReport;->ratToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data_rat"

    invoke-virtual {p0, v1}, Lcom/motorola/bach/modemstats/ImsStatsReport;->mapRilRatToTelephonyRat(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/motorola/bach/modemstats/ImsStatsReport;->ratToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sig_strength"

    const/16 v3, -0xff

    invoke-virtual {v0, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v2, "sig_quality"

    invoke-virtual {v0, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v2, "rssi_wifi"

    invoke-virtual {v0, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v2, "sim_operator"

    invoke-direct {p0}, Lcom/motorola/bach/modemstats/ImsStatsReport;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ims_reg"

    iget-object v3, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isImsRegistered()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Z)V

    const-string v2, "wfc_status"

    invoke-direct {p0}, Lcom/motorola/bach/modemstats/ImsStatsReport;->getWFCStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "call_pres"

    iget-object v3, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->mMotoExtTelMgr:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    invoke-virtual {v3}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getActiveCallType()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/motorola/bach/modemstats/ImsStatsReport;->CallTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "roam_stat"

    iget-object v3, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Exception occurred"

    invoke-static {p0, v3, v2}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-direct {p0}, Lcom/motorola/bach/modemstats/ImsStatsReport;->getImsReportCriteria()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*IMS-STATS-REPORT* powerUpImsStateCheckin at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v10, v11}, Lcom/motorola/bach/modemstats/ImsStatsReport;->getTimeString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/bach/modemstats/ImsStatsReport;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->logEvent(Lcom/motorola/android/provider/CheckinEvent;)V

    goto :goto_2

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "*IMS-STATS-REPORT* Criteria not met. Not sending IMS Report"

    invoke-static {p0, v1, v0}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*IMS-STATS-REPORT* powerUpImsStateCheckin(): Exception occured at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private ratToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p0, "NA"

    return-object p0

    :pswitch_0
    const-string p0, "WIFI"

    return-object p0

    :pswitch_1
    const-string p0, "TD_SCDMA"

    return-object p0

    :pswitch_2
    const-string p0, "GSM"

    return-object p0

    :pswitch_3
    const-string p0, "HSPAP"

    return-object p0

    :pswitch_4
    const-string p0, "eHRPD"

    return-object p0

    :pswitch_5
    const-string p0, "LTE"

    return-object p0

    :pswitch_6
    const-string p0, "EVDO_B"

    return-object p0

    :pswitch_7
    const-string p0, "IDEN"

    return-object p0

    :pswitch_8
    const-string p0, "HSPA"

    return-object p0

    :pswitch_9
    const-string p0, "HSUPA"

    return-object p0

    :pswitch_a
    const-string p0, "HSDPA"

    return-object p0

    :pswitch_b
    const-string p0, "1xRTT"

    return-object p0

    :pswitch_c
    const-string p0, "EVDO_A"

    return-object p0

    :pswitch_d
    const-string p0, "EVDO_0"

    return-object p0

    :pswitch_e
    const-string p0, "CDMA"

    return-object p0

    :pswitch_f
    const-string p0, "UMTS"

    return-object p0

    :pswitch_10
    const-string p0, "EDGE"

    return-object p0

    :pswitch_11
    const-string p0, "GPRS"

    return-object p0

    :pswitch_12
    const-string p0, "UNKNOWN"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public logReport(B[BI)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x4b

    if-eq p1, v1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Invalid message"

    invoke-static {p0, p2, p1}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*IMS-STATS-REPORT* Event MSG_IMS_HO_STAT logReport(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p2, p3}, Lcom/motorola/bach/modemstats/ImsStatsReport;->handleIMSStateChangeNotify([BI)V

    :goto_0
    return-void
.end method

.method mapRilRatToTelephonyRat(I)I
    .locals 0

    const/4 p0, 0x4

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/16 p0, 0x12

    return p0

    :pswitch_2
    const/16 p0, 0xd

    return p0

    :pswitch_3
    const/16 p0, 0xe

    return p0

    :pswitch_4
    const/16 p0, 0xc

    return p0

    :pswitch_5
    const/16 p0, 0xa

    return p0

    :pswitch_6
    const/16 p0, 0x8

    return p0

    :pswitch_7
    const/4 p0, 0x6

    return p0

    :pswitch_8
    const/4 p0, 0x5

    return p0

    :pswitch_9
    const/4 p0, 0x7

    :pswitch_a
    return p0

    :pswitch_b
    const/4 p0, 0x3

    return p0

    :pswitch_c
    const/4 p0, 0x2

    return p0

    :pswitch_d
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
