.class public Lcom/motorola/bach/modemstats/ModemStatsUtils;
.super Ljava/lang/Object;
.source "ModemStatsUtils.java"

# interfaces
.implements Lcom/motorola/bach/modemstats/CheckinEventConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/bach/modemstats/ModemStatsUtils$DropboxItem;,
        Lcom/motorola/bach/modemstats/ModemStatsUtils$StatsHandler;,
        Lcom/motorola/bach/modemstats/ModemStatsUtils$BandInfoHandler;
    }
.end annotation


# static fields
.field private static final BACKGROUND_BAND_INFO_THREAD_NAME:Ljava/lang/String; = "ModemStatsBandInfoHandler"

.field private static final BACKGROUND_THREAD_NAME:Ljava/lang/String; = "ModemStatsUtils"

.field public static final CHECKIN_IMS_STATS:Ljava/lang/String; = "MOT_IMS"

.field private static final DEBUG:Z

.field private static final DEFAULT_WIFI_RSSI:I = -0xc8

.field public static final EVT_TYPE_CALL_DROP:Ljava/lang/String; = "CALL_DROP"

.field public static final EVT_TYPE_CALL_DROP_NW:Ljava/lang/String; = "CALL_DROP_NW"

.field public static final EVT_TYPE_CALL_END:Ljava/lang/String; = "CALL_END"

.field public static final EVT_TYPE_CALL_ORIG_FAILURE:Ljava/lang/String; = "CALL_ORIG_FAILURE"

.field public static final EVT_TYPE_CALL_START:Ljava/lang/String; = "CALL_START"

.field public static final EVT_TYPE_CALL_TYPE_MO:Ljava/lang/String; = "MO"

.field public static final EVT_TYPE_CALL_TYPE_MT:Ljava/lang/String; = "MT"

.field public static final EVT_TYPE_IMS_REGISTER_FAIL:Ljava/lang/String; = "IMS_REGISTER_FAIL"

.field public static final EVT_TYPE_MODEM_DEBUG:Ljava/lang/String; = "Modem_debug_upload"

.field public static final EVT_TYPE_MODEM_DIAGNOSTIC_REPORT:Ljava/lang/String; = "MODEM_DIAGNOSTIC_REPORT"

.field public static final EVT_TYPE_NR_ATTACH_FAILURE:Ljava/lang/String; = "NR_ATTACH_FAILURE"

.field public static final EVT_TYPE_NR_CONNECTION_LOSS:Ljava/lang/String; = "NR_CONNECTION_LOSS"

.field public static final EVT_TYPE_OUT_OF_SERVICE:Ljava/lang/String; = "OUT_OF_SERV"

.field public static final EVT_TYPE_SIM_ERROR_INFO:Ljava/lang/String; = "SIM_ERROR_INFO"

.field public static final EVT_TYPE_UE_IN_WRONG_MODE:Ljava/lang/String; = "WRONG_OPERATING_MODE"

.field public static final EVT_TYPE_VOLTE_FALLBACK:Ljava/lang/String; = "VOLTE_FALLBACK"

.field public static final INTENT_TIME_ON_CA_STATS:Ljava/lang/String; = "com.motorola.bach.modemstats.time-on-ca-stats"

.field private static final MODEM_STATS_LOG_DROPBOX_EVENT:I = 0x3

.field private static final MODEM_STATS_LOG_EVENT:I = 0x1

.field private static final MODEM_STATS_RADIO_BAND_EVENT:I = 0x4

.field private static final NORMALCINFS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ModemStatsUtils"

.field public static final TAG_ID_IMS_STATS:Ljava/lang/String; = "ImsStats"

.field private static final VDEBUG:Z = false

.field public static mCaStatCheckInCnt:I

.field public static mCellId:Ljava/lang/String;

.field public static mDataServiceState:I

.field public static mDisplayOn:Z

.field public static mEcio:I

.field public static mLteCamped:Z

.field private static mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

.field public static mOemHookEcio:I

.field public static mOemHookNW:I

.field public static mOemHookRssi:I

.field public static mRsrp:I

.field public static mRsrq:I

.field public static mRssi:I

.field public static mSinr:I


# instance fields
.field private mBandInfoHandler:Lcom/motorola/bach/modemstats/ModemStatsUtils$BandInfoHandler;

.field private mBandInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/motorola/bach/modemstats/RadioBandInfoAdam;",
            ">;"
        }
    .end annotation
.end field

.field private mBandInfoLock:Ljava/lang/Object;

.field private mBandInfoThread:Landroid/os/HandlerThread;

.field private mCaConfigured:I

.field private mCaNBR:I

.field protected mCaStatsCheckIntent:Landroid/app/PendingIntent;

.field private mContext:Landroid/content/Context;

.field mCurrentWifiRssi:I

.field private mPBand:I

.field private mSBand:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWorkHandler:Lcom/motorola/bach/modemstats/ModemStatsUtils$StatsHandler;

.field private mWorkThread:Landroid/os/HandlerThread;

.field private mchkCa:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->DEBUG:Z

    const/4 v0, 0x0

    sput v0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mCaStatCheckInCnt:I

    const/4 v1, 0x0

    sput-object v1, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    const-string v2, "ERROR_UNSPECIFIED,call rejected by user"

    const-string v3, "ERROR_UNSPECIFIED,cc_q850_021_call_rejected"

    const-string v4, "ERROR_UNSPECIFIED,no answer from the user"

    const-string v5, "ERROR_UNSPECIFIED,no answer from user (user alerted)"

    const-string v6, "ERROR_UNSPECIFIED,no user responding"

    const-string v7, "ERROR_UNSPECIFIED,normal unspecified"

    const-string v8, "ERROR_UNSPECIFIED,normal,unspecified"

    const-string v9, "ERROR_UNSPECIFIED,no_answer"

    const-string v10, "ERROR_UNSPECIFIED,user disconnected"

    const-string v11, "ERROR_UNSPECIFIED,Q.850;cause=31"

    const-string v12, "ERROR_UNSPECIFIED,Q.850;cause=18"

    const-string v13, "ERROR_UNSPECIFIED,Q.850;cause=19"

    const-string v14, "ERROR_UNSPECIFIED,Q.850;cause=21"

    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/motorola/bach/modemstats/ModemStatsUtils;->NORMALCINFS:[Ljava/lang/String;

    sput-boolean v0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mLteCamped:Z

    sput v0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mOemHookNW:I

    sput v0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mOemHookRssi:I

    sput v0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mOemHookEcio:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mDisplayOn:Z

    sput v0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mDataServiceState:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mCaStatsCheckIntent:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mWorkHandler:Lcom/motorola/bach/modemstats/ModemStatsUtils$StatsHandler;

    iput-object v0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mWorkThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoHandler:Lcom/motorola/bach/modemstats/ModemStatsUtils$BandInfoHandler;

    iput-object v0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoList:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoLock:Ljava/lang/Object;

    const/16 v0, -0xc8

    iput v0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mCurrentWifiRssi:I

    iput-object p1, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ModemStatsUtils"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lcom/motorola/bach/modemstats/ModemStatsUtils$StatsHandler;

    iget-object v0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/motorola/bach/modemstats/ModemStatsUtils$StatsHandler;-><init>(Lcom/motorola/bach/modemstats/ModemStatsUtils;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mWorkHandler:Lcom/motorola/bach/modemstats/ModemStatsUtils$StatsHandler;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ModemStatsBandInfoHandler"

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lcom/motorola/bach/modemstats/ModemStatsUtils$BandInfoHandler;

    iget-object v0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/motorola/bach/modemstats/ModemStatsUtils$BandInfoHandler;-><init>(Lcom/motorola/bach/modemstats/ModemStatsUtils;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoHandler:Lcom/motorola/bach/modemstats/ModemStatsUtils$BandInfoHandler;

    iget-object p1, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/bach/modemstats/ModemStatsUtils;Lcom/motorola/android/provider/CheckinEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->addDropboxTime(Lcom/motorola/android/provider/CheckinEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/bach/modemstats/ModemStatsUtils;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/motorola/bach/modemstats/ModemStatsUtils;Lcom/motorola/bach/modemstats/ModemStatsUtils$DropboxItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->logDropboxEvent(Lcom/motorola/bach/modemstats/ModemStatsUtils$DropboxItem;)V

    return-void
.end method

.method private addDropboxTime(Lcom/motorola/android/provider/CheckinEvent;)V
    .locals 11

    iget-object v0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "privacy_help_improve_products"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addDropboxTime moto privacy help switch="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "ModemStatsUtils"

    invoke-static {v4, v1, v3}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_1

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "addDropboxTime moto privacy help switch is off"

    invoke-static {v4, p1, p0}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/motorola/android/provider/CheckinEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CALL_DROP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "DATA_STALL"

    if-nez v1, :cond_2

    const-string v1, "CALL_DROP_NW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CALL_ORIG_FAILURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    invoke-virtual {p1}, Lcom/motorola/android/provider/CheckinEvent;->getTimestamp()J

    move-result-wide v4

    iget-object v1, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mContext:Landroid/content/Context;

    const-string v6, "dropbox"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v9

    invoke-virtual {v6}, Landroid/os/DropBoxManager$Entry;->close()V

    goto :goto_1

    :cond_3
    move-wide v9, v7

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    cmp-long v3, v9, v7

    if-nez v3, :cond_4

    const-string v3, "DATA_STALL_WITH_PING_FAILURE"

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v9

    invoke-virtual {v3}, Landroid/os/DropBoxManager$Entry;->close()V

    :cond_4
    cmp-long v3, v9, v7

    if-nez v3, :cond_5

    const-string v3, "MODEM_DIAGNOSTIC_REPORT"

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v9

    invoke-virtual {v1}, Landroid/os/DropBoxManager$Entry;->close()V

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addDropboxTime dbox_time="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " evtName="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "dbox_time"

    invoke-virtual {p1, p0, v9, v10}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;J)V

    :cond_6
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/motorola/bach/modemstats/ModemStatsUtils;
    .locals 2

    const-class v0, Lcom/motorola/bach/modemstats/ModemStatsUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    if-nez v1, :cond_0

    new-instance v1, Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-direct {v1, p0}, Lcom/motorola/bach/modemstats/ModemStatsUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    :cond_0
    sget-object p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private logDropboxEvent(Lcom/motorola/bach/modemstats/ModemStatsUtils$DropboxItem;)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "privacy_help_improve_products"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logDropboxEvent moto privacy help switch="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "ModemStatsUtils"

    invoke-static {v4, v1, v3}, Lcom/motorola/bach/modemstats/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_1

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "logDropboxEvent moto privacy help switch is off"

    invoke-static {v4, p1, p0}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p1, Lcom/motorola/bach/modemstats/ModemStatsUtils$DropboxItem;->mEventType:Ljava/lang/String;

    iget-object v1, p1, Lcom/motorola/bach/modemstats/ModemStatsUtils$DropboxItem;->mValue:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/motorola/bach/modemstats/ModemStatsUtils$DropboxItem;->mAppendLogcat:Z

    iget-object p1, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mContext:Landroid/content/Context;

    const-string v3, "dropbox"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/DropBoxManager;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x800

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added Drop box entry - "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/motorola/bach/modemstats/Logger;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dropbox tag - "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " not enabled"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addRadioBandInfo(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/motorola/bach/modemstats/RadioBandInfoAdam;",
            ">;)V"
        }
    .end annotation

    sget-object p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoHandler:Lcom/motorola/bach/modemstats/ModemStatsUtils$BandInfoHandler;

    const/4 v0, 0x4

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public addRadioLteCaInfo(BIIIII)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addRadioLteCaInfo: mCaConfigured :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mCaConfigured:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pBand : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sBand : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sCellState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ModemStatsUtils"

    invoke-static {v3, v0, v2}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    if-eq p4, v0, :cond_5

    if-ne p5, v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mPBand:I

    const/4 v2, 0x1

    if-eq v0, p4, :cond_1

    const/4 v0, 0x2

    if-eq p6, v0, :cond_2

    :cond_1
    iget p6, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mSBand:I

    if-eq p6, p5, :cond_3

    :cond_2
    iput-boolean v2, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mchkCa:Z

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mchkCa:Z

    :goto_0
    iput p1, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mCaConfigured:I

    iput p2, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mCaNBR:I

    iput p4, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mPBand:I

    iput p5, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mSBand:I

    iget-object p1, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mCaStatsCheckIntent:Landroid/app/PendingIntent;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mContext:Landroid/content/Context;

    const-string p2, "alarm"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    new-instance p2, Landroid/content/Intent;

    const-string p4, "com.motorola.bach.modemstats.time-on-ca-stats"

    invoke-direct {p2, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mContext:Landroid/content/Context;

    const/high16 p5, 0xc000000

    invoke-static {p4, v1, p2, p5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mCaStatsCheckIntent:Landroid/app/PendingIntent;

    const/4 p4, 0x3

    const-wide/32 p5, 0x5265c00

    invoke-virtual {p1, p4, p5, p6, p2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_4
    iget-boolean p1, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mchkCa:Z

    if-eqz p1, :cond_5

    sget p1, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mCaStatCheckInCnt:I

    const/16 p2, 0x3e8

    if-ge p1, p2, :cond_5

    invoke-virtual {p0, p3}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->checkinCaStatus(I)V

    iput-boolean v1, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mchkCa:Z

    sget p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mCaStatCheckInCnt:I

    add-int/2addr p0, v2

    sput p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mCaStatCheckInCnt:I

    :cond_5
    :goto_1
    return-void
.end method

.method public addToDropbox(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    sget-object v0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mWorkHandler:Lcom/motorola/bach/modemstats/ModemStatsUtils$StatsHandler;

    const/4 v1, 0x3

    new-instance v2, Lcom/motorola/bach/modemstats/ModemStatsUtils$DropboxItem;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/motorola/bach/modemstats/ModemStatsUtils$DropboxItem;-><init>(Lcom/motorola/bach/modemstats/ModemStatsUtils;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public bandInfoHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoHandler:Lcom/motorola/bach/modemstats/ModemStatsUtils$BandInfoHandler;

    return-object p0
.end method

.method public checkinCaStatus(I)V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "ModemStatsUtils"

    const-string v2, "CA Stats Checkin"

    invoke-static {v1, v2, v0}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    new-instance v9, Lcom/motorola/android/provider/CheckinEvent;

    const-string v1, "CALL_PERF_STATS"

    const-string v2, "CA_STATS"

    const-string v3, "1.0"

    move-object v0, v9

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget v0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mPBand:I

    const-string v1, "ca_pBand"

    invoke-virtual {v9, v1, v0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget v0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mSBand:I

    const-string v1, "ca_sBand"

    invoke-virtual {v9, v1, v0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget p0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mCaConfigured:I

    const-string v0, "ca_config"

    invoke-virtual {v9, v0, p0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    sget-object p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "plmn"

    invoke-virtual {v9, p1, p0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {p0, v9}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->logEvent(Lcom/motorola/android/provider/CheckinEvent;)V

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*CA-STATS-REPORT* checkinCAstatus(): Exception occured at"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method protected finalize()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->stop()V

    iget-object v0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->stop()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in finalize - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/motorola/bach/modemstats/Logger;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public getCurrentRadioBand(II)I
    .locals 10

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->logCurrentBandList()V

    iget-object v0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, -0x1

    const/4 v2, -0x2

    move v3, v1

    move v4, v2

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;

    iget v7, v5, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mSubId:I

    if-ne v7, p1, :cond_0

    invoke-virtual {v5}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->getConnectionType()I

    move-result v4

    if-ne v4, p2, :cond_1

    iget v1, v5, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mActiveBand:I

    iget v4, v5, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mRat:I

    sget-boolean p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "ModemStatsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCurrentRadioBand: For SubID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->getConnectionTypeString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " RadioBandInfo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {p0, v5, v7}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget v3, v5, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mActiveBand:I

    iget v4, v5, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mRat:I

    sget-boolean v7, Lcom/motorola/bach/modemstats/ModemStatsUtils;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "ModemStatsUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCurrentRadioBand: For SubID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " request for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5, p2}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->getConnectionTypeString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->getConnectionTypeString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " RadioBandInfo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7, v5, v6}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;

    invoke-direct {p0}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;-><init>()V

    if-ne v1, v2, :cond_4

    if-ne v3, v2, :cond_3

    const-string v0, "ModemStatsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentRadioBand: Rat for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->getConnectionTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is unavailable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/motorola/bach/modemstats/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    const-string v0, "ModemStatsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentRadioBand: Rat for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->getConnectionTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is unavailable, returning other known RAT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/motorola/bach/modemstats/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v1

    :goto_3
    sget-boolean v0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "ModemStatsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentRadioBand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->getConnectionTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "-Rat: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " Band: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " SIM: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v6, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return v3

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getCurrentRadioBand(III)I
    .locals 11

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->logCurrentBandList()V

    iget-object v0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    const/4 p0, -0x4

    move v4, v3

    move v5, v4

    move v6, v5

    goto/16 :goto_1

    :cond_0
    iget-object p0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v3

    move v4, v1

    move v5, v4

    move v6, v5

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;

    iget v8, v7, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mSubId:I

    if-ne v8, p2, :cond_1

    iget v8, v7, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mConnectionType:I

    if-ne v8, p3, :cond_2

    iget v1, v7, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mActiveBand:I

    iget v6, v7, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mRat:I

    sget-boolean v8, Lcom/motorola/bach/modemstats/ModemStatsUtils;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "ModemStatsUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCurrentRadioBand: For SubID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->getConnectionTypeString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " RadioBandInfo: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v8, v7, v9}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget v4, v7, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mActiveBand:I

    iget v5, v7, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mRat:I

    sget-boolean v8, Lcom/motorola/bach/modemstats/ModemStatsUtils;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "ModemStatsUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCurrentRadioBand: For SubID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " request for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7, p3}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->getConnectionTypeString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " RadioBandInfo: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v8, v7, v9}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    move p0, v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;

    invoke-direct {v0}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;-><init>()V

    if-ne p0, v3, :cond_5

    if-ne v4, v3, :cond_4

    const-string v1, "ModemStatsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentRadioBand: Rat for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, p3}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->getConnectionTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is unavailable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/motorola/bach/modemstats/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    const-string p0, "ModemStatsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentRadioBand: Rat for "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p3}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->getConnectionTypeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " is unavailable, returning other known RAT"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v6}, Lcom/motorola/bach/modemstats/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move p0, v4

    goto :goto_3

    :cond_5
    :goto_2
    move v5, v6

    :goto_3
    const-string v1, "ModemStatsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentRadioBand: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, p3}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->getConnectionTypeString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "-Rat: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " Band: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " SIM: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p0, :cond_6

    const/4 p1, 0x1

    if-eq v5, p1, :cond_6

    const/4 p1, 0x2

    if-eq v5, p1, :cond_6

    goto :goto_4

    :cond_6
    move v3, p0

    :goto_4
    return v3

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getCurrentRadioChannel(II)I
    .locals 5

    iget-object v0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, -0x1

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;

    iget v4, v3, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mSubId:I

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->getConnectionType()I

    move-result v4

    if-ne v4, p2, :cond_1

    iget p0, v3, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mActiveChannel:I

    goto :goto_1

    :cond_1
    iget v2, v3, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mActiveChannel:I

    goto :goto_0

    :cond_2
    move p0, v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;

    invoke-direct {v0}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;-><init>()V

    const/4 v3, 0x0

    if-ne p0, v1, :cond_4

    if-ne v2, v1, :cond_3

    const-string v1, "ModemStatsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentRadioChannel: Unable to find the channel for"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, p2}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->getConnectionTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " SIM: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, v2}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    const-string p0, "ModemStatsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentRadioChannel: Unable to find the channel for"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->getConnectionTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " Channel: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " SIM: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", using the known Channel."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    :goto_2
    move v2, p0

    :goto_3
    const-string p0, "ModemStatsUtils"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentRadioChannel: Unable to find the channel for"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0, p2}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->getConnectionTypeString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " Channel: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getCurrentRadioChannel(III)I
    .locals 8

    iget-object v0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, -0x1

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;

    iget v6, v4, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mSubId:I

    if-ne v6, p2, :cond_0

    invoke-virtual {v4}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->getConnectionType()I

    move-result v6

    if-ne v6, p3, :cond_2

    sget-boolean v2, Lcom/motorola/bach/modemstats/ModemStatsUtils;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ModemStatsUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentRadioBand: Found the channel for Rat: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SIM: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v6, v5}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget v2, v4, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mActiveChannel:I

    goto :goto_0

    :cond_2
    iget v3, v4, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mActiveChannel:I

    goto :goto_0

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;

    invoke-direct {p0}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;-><init>()V

    if-ne v2, v1, :cond_5

    if-ne v3, v1, :cond_4

    const-string v0, "ModemStatsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentRadioChannel: Unable to find the channel for"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p3}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->getConnectionTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p3, " Rat: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " SIM: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v5, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string v0, "ModemStatsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentRadioChannel: Unable to find the channel for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p3}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->getConnectionTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p3, " Rat: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " SIM: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", using the known Channel."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v5, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    :cond_5
    :goto_1
    return v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method getCurrentRatfromBandInfo(II)I
    .locals 6

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->logCurrentBandList()V

    iget-object v0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v2

    move v3, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;

    iget v5, v4, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mSubId:I

    if-ne v5, p1, :cond_0

    iget v5, v4, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mConnectionType:I

    if-ne v5, p2, :cond_1

    iget v1, v4, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mRat:I

    goto :goto_0

    :cond_1
    iget v3, v4, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mRat:I

    goto :goto_0

    :cond_2
    const/4 v1, -0x2

    move v3, v2

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;

    invoke-direct {p0}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;-><init>()V

    const/4 v0, 0x0

    if-ne v1, v2, :cond_5

    if-eq v3, v1, :cond_4

    const-string v1, "ModemStatsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentRadioTech: the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p2}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->getConnectionTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " RAT for SIM: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is unavailable. Using the other RAT"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/motorola/bach/modemstats/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string p0, "ModemStatsUtils"

    const-string p1, "getCurrentRadioTech: the RAT information is not available."

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/motorola/bach/modemstats/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    const-string v3, "ModemStatsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentRadioTech: the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p2}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->getConnectionTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " RAT for SIM: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getCurrentWifiRssi()I
    .locals 0

    iget p0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mCurrentWifiRssi:I

    return p0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getPowerLevelForCheckIn(I)I
    .locals 0

    const/4 p0, 0x1

    if-lt p1, p0, :cond_0

    return p0

    :cond_0
    const/16 p0, -0x3e7

    if-gt p1, p0, :cond_1

    return p0

    :cond_1
    return p1
.end method

.method public handleDisplayOn(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDisplayOn, display on = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ModemStatsUtils"

    invoke-static {v2, v0, v1}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-boolean p1, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mDisplayOn:Z

    iget-object v0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallSmart5gManager;->getInstance(Landroid/content/Context;)Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallSmart5gManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallSmart5gManager;->handleDisplayOn(Z)V

    iget-object p0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/motorola/bach/modemstats/datastall/MDataStallManager;->getInstance(Landroid/content/Context;)Lcom/motorola/bach/modemstats/datastall/MDataStallManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/datastall/MDataStallManager;->handleDisplayOn(Z)V

    return-void
.end method

.method handleRadioBandInfo(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/motorola/bach/modemstats/RadioBandInfoAdam;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;

    sget-boolean v4, Lcom/motorola/bach/modemstats/ModemStatsUtils;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ModemStatsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " handleRadioBandInfo: Currently in BandInfo storage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz v3, :cond_4

    move v4, v2

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    iget v5, v3, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mSubId:I

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;

    iget v6, v6, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mSubId:I

    if-ne v5, v6, :cond_1

    iget v5, v3, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mConnectionType:I

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;

    iget v6, v6, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mConnectionType:I

    if-ne v5, v6, :cond_1

    iget-object v4, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    sget-boolean v4, Lcom/motorola/bach/modemstats/ModemStatsUtils;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "ModemStatsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " handleRadioBandInfo: removed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    iget v5, v3, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mSubId:I

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;

    iget v6, v6, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mSubId:I

    if-ne v5, v6, :cond_3

    iget v5, v3, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mActiveChannel:I

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;

    iget v6, v6, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mActiveChannel:I

    if-ne v5, v6, :cond_3

    iget v5, v3, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mActiveBand:I

    const/4 v6, -0x5

    if-eq v5, v6, :cond_2

    iget v5, v3, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mActiveBand:I

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;

    iget v6, v6, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mActiveBand:I

    if-eq v5, v6, :cond_3

    :cond_2
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;

    iget v5, v5, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mActiveBand:I

    invoke-virtual {v3, v5}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->updateBand(I)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    move v1, v2

    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;

    sget-boolean v4, Lcom/motorola/bach/modemstats/ModemStatsUtils;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "ModemStatsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " handleRadioBandInfo: adding to Band storage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget-object v4, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->logCurrentBandList()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public handleTimeOnCaStats(Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mCaStatsCheckIntent:Landroid/app/PendingIntent;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mCaStatsCheckIntent:Landroid/app/PendingIntent;

    const/4 p0, 0x0

    sput p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mCaStatCheckInCnt:I

    return-void
.end method

.method public isCallDropNW(Ljava/lang/String;)Z
    .locals 3

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_c

    const-string v1, "SERVER_UNREACHABLE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ERROR_UNSPECIFIED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "insufficient bearer resource"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const-string v1, "SERVER_UNREACHABLE,service unavailable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "ERROR_UNSPECIFIED,Q.850;cause=41"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "ERROR_UNSPECIFIED,unallocated (unassigned) number"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_2
    const-string v2, "SERVER_UNREACHABLE,a:rx-asr-insufficient-bearer-resources"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_3
    const-string v2, "SERVER_UNREACHABLE,pt: asr: insufficient_bearer_resources"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_4
    const-string v2, "ERROR_UNSPECIFIED,subscriber absent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "ERROR_UNSPECIFIED,protocol error, unspecified"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_6
    const-string v2, "ERROR_UNSPECIFIED,cc_q850_111_protocol_error_unspecified"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_7
    const-string v2, "ERROR_UNSPECIFIED,unallocated number"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    move v1, v0

    goto :goto_0

    :sswitch_8
    const-string v2, "ERROR_UNSPECIFIED,cc_q850_031_normal_unspecified"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    move v1, p0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move p0, v0

    :cond_c
    :goto_1
    return p0

    :sswitch_data_0
    .sparse-switch
        -0x5b615826 -> :sswitch_8
        -0x24b72cb9 -> :sswitch_7
        -0xdd432cf -> :sswitch_6
        0x2cb2e257 -> :sswitch_5
        0x45d18285 -> :sswitch_4
        0x52882dbb -> :sswitch_3
        0x5bbd96dc -> :sswitch_2
        0x5e294a71 -> :sswitch_1
        0x620dc2a2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isNormalClearingByCinfo(Ljava/lang/String;)Z
    .locals 6

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    const-string v0, "\\s"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/motorola/bach/modemstats/ModemStatsUtils;->NORMALCINFS:[Ljava/lang/String;

    array-length v3, v2

    move v4, p0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return p0
.end method

.method logCurrentBandList()V
    .locals 6

    sget-boolean v0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->DEBUG:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ModemStatsUtils"

    const-string v1, " Current Band list is ... "

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mBandInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;

    const-string v3, "ModemStatsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BandChanges: SIM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (Rat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mRat:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Band: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mActiveBand:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Channel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mActiveChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->getConnectionTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public logEvent(Lcom/motorola/android/provider/CheckinEvent;)V
    .locals 1

    sget-object p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mWorkHandler:Lcom/motorola/bach/modemstats/ModemStatsUtils$StatsHandler;

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public mapRilNetworkTypeForCheckin(I)Ljava/lang/String;
    .locals 0

    new-instance p0, Lcom/motorola/bach/modemstats/TimeOnRat;

    invoke-direct {p0}, Lcom/motorola/bach/modemstats/TimeOnRat;-><init>()V

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/TimeOnRat;->getRatTypeStringFromRilNetworkType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public mapTelephonyNetworkTypeForCheckin(I)Ljava/lang/String;
    .locals 0

    new-instance p0, Lcom/motorola/bach/modemstats/TimeOnRat;

    invoke-direct {p0}, Lcom/motorola/bach/modemstats/TimeOnRat;-><init>()V

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/TimeOnRat;->getRatTypeStringFromTelephonyNetworkType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateWifiRssi(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWifiRssi, rssi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mCurrentWifiRssi:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mCurrentWifiRssi:I

    :cond_0
    return-void
.end method

.method public workHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mWorkHandler:Lcom/motorola/bach/modemstats/ModemStatsUtils$StatsHandler;

    return-object p0
.end method
