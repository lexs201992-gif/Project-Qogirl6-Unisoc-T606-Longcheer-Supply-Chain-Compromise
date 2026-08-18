.class public Lcom/motorola/bach/modemstats/MPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "MPhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;,
        Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;,
        Lcom/motorola/bach/modemstats/MPhoneStateListener$MPhoneStateHandler;,
        Lcom/motorola/bach/modemstats/MPhoneStateListener$TypeChange;
    }
.end annotation


# static fields
.field public static final ACTION_IMS_FEATURE_CHANGED:Ljava/lang/String; = "com.android.intent.action.IMS_FEATURE_CHANGED"

.field private static final CALL_ANSWERED_ELSEWHERE:Ljava/lang/String; = "ANSWERED_ELSEWHERE"

.field private static final CALL_DECLINED_ELSEWHERE:Ljava/lang/String; = "DECLINED_ELSEWHERE"

.field private static final CALL_DROP_ABNORMAL_NW_RELEASE:Ljava/lang/String; = "AbnormalNWRelease"

.field private static final CALL_DROP_OTHER:Ljava/lang/String; = "OTHER"

.field private static final CALL_DROP_RLF:Ljava/lang/String; = "RLF"

.field protected static final CALL_ORIG_FAILURE_FAILED_ACCESS:Ljava/lang/String; = "FAILED_ACCESS"

.field protected static final CALL_ORIG_FAILURE_NW_REJECT:Ljava/lang/String; = "NWReject"

.field protected static final CALL_ORIG_FAILURE_OTHER:Ljava/lang/String; = "CALL_ORIG_OTHER"

.field protected static final CALL_ORIG_FAILURE_RLF:Ljava/lang/String; = "CALL_ORIG_RLF"

.field protected static final CALL_ORIG_FAILURE_UNAVAILABLE_RESOURCES:Ljava/lang/String; = "UNAVAILABLE_RESOURCES"

.field private static final CALL_PULLED:Ljava/lang/String; = "CALL_PULLED"

.field private static final CS_FALLBACK_CALLING_INDEX_EXTRA:Ljava/lang/String; = "CsFallbackCallingIndexExtra"

.field protected static final INTENT_TIME_ON_RAT_ALARM:Ljava/lang/String; = "com.motorola.bach.modemstats.time-on-rat"

.field protected static final LOCAL_LOGV:Z = false

.field protected static final NETWORK_TYPE_IWLAN:I = 0x12

.field protected static PROPERTY_DATA_NETWORK_TYPE:Ljava/lang/String; = "gsm.network.type"

.field public static PROPERTY_IMS_REGISTER_TIMER:Ljava/lang/String; = "persist.ims.register.timer"

.field private static final PROPERTY_SVDATA:Ljava/lang/String; = "ro.vendor.ril.svlte1x"

.field public static PROPERTY_UE_MODE_CHG_TIMER:Ljava/lang/String; = "persist.ue.mode.chg.timer"

.field public static PROPERTY_VOLTE_MODE_CHK_TIMER:Ljava/lang/String; = "persist.volte.mode.chk.timer"

.field protected static final RAT_UNAVAILABLE:Ljava/lang/String; = "NULL"

.field protected static final REQUEST_CALL_END_RADIO_STATE_MSG_DATA1:I = 0xc0ff

.field protected static final REQUEST_CALL_END_RADIO_STATE_MSG_DATA2:I = 0xfee1

.field protected static final REQUEST_CALL_END_RADIO_STATE_MSG_ID:I = 0x2050505

.field protected static final REQUEST_CALL_END_RADIO_STATE_MSG_LEN:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MPhoneStateListener"

.field private static final TIMEOUT_MILLIS:J = 0x7d0L

.field protected static final UNSPECIFIED:Ljava/lang/String; = "unspecified"

.field private static final USC_CARRIER:Ljava/lang/String; = "usc"

.field private static mContext:Landroid/content/Context;

.field protected static mDataStallManager:Lcom/motorola/bach/modemstats/datastall/MDataStallManager;

.field private static mImsNormalCauseCodeMessageMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field protected static mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

.field protected static mService:Lcom/motorola/bach/modemstats/ModemStatsService;


# instance fields
.field private final EVENT_LOG_IMS_REGISTRATION_EVENT:I

.field private final EVENT_TIME_ON_IMS_REGISTER:I

.field private final EVENT_TIME_ON_OOS_EVENT:I

.field private final EVENT_TIME_ON_UE_MODE_CHG:I

.field private final EVENT_TIME_ON_VOLTE_MODE_CHK:I

.field private final OOS_TRIGGER_B2G_INTERVAL:J

.field private mAM:Landroid/media/AudioManager;

.field protected mActive_Voice_Duration:J

.field protected mActive_duration:J

.field protected mAirplaneMode:Z

.field private mCM:Landroid/net/ConnectivityManager;

.field private mCallStatsInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mCheckinRatType:Ljava/lang/String;

.field protected mDataActivity:Z

.field protected mDataDirection:I

.field protected mDataRadioTechnology:I

.field protected mDataServiceState:I

.field protected mData_Active_Session_Start:J

.field protected mData_Idle_Session_Start:J

.field protected mEcio:I

.field private mHandler:Landroid/os/Handler;

.field private mIMSRegReason:Landroid/telephony/ims/ImsReasonInfo;

.field protected mIdle_Voice_Duration:J

.field protected mIdle_duration:J

.field private mImsMmTM:Landroid/telephony/ims/ImsMmTelManager;

.field protected mImsNetworkType:I

.field public mImsRegistered:Z

.field private mImsRegistrationStatusReported:I

.field private mIsImsCallbackRegister:Z

.field public mIsUeInWrongMode:Z

.field private mIsVolteEnabledByPlatform:Z

.field private mIsVolteFeatureEnabled:Z

.field private mIsVolteProvisioned:Z

.field private mIsWfcEnabledByPlatform:Z

.field private mIsWfcFeatureEnabled:Z

.field private mIsWfcProvisioned:Z

.field private mMotoPhoneStateListener:Lcom/motorola/bach/modemstats/oemhook/MotoPhoneStateListener;

.field protected mMotoTM:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

.field protected mNetworkType:I

.field protected mOldNetworkType:I

.field protected mPhoneId:I

.field private mProvisionManager:Landroid/telephony/ims/ProvisioningManager;

.field private final mProvisioningCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

.field protected mRatSummary:Lcom/motorola/bach/modemstats/TimeOnRatSummary;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

.field protected mRssi:I

.field protected mRtpCnt:I

.field protected mRtpLoss:I

.field protected mServiceState:I

.field protected mServiceStateCopy:Landroid/telephony/ServiceState;

.field private mSimBean:Lcom/motorola/bach/modemstats/call/SimBean;

.field protected mSnr:I

.field protected mStartTimeRatChange:J

.field protected mTM:Landroid/telephony/TelephonyManager;

.field private mTelMgrHelper:Lcom/motorola/bach/modemstats/oemhook/MotoTelephonyManagerHelper;

.field protected mTsrAlarmIntent:Landroid/app/PendingIntent;

.field protected mVoiceCallActive:Z

.field protected mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

.field protected mVoiceRadioTechnology:I

.field protected mVoice_Active_Session_Start:J

.field protected mVoice_Idle_Session_Start:J

.field private report_status:Z


# direct methods
.method public static synthetic $r8$lambda$BZFeKtZGF5RrRPPrX4c-LyYwBMY(Ljava/util/concurrent/LinkedBlockingQueue;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsNormalCauseCodeMessageMap:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/bach/modemstats/ModemStatsService;II)V
    .locals 5

    new-instance v0, Landroid/os/HandlerExecutor;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/motorola/bach/modemstats/ModemStatsService;->getWorkerThreadLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, v0}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/util/concurrent/Executor;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->EVENT_TIME_ON_IMS_REGISTER:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->EVENT_TIME_ON_UE_MODE_CHG:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->EVENT_TIME_ON_VOLTE_MODE_CHK:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->EVENT_LOG_IMS_REGISTRATION_EVENT:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->EVENT_TIME_ON_OOS_EVENT:I

    const-wide/32 v1, 0x493e0

    iput-wide v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->OOS_TRIGGER_B2G_INTERVAL:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsRegistered:Z

    iput-boolean v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsUeInWrongMode:Z

    iput-boolean v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->report_status:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mCM:Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsMmTM:Landroid/telephony/ims/ImsMmTelManager;

    iput-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mProvisionManager:Landroid/telephony/ims/ProvisioningManager;

    iput-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mMotoPhoneStateListener:Lcom/motorola/bach/modemstats/oemhook/MotoPhoneStateListener;

    iput-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mMotoTM:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    iput-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTsrAlarmIntent:Landroid/app/PendingIntent;

    iput-boolean v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataActivity:Z

    iput-boolean v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceCallActive:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIdle_duration:J

    iput-wide v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mActive_duration:J

    iput-wide v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIdle_Voice_Duration:J

    iput-wide v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mActive_Voice_Duration:J

    iput-wide v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mData_Idle_Session_Start:J

    iput-wide v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mData_Active_Session_Start:J

    iput-wide v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoice_Idle_Session_Start:J

    iput-wide v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoice_Active_Session_Start:J

    iput v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRssi:I

    iput v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mEcio:I

    iput v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSnr:I

    iput v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mServiceState:I

    iput v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataServiceState:I

    iput v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataRadioTechnology:I

    iput v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceRadioTechnology:I

    iput-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mServiceStateCopy:Landroid/telephony/ServiceState;

    iput v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsNetworkType:I

    iput v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mNetworkType:I

    iput v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mOldNetworkType:I

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mCheckinRatType:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mAirplaneMode:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRtpCnt:I

    iput v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRtpLoss:I

    iput v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataDirection:I

    iput-wide v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mStartTimeRatChange:J

    iput-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    new-instance v3, Lcom/motorola/bach/modemstats/TimeOnRatSummary;

    invoke-direct {v3}, Lcom/motorola/bach/modemstats/TimeOnRatSummary;-><init>()V

    iput-object v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRatSummary:Lcom/motorola/bach/modemstats/TimeOnRatSummary;

    iput v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mPhoneId:I

    iput-boolean v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsVolteFeatureEnabled:Z

    iput-boolean v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsVolteProvisioned:Z

    iput-boolean v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsWfcFeatureEnabled:Z

    iput-boolean v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsWfcProvisioned:Z

    iput-boolean v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsVolteEnabledByPlatform:Z

    iput-boolean v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsWfcEnabledByPlatform:Z

    new-instance v3, Lcom/motorola/bach/modemstats/MPhoneStateListener$MPhoneStateHandler;

    invoke-direct {v3, p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$MPhoneStateHandler;-><init>(Lcom/motorola/bach/modemstats/MPhoneStateListener;)V

    iput-object v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsImsCallbackRegister:Z

    iput-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSimBean:Lcom/motorola/bach/modemstats/call/SimBean;

    iput-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIMSRegReason:Landroid/telephony/ims/ImsReasonInfo;

    iput v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsRegistrationStatusReported:I

    new-instance v0, Lcom/motorola/bach/modemstats/MPhoneStateListener$1;

    invoke-direct {v0, p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$1;-><init>(Lcom/motorola/bach/modemstats/MPhoneStateListener;)V

    iput-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    new-instance v0, Lcom/motorola/bach/modemstats/MPhoneStateListener$2;

    invoke-direct {v0, p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$2;-><init>(Lcom/motorola/bach/modemstats/MPhoneStateListener;)V

    iput-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mProvisioningCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    new-instance v0, Lcom/motorola/bach/modemstats/MPhoneStateListener$3;

    invoke-direct {v0, p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$3;-><init>(Lcom/motorola/bach/modemstats/MPhoneStateListener;)V

    iput-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MPhoneStateListener, subId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Landroid/telephony/PhoneStateListener;->mSubId:Ljava/lang/Integer;

    sput-object p1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iput p3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mPhoneId:I

    sput-object p1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getInstance(Landroid/content/Context;)Lcom/motorola/bach/modemstats/ModemStatsUtils;

    move-result-object p1

    sput-object p1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    sget-object p1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    invoke-static {p1}, Lcom/motorola/bach/modemstats/datastall/MDataStallManager;->getInstance(Landroid/content/Context;)Lcom/motorola/bach/modemstats/datastall/MDataStallManager;

    move-result-object p1

    sput-object p1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataStallManager:Lcom/motorola/bach/modemstats/datastall/MDataStallManager;

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/bach/modemstats/MPhoneStateListener;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->report_status:Z

    return p0
.end method

.method static synthetic access$002(Lcom/motorola/bach/modemstats/MPhoneStateListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->report_status:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/motorola/bach/modemstats/MPhoneStateListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->unregisterImsCallback()V

    return-void
.end method

.method static synthetic access$102(Lcom/motorola/bach/modemstats/MPhoneStateListener;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 0

    iput-object p1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIMSRegReason:Landroid/telephony/ims/ImsReasonInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/motorola/bach/modemstats/MPhoneStateListener;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$302(Lcom/motorola/bach/modemstats/MPhoneStateListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsVolteProvisioned:Z

    return p1
.end method

.method static synthetic access$402(Lcom/motorola/bach/modemstats/MPhoneStateListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsWfcProvisioned:Z

    return p1
.end method

.method static synthetic access$500(Lcom/motorola/bach/modemstats/MPhoneStateListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logImsRegistrationEvent()V

    return-void
.end method

.method static synthetic access$602(Lcom/motorola/bach/modemstats/MPhoneStateListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsVolteEnabledByPlatform:Z

    return p1
.end method

.method static synthetic access$700(Lcom/motorola/bach/modemstats/MPhoneStateListener;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isEnabledByPlatform(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$802(Lcom/motorola/bach/modemstats/MPhoneStateListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsWfcEnabledByPlatform:Z

    return p1
.end method

.method static synthetic access$900(Lcom/motorola/bach/modemstats/MPhoneStateListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->registerImsCallback()V

    return-void
.end method

.method public static callDropCause(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x1b

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x1d

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x1c

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "CALL_PULLED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    const-string v0, "ANSWERED_ELSEWHERE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    const-string v0, "DECLINED_ELSEWHERE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v0

    :cond_4
    const-string p0, "OTHER"

    return-object p0

    :cond_5
    :goto_0
    const-string p0, "AbnormalNWRelease"

    return-object p0

    :cond_6
    :goto_1
    const-string p0, "RLF"

    return-object p0
.end method

.method public static callOrigCause(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xe

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "CALL_ORIG_RLF"

    return-object p0

    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "NETWORK_UNAVAILABLE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const/16 v0, 0x1d

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x1c

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x1e

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x1f

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x20

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x23

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x16

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x22

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const-string p0, "CALL_ORIG_OTHER"

    return-object p0

    :cond_4
    :goto_0
    const-string p0, "FAILED_ACCESS"

    return-object p0

    :cond_5
    :goto_1
    const-string p0, "NWReject"

    return-object p0

    :cond_6
    :goto_2
    const-string p0, "UNAVAILABLE_RESOURCES"

    return-object p0
.end method

.method private getCarrierConfigBoolean(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Lcom/motorola/bach/modemstats/ModemStatsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCarrierConfigBoolean key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", value="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    return v0
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

.method private handleOemHookCallEndReason(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOemHookCallEndReason index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", cause1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move v2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", cause2="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move v3, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", cause3="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v4, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", reason1="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v5, p5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", reason2="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v6, p6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", reason3="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v7, p7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", rtpTotal="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v8, p8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", rtpLoss="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v9, p9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ", sarState="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v10, p10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v11, p0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getCallStatsInfo(I)Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v1 .. v10}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->storeCallEndReason(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method private handleOemHookCsFallback(IZ)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOemHookCsFallback index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCritical="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "CsFallback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isCallIndexValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "handleOemHookCsFallback: Invalid index"

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logw(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getCallStatsInfo(I)Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getCallingUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getCallEndReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getEndCause()I

    move-result v3

    invoke-virtual {p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getClientEndCause()I

    move-result v4

    move-object v8, v1

    move-object v1, v2

    move v10, v3

    move v9, v4

    goto :goto_0

    :cond_1
    move-object v8, v1

    move v9, v2

    move v10, v9

    :goto_0
    :try_start_0
    new-instance v11, Lcom/motorola/android/provider/CheckinEvent;

    const-string v3, "CALL_PERF_STATS"

    const-string v4, "VOLTE_FALLBACK"

    const-string v5, "1.2"

    move-object v2, v11

    invoke-direct/range {v2 .. v7}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ims_registered:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", Reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-lez v9, :cond_3

    invoke-static {}, Lcom/motorola/bach/modemstats/ModemStatsErrorCode;->getInstance()Lcom/motorola/bach/modemstats/ModemStatsErrorCode;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/motorola/bach/modemstats/ModemStatsErrorCode;->getCallEndCauseFullText(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", cm_cause_code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", ecio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mEcio:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", rssi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRssi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->setCsFallbackFailureInfo(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->startCsFallbackAlarm()V

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    const-string v0, "crit"

    invoke-virtual {v11, v0, p2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Z)V

    const-string p2, "cause"

    invoke-virtual {v11, p2, v10}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string p2, "int_cause"

    invoke-virtual {v11, p2, v9}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p2

    invoke-static {p2}, Lcom/motorola/bach/modemstats/utils/TelephonyUtils;->ratToString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "rat"

    invoke-virtual {v11, v0, p2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result p2

    const-string v0, "roam"

    invoke-virtual {v11, v0, p2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Z)V

    iget-boolean p2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsRegistered:Z

    const-string v0, "ims_reg"

    invoke-virtual {v11, v0, p2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Z)V

    iget p2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mEcio:I

    const-string v0, "ecio"

    invoke-virtual {v11, v0, p2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget p2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRssi:I

    const-string v0, "rssi"

    invoke-virtual {v11, v0, p2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    sget p2, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mSinr:I

    const-string v0, "sinr"

    invoke-virtual {v11, v0, p2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string p2, "uid"

    invoke-virtual {v11, p2, v8}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    const/4 p2, 0x1

    goto :goto_1

    :cond_5
    const/4 p2, 0x0

    :goto_1
    const-string v1, "m_rab"

    invoke-virtual {v11, v1, p2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Z)V

    sget-object p2, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mNetworkType:I

    iget-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v1, v2, v0}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRadioChannel(III)I

    move-result p2

    const-string v1, "channel"

    invoke-virtual {v11, v1, p2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    sget-object p2, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mNetworkType:I

    iget-object p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, v1, p0, v0}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRadioBand(III)I

    move-result p0

    const-string p2, "band"

    invoke-virtual {v11, p2, p0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    sget-object p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {p0, v11}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->logEvent(Lcom/motorola/android/provider/CheckinEvent;)V

    invoke-virtual {p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->clearCallEndReason()V

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private isApinWrongMode()Z
    .locals 8

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getCallStatsInfo(I)Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget-object v3, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iget-object v4, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/motorola/bach/modemstats/utils/ImsUtils;->isAdvancedCallingSettingEnabled(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsVolteProvisioned:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsRegistered:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isVolteAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getVopsStatus()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getImsVoiceStatus()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UE_APModem_VOLTEEnabled_Chk: AP Side: VoLTE UI settings = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iget-object v7, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Lcom/motorola/bach/modemstats/utils/ImsUtils;->isAdvancedCallingSettingEnabled(Landroid/content/Context;I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", OMADM-settings =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsVolteProvisioned:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", IMS Registration Status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsRegistered:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", VOLTE Enabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isVolteAvailable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UE_APModem_VOLTEEnabled_Chk: Modem Side: Network VOLTE status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getVopsStatus()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", IMS VOLTE Registered =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getImsVoiceStatus()Z

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move v3, v2

    move v4, v3

    :goto_2
    if-eq v3, v4, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UE_APModem_VOLTEEnabled_Chk: mIsAPinWrongMode  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    return v1
.end method

.method private isEnabledByPlatform(II)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sget-object v3, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iget-object v4, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/motorola/bach/modemstats/utils/ImsUtils;->getImsMmTelManager(Landroid/content/Context;I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v3

    if-nez v3, :cond_0

    return v0

    :cond_0
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/motorola/bach/modemstats/MPhoneStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/motorola/bach/modemstats/MPhoneStateListener$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;)V

    invoke-virtual {v3, p1, p2, v1, v4}, Landroid/telephony/ims/ImsMmTelManager;->isSupported(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    const-wide/16 v3, 0x7d0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnabledByPlatform capability:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " transportType:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEnabledByPlatform: e="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->loge(Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method private isImsVoiceCall(II)Z
    .locals 0

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNormalClearing(Landroid/telephony/ims/ImsReasonInfo;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x1

    const-string v4, "*"

    if-eqz v1, :cond_6

    const-string v5, "\\s"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsNormalCauseCodeMessageMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsNormalCauseCodeMessageMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsNormalCauseCodeMessageMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    move v7, v3

    goto :goto_0

    :cond_1
    move v7, v0

    :goto_0
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    return v3

    :cond_2
    sget-object v5, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsNormalCauseCodeMessageMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsNormalCauseCodeMessageMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsNormalCauseCodeMessageMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object p0, v4

    :cond_3
    sget-object v5, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsNormalCauseCodeMessageMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsNormalCauseCodeMessageMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v3

    :cond_6
    sget-object v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsNormalCauseCodeMessageMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsNormalCauseCodeMessageMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsNormalCauseCodeMessageMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    return v3

    :cond_8
    return v0
.end method

.method public static isNormalDisconnect(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x10

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x7

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x11

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x15

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x2d

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CALL_PULLED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ANSWERED_ELSEWHERE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DECLINED_ELSEWHERE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x3b

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x12

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8f

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x41

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x90

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isSVLTE()Z
    .locals 2

    const-string v0, "ro.vendor.ril.svlte1x"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isUSC()Z
    .locals 2

    sget-object v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/ModemStatsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "channel_id"

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "usc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isVideoCall(I)Z
    .locals 0

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result p0

    return p0
.end method

.method private isVolteEnabled()Z
    .locals 2

    iget-boolean v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsVolteProvisioned:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsVolteFeatureEnabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/motorola/bach/modemstats/utils/ImsUtils;->isAdvancedCallingSettingEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsVolteEnabledByPlatform:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private loadNormalCallDropList()V
    .locals 11

    sget-object v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/ModemStatsService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f010002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    array-length v1, v0

    if-lez v1, :cond_6

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    const-string v5, "\\|"

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    const-string v8, "Invalid ImsReasonInfo cause mapping found: "

    if-eq v7, v6, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const/4 v6, 0x2

    :try_start_0
    aget-object v6, v5, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "*"

    if-eqz v6, :cond_1

    :try_start_1
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "\\s"

    const-string v10, ""

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    :cond_1
    aget-object v9, v5, v2

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    aget-object v9, v5, v2

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    :cond_2
    const/4 v9, 0x1

    aget-object v10, v5, v9

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    aget-object v7, v5, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    :cond_3
    sget-object v7, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsNormalCauseCodeMessageMap:Landroid/util/ArrayMap;

    aget-object v10, v5, v2

    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    aget-object v9, v5, v9

    invoke-virtual {v6, v9, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsNormalCauseCodeMessageMap:Landroid/util/ArrayMap;

    aget-object v5, v5, v2

    invoke-virtual {v7, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    sget-object v7, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsNormalCauseCodeMessageMap:Landroid/util/ArrayMap;

    aget-object v10, v5, v2

    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    aget-object v10, v5, v9

    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsNormalCauseCodeMessageMap:Landroid/util/ArrayMap;

    aget-object v10, v5, v2

    invoke-virtual {v6, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    aget-object v5, v5, v9

    invoke-virtual {v6, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    sget-object v7, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsNormalCauseCodeMessageMap:Landroid/util/ArrayMap;

    aget-object v10, v5, v2

    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    aget-object v10, v5, v9

    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsNormalCauseCodeMessageMap:Landroid/util/ArrayMap;

    aget-object v10, v5, v2

    invoke-virtual {v6, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    aget-object v5, v5, v9

    invoke-virtual {v6, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->loge(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private logImsRegistrationEvent()V
    .locals 14

    const-string v0, ","

    const-string v1, "yes"

    const-string v2, "no"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logImsRegistrationEvent for ims_reg_state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsRegistered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isImsRegistrationRequired()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-boolean v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsRegistered:Z

    iget v4, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsRegistrationStatusReported:I

    if-ne v3, v4, :cond_1

    return-void

    :cond_1
    iput v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsRegistrationStatusReported:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsNetworkType:I

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    invoke-static {v3}, Lcom/motorola/bach/modemstats/utils/TelephonyUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v3

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v12, 0x0

    :try_start_0
    new-instance v13, Lcom/motorola/android/provider/CheckinEvent;

    const-string v5, "CALL_PERF_STATS"

    const-string v6, "IMS_REGISTER"

    const-string v7, "2.5"

    move-object v4, v13

    move-wide v8, v10

    invoke-direct/range {v4 .. v9}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v4, "rat"

    invoke-static {v3}, Lcom/motorola/bach/modemstats/utils/TelephonyUtils;->ratToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "roam"

    iget-object v5, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v1

    goto :goto_1

    :cond_3
    move-object v5, v2

    :goto_1
    invoke-virtual {v13, v4, v5}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ims_reg"

    iget-boolean v5, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsRegistered:Z

    if-eqz v5, :cond_4

    move-object v5, v1

    goto :goto_2

    :cond_4
    move-object v5, v2

    :goto_2
    invoke-virtual {v13, v4, v5}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "rssi"

    iget v5, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRssi:I

    invoke-virtual {v13, v4, v5}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v4, "ecio"

    iget v5, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mEcio:I

    invoke-virtual {v13, v4, v5}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v4, "m_rab"

    iget-object v5, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v1

    goto :goto_3

    :cond_5
    move-object v5, v2

    :goto_3
    invoke-virtual {v13, v4, v5}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "sinr"

    sget v5, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mSinr:I

    invoke-virtual {v13, v4, v5}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v4, "disp_on"

    sget-boolean v5, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mDisplayOn:Z

    if-eqz v5, :cond_6

    move-object v5, v1

    goto :goto_4

    :cond_6
    move-object v5, v2

    :goto_4
    invoke-virtual {v13, v4, v5}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "channel"

    sget-object v5, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v6, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v5, v3, v6, v7}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRadioChannel(III)I

    move-result v5

    invoke-virtual {v13, v4, v5}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v4, "band"

    sget-object v5, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v6, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v3, v6, v7}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRadioBand(III)I

    move-result v3

    invoke-virtual {v13, v4, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIMSRegReason:Landroid/telephony/ims/ImsReasonInfo;

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIMSRegReason:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIMSRegReason:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIMSRegReason:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    const-string v3, ""

    goto :goto_5

    :cond_7
    iget-object v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIMSRegReason:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v0, "c_inf"

    invoke-virtual {v13, v0, v12}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v0, "sim_slot"

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getSimSlot()I

    move-result v3

    invoke-virtual {v13, v0, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v13, v12

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    sget-object v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v0, v13}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->logEvent(Lcom/motorola/android/provider/CheckinEvent;)V

    iget-boolean v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsRegistered:Z

    if-nez v0, :cond_b

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "yyyy-MM-dd HH:mm:ss:SSS"

    invoke-direct {v0, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "),NetworkType: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mNetworkType:I

    invoke-static {v4}, Lcom/motorola/bach/modemstats/utils/TelephonyUtils;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",ImsRegister: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsRegistered:Z

    if-eqz v4, :cond_9

    goto :goto_8

    :cond_9
    move-object v1, v2

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",c_inf: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v12, :cond_a

    const-string v12, "null"

    :cond_a
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",sim_slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getSimSlot()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "IMS_REGISTER_FAIL"

    invoke-virtual {v3, v1, p0, v0}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->addToDropbox(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_b
    return-void
.end method

.method private onDataServiceChanged(Z)V
    .locals 0

    sget-object p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataStallManager:Lcom/motorola/bach/modemstats/datastall/MDataStallManager;

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/datastall/MDataStallManager;->setDataUnavailableForOOS(Z)V

    sget-object p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataStallManager:Lcom/motorola/bach/modemstats/datastall/MDataStallManager;

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/datastall/MDataStallManager;->sendDataUnavailableForOOSBroadcast(Z)V

    return-void
.end method

.method private registerImsCallback()V
    .locals 3

    iget-boolean v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsImsCallbackRegister:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsImsCallbackRegister true, don\'t need register, subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerImsCallback, subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsImsCallbackRegister:Z

    :try_start_0
    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsMmTM:Landroid/telephony/ims/ImsMmTelManager;

    sget-object v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    invoke-virtual {v1}, Lcom/motorola/bach/modemstats/ModemStatsService;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsMmTelManager;->registerImsRegistrationCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mProvisionManager:Landroid/telephony/ims/ProvisioningManager;

    sget-object v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    invoke-virtual {v1}, Lcom/motorola/bach/modemstats/ModemStatsService;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mProvisioningCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ProvisioningManager;->registerProvisioningChangedCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ProvisioningManager$Callback;)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register, ImsException mSubId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsImsCallbackRegister:Z

    :goto_0
    return-void
.end method

.method public static serviceStateToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "OFF"

    return-object p0

    :cond_0
    const-string p0, "EMER"

    return-object p0

    :cond_1
    const-string p0, "OUT"

    return-object p0

    :cond_2
    const-string p0, "IN"

    return-object p0
.end method

.method private unregisterImsCallback()V
    .locals 2

    iget-boolean v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsImsCallbackRegister:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsImsCallbackRegister false, don\'t need unregister, subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterImsCallback, subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsImsCallbackRegister:Z

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsMmTM:Landroid/telephony/ims/ImsMmTelManager;

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsMmTelManager;->unregisterImsRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mProvisionManager:Landroid/telephony/ims/ProvisioningManager;

    iget-object p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mProvisioningCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    invoke-virtual {v0, p0}, Landroid/telephony/ims/ProvisioningManager;->unregisterProvisioningChangedCallback(Landroid/telephony/ims/ProvisioningManager$Callback;)V

    return-void
.end method


# virtual methods
.method public checkAPModemIMSStatus()V
    .locals 5

    iget v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mNetworkType:I

    const/4 v1, 0x1

    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    invoke-static {v0}, Lcom/motorola/bach/modemstats/utils/Moto5gUtils;->is5gNSARat(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isVolteEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    const/4 v0, 0x3

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isApinWrongMode()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->PROPERTY_VOLTE_MODE_CHK_TIMER:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mHandler:Landroid/os/Handler;

    mul-int/lit8 v3, v1, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UE_APModem_VOLTEEnabled_Chk:  AP Modem VOLTE Status mismatch - start timer for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mins"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "UE_APModem_VOLTEEnabled_Chk: AP Modem VOLTE Status matches, timer cancel"

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public checkImsRegistrationState(II)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In checkImsRegistrationState networkType= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const-string p1, "checkImsRegistrationState, dataState is not in Service"

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    :goto_0
    move p1, v0

    goto/16 :goto_1

    :cond_0
    const/16 p2, 0x12

    const/16 v1, 0xe

    const/16 v2, 0xd

    if-eq p1, p2, :cond_1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    iget v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mNetworkType:I

    invoke-static {v3}, Lcom/motorola/bach/modemstats/utils/Moto5gUtils;->is5gNSARat(I)Z

    move-result v3

    if-nez v3, :cond_1

    const-string p1, "checkImsRegistrationState, RAT is not IWLAN/LTE/eHRPD"

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isWfcEnabled()Z

    move-result p2

    if-nez p2, :cond_2

    const-string p1, "checkImsRegistrationState, WLAN RAT, WFC is not enabled by user"

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_3

    iget p2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mNetworkType:I

    invoke-static {p2}, Lcom/motorola/bach/modemstats/utils/Moto5gUtils;->is5gNSARat(I)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    sget-object p2, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iget-object v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p2, v3}, Lcom/motorola/bach/modemstats/utils/ImsUtils;->isAdvancedCallingSettingEnabled(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p1, "handleTimeOnImsRegisterCheck, VoLTE is not enabled by user on LTE/eHRPD"

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_5

    iget p1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mNetworkType:I

    invoke-static {p1}, Lcom/motorola/bach/modemstats/utils/Moto5gUtils;->is5gNSARat(I)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "handleTimeOnImsRegisterCheck, IMS Roaming not present on LTE/eHRPD"

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isImsRegistrationRequired()Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "checkImsRegistrationState, ImsRegistration is not required"

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isVolteEnabled()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isWfcEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isWifiConnected()Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "checkImsRegistrationState, WFC only but Wifi is not connected"

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-boolean p1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsRegistered:Z

    if-eqz p1, :cond_9

    const-string p1, "checkImsRegistrationState, IMS is registered currently."

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-boolean p1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceCallActive:Z

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isSVLTE()Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "checkImsRegistrationState, Cancel for voice call in SRLTE mode."

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const/4 p1, 0x0

    :goto_1
    iget-object p2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_b

    return-void

    :cond_b
    sget-object p1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->PROPERTY_IMS_REGISTER_TIMER:Ljava/lang/String;

    const/4 p2, 0x5

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mHandler:Landroid/os/Handler;

    mul-int/lit8 p1, p1, 0x3c

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string p1, "checkImsRegistrationState for IMS deregisterred, timer start"

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public checkInRatSummary()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v1, v0}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mapTelephonyNetworkTypeForCheckin(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceRadioTechnology:I

    invoke-virtual {v0, v1}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mapTelephonyNetworkTypeForCheckin(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mServiceState:I

    sget-object v2, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->timeSpentOnRAT(ILjava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRatSummary:Lcom/motorola/bach/modemstats/TimeOnRatSummary;

    sget-object v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/TimeOnRatSummary;->checkin(Lcom/motorola/bach/modemstats/ModemStatsUtils;)V

    return-void
.end method

.method public checkTrueImsFeatureTagsRegistered()V
    .locals 7

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getCallStatsInfo(I)Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;

    move-result-object v0

    iget v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mNetworkType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xd

    if-ne v1, v4, :cond_2

    invoke-static {v1}, Lcom/motorola/bach/modemstats/utils/Moto5gUtils;->is5gNSARat(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isVolteEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    const/4 v4, 0x2

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UE_Mode_Chk: VoLTE UI settings = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iget-object v6, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/motorola/bach/modemstats/utils/ImsUtils;->isAdvancedCallingSettingEnabled(Landroid/content/Context;I)Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " /OMADM-settings =  "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v5, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsVolteProvisioned:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iget-object v5, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v1, v5}, Lcom/motorola/bach/modemstats/utils/ImsUtils;->isAdvancedCallingSettingEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getVopsStatus()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsVolteProvisioned:Z

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getImsVoiceStatus()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getIsSrlteMode()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v3

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getImsVoiceStatus()Z

    move-result v5

    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getIsSrlteMode()Z

    move-result v0

    xor-int/2addr v0, v3

    xor-int/2addr v0, v5

    :goto_3
    if-eq v1, v0, :cond_7

    iput-boolean v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsUeInWrongMode:Z

    goto :goto_4

    :cond_7
    iput-boolean v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsUeInWrongMode:Z

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UE_Mode_Chk: mIsUeInWrongMode  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsUeInWrongMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsUeInWrongMode:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->PROPERTY_UE_MODE_CHG_TIMER:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mHandler:Landroid/os/Handler;

    mul-int/lit8 v2, v0, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UE_Mode_Chk: Verifying UE operating mode, start timer for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mins"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    iget-boolean v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsUeInWrongMode:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "UE_Mode_Chk: UE is in correct operating mode, timer cancel"

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    :cond_9
    :goto_5
    return-void
.end method

.method protected declared-synchronized clearCallStatsInfo(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mCallStatsInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mCallStatsInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, v0, :cond_2

    iget-object p1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mCallStatsInfoList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;

    invoke-virtual {p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->clear()V

    iget-object p1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mCallStatsInfoList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected fillUpCallDropEvent(Lcom/motorola/android/provider/CheckinEvent;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "incoming"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    const-string v3, "fallback"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "type"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "domain"

    const/4 v7, -0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v8, "wifi_ims_call"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    const-string v9, "index"

    invoke-virtual {v2, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "duration"

    const-wide/16 v11, 0x0

    invoke-virtual {v2, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    const-string v10, "rat"

    invoke-virtual {v2, v10, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    invoke-static {v15}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v15

    const-string v7, "vonr_info"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x14

    goto :goto_0

    :cond_0
    move v7, v15

    :goto_0
    cmp-long v11, v13, v11

    if-gtz v11, :cond_1

    move v8, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v9}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getCallStatsInfo(I)Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->isCallOnWifi()Z

    move-result v11

    or-int/2addr v8, v11

    :cond_2
    :goto_1
    invoke-virtual {v0, v5, v6, v8}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getCallRAT(IIZ)I

    move-result v11

    invoke-virtual {v0, v5, v6}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isImsCall(II)Z

    move-result v12

    invoke-virtual {v0, v11, v12}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->requestCallEndRadioState(IZ)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[DBG] fillUpCallDropEvent ratFromTelephony="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", discRat="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v12

    const-string v13, "yes"

    const-string v14, "no"

    if-eqz v12, :cond_3

    move-object v12, v13

    goto :goto_2

    :cond_3
    move-object v12, v14

    :goto_2
    const-string v15, "roam"

    invoke-virtual {v1, v15, v12}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "fb_call"

    invoke-virtual {v1, v12, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Z)V

    iget-boolean v3, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsRegistered:Z

    const-string v12, "ims_reg"

    invoke-virtual {v1, v12, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isWifiConnected()Z

    move-result v3

    const-string v12, "wifi_st"

    invoke-virtual {v1, v12, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Z)V

    if-eqz v8, :cond_4

    sget-object v3, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v3}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentWifiRssi()I

    move-result v3

    const-string v12, "wifi_rssi"

    invoke-virtual {v1, v12, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    :cond_4
    invoke-virtual {v0, v9}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getCallingUuid(I)Ljava/lang/String;

    move-result-object v3

    const-string v12, "uid"

    invoke-virtual {v1, v12, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget v12, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRssi:I

    invoke-virtual {v3, v12}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getPowerLevelForCheckIn(I)I

    move-result v3

    const-string v12, "rssi"

    invoke-virtual {v1, v12, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget v3, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mEcio:I

    const-string v12, "ecio"

    invoke-virtual {v1, v12, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget-object v3, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v3

    const/4 v12, 0x2

    if-ne v3, v12, :cond_5

    goto :goto_3

    :cond_5
    move-object v13, v14

    :goto_3
    const-string v3, "m_rab"

    invoke-virtual {v1, v3, v13}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v13, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v3, v11, v13, v12}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRadioBand(III)I

    move-result v3

    const/4 v13, -0x4

    const-string v14, "channel"

    const-string v15, "band"

    if-eq v3, v13, :cond_7

    const/4 v13, -0x2

    if-eq v3, v13, :cond_6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DBG] fillUpCallDropEvent: Band:"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    invoke-virtual {v1, v15, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    sget-object v3, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v4, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v11, v4, v12}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRadioChannel(III)I

    move-result v3

    invoke-virtual {v1, v14, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    invoke-virtual {v0, v5, v6, v8}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getCallRATString(IIZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DBG] fillUpCallDropEvent: RAT-Invalid CallRat: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " BandInfoRAT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v6, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6, v12}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRatfromBandInfo(II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    sget-object v3, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v4, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, v12}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRatfromBandInfo(II)I

    move-result v3

    invoke-virtual {v1, v10, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    sget-object v3, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v4, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, v12}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRadioBand(II)I

    move-result v3

    invoke-virtual {v1, v15, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    sget-object v3, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v4, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, v12}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRadioChannel(II)I

    move-result v3

    invoke-virtual {v1, v14, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    goto :goto_4

    :cond_7
    new-instance v3, Landroid/telephony/ServiceState;

    invoke-direct {v3}, Landroid/telephony/ServiceState;-><init>()V

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getChannelNumber()I

    move-result v3

    const-string v4, "[DBG] fillUpCallDropEvent: BandInfoUnavailable at ModemStats"

    invoke-virtual {v0, v4}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[DBG] fillUpCallDropEvent: BandInfo check from ServiceState: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v11, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mMotoTM:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    iget-object v12, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getBandInfo(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mMotoTM:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    iget-object v11, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getBandInfo(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v15, v4}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    invoke-virtual {v0, v5, v6, v8}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getCallRATString(IIZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "hplmn"

    invoke-virtual {v1, v4, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v4, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "plmn"

    invoke-virtual {v1, v4, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v3, Lcom/motorola/bach/modemstats/ConstantValue;->IS_BUILD_TYPE_ODM1:Z

    if-nez v3, :cond_8

    sget-object v3, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    invoke-static {v3}, Lcom/motorola/bach/modemstats/utils/CommonUtils;->getFlipState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v4, "flip_state"

    invoke-virtual {v1, v4, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    sget-object v3, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    invoke-static {v3}, Lcom/motorola/bach/modemstats/call/MCallManager;->getInstance(Landroid/content/Context;)Lcom/motorola/bach/modemstats/call/MCallManager;

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/motorola/bach/modemstats/call/MCallManager;->getCallBean(I)Lcom/motorola/bach/modemstats/call/CallBean;

    move-result-object v3

    if-eqz v3, :cond_a

    iget v4, v3, Lcom/motorola/bach/modemstats/call/CallBean;->activeRat:I

    const-string v6, "act_rat"

    invoke-virtual {v1, v6, v4}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget v4, v3, Lcom/motorola/bach/modemstats/call/CallBean;->dialingRat:I

    const-string v6, "dial_rat"

    invoke-virtual {v1, v6, v4}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget v4, v3, Lcom/motorola/bach/modemstats/call/CallBean;->ringingRat:I

    const-string v6, "ring_rat"

    invoke-virtual {v1, v6, v4}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v4, "disc_rat"

    invoke-virtual {v1, v4, v7}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget-object v4, v3, Lcom/motorola/bach/modemstats/call/CallBean;->durnRat:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, v3, Lcom/motorola/bach/modemstats/call/CallBean;->durnRat:Ljava/lang/String;

    const-string v6, "durn_rat"

    invoke-virtual {v1, v6, v4}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget v4, v3, Lcom/motorola/bach/modemstats/call/CallBean;->callType:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "logCallDropEvent callBean="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    :goto_5
    if-nez v4, :cond_b

    invoke-virtual {v0, v5, v9}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getCallType(II)I

    move-result v4

    :cond_b
    const-string v3, "cl_type"

    invoke-virtual {v1, v3, v4}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logCallDropEvent simBean="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSimBean:Lcom/motorola/bach/modemstats/call/SimBean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSimBean:Lcom/motorola/bach/modemstats/call/SimBean;

    if-eqz v3, :cond_c

    iget v3, v3, Lcom/motorola/bach/modemstats/call/SimBean;->rsrp:I

    const-string v4, "rsrp"

    invoke-virtual {v1, v4, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget-object v3, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSimBean:Lcom/motorola/bach/modemstats/call/SimBean;

    iget v3, v3, Lcom/motorola/bach/modemstats/call/SimBean;->rsrq:I

    const-string v4, "rsrq"

    invoke-virtual {v1, v4, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    :cond_c
    sget-object v3, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mCellId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    sget-boolean v3, Landroid/os/Build;->IS_PRODUCTION_DEVICE:Z

    if-nez v3, :cond_d

    sget-object v3, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mCellId:Ljava/lang/String;

    const-string v4, "cell_id"

    invoke-virtual {v1, v4, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/android/provider/CheckinEvent;->getEventName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CALL_DROP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "CALL_DROP_NW"

    if-nez v4, :cond_e

    const-string v4, "CALL_ORIG_FAILURE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_e
    const/4 v4, 0x0

    iget-object v6, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mMotoTM:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    if-eqz v6, :cond_10

    iget-object v7, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getCallDropInfos(I)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallDropInfos;

    move-result-object v6

    if-eqz v6, :cond_f

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    iget v3, v6, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallDropInfos;->numOfRlf:I

    const-string v5, "num_rlf"

    invoke-virtual {v1, v5, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget v3, v6, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallDropInfos;->rlfCause:I

    const-string v5, "rlf_cause"

    invoke-virtual {v1, v5, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget v3, v6, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallDropInfos;->numOfOos:I

    const-string v5, "num_oos"

    invoke-virtual {v1, v5, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget v3, v6, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallDropInfos;->oosCause:I

    const-string v5, "oos_cause"

    invoke-virtual {v1, v5, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget v3, v6, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallDropInfos;->numOfRegFailure:I

    const-string v5, "num_regfl"

    invoke-virtual {v1, v5, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget v3, v6, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallDropInfos;->regFailureCause:I

    const-string v5, "reg_cause"

    invoke-virtual {v1, v5, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget v3, v6, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallDropInfos;->regFailureEvent:I

    const-string v5, "reg_event"

    invoke-virtual {v1, v5, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget v3, v6, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallDropInfos;->numOfImsBearerFailure:I

    const-string v5, "num_imsfl"

    invoke-virtual {v1, v5, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget v3, v6, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallDropInfos;->imsBearerFailureCause:I

    const-string v5, "imsbr_cau"

    invoke-virtual {v1, v5, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget v3, v6, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallDropInfos;->imsBearerFailureEvent:I

    const-string v5, "imsbr_ent"

    invoke-virtual {v1, v5, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget v3, v6, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallDropInfos;->txPower:I

    const-string v5, "tx_power"

    invoke-virtual {v1, v5, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget v3, v6, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallDropInfos;->rsrpRx0:I

    const-string v5, "rsrp_rx0"

    invoke-virtual {v1, v5, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget v3, v6, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallDropInfos;->rsrpRx1:I

    const-string v5, "rsrp_rx1"

    invoke-virtual {v1, v5, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget v3, v6, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallDropInfos;->rsrpRx2:I

    const-string v5, "rsrp_rx2"

    invoke-virtual {v1, v5, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget v3, v6, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallDropInfos;->rsrpRx3:I

    const-string v5, "rsrp_rx3"

    invoke-virtual {v1, v5, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget v3, v6, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallDropInfos;->snrAvg:I

    const-string v5, "sinr"

    invoke-virtual {v1, v5, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget v3, v6, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallDropInfos;->snrRx0:I

    const-string v5, "sinr_rx0"

    invoke-virtual {v1, v5, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget v3, v6, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallDropInfos;->snrRx1:I

    const-string v5, "sinr_rx1"

    invoke-virtual {v1, v5, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget v3, v6, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallDropInfos;->snrRx2:I

    const-string v5, "sinr_rx2"

    invoke-virtual {v1, v5, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget v3, v6, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallDropInfos;->snrRx3:I

    const-string v5, "sinr_rx3"

    invoke-virtual {v1, v5, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget v3, v6, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallDropInfos;->pci:I

    const-string v5, "pci"

    invoke-virtual {v1, v5, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget v3, v6, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallDropInfos;->arfcn:I

    const-string v5, "arfcn"

    invoke-virtual {v1, v5, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget v3, v6, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallDropInfos;->cellGroupType:I

    const-string v5, "cell_gp_t"

    invoke-virtual {v1, v5, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    iget-object v3, v6, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallDropInfos;->causeString:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, v6, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallDropInfos;->causeString:Ljava/lang/String;

    const-string v4, "\""

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_f
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "MPhoneStateListener"

    const-string v6, "callDropInfos == null"

    invoke-static {v5, v6, v3}, Lcom/motorola/bach/modemstats/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    :goto_6
    const-string v3, "disconnected_cause"

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "disconnected_cause_additional"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, v9}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getCallStatsInfo(I)Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getClientEndCause()I

    move-result v7

    goto :goto_7

    :cond_11
    move v7, v5

    :goto_7
    if-lez v7, :cond_12

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_12
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v3, "unspecified"

    :cond_13
    :goto_8
    const-string v0, ","

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/bach/modemstats/utils/CommonUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_14
    invoke-static {v4}, Lcom/motorola/bach/modemstats/utils/CommonUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_15
    if-eqz v2, :cond_16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_16
    :goto_9
    const-string v0, ";"

    const-string v2, ":"

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "c_inf"

    invoke-virtual {v1, v2, v0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method protected getCallRAT(IIZ)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isImsCall(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xd

    if-eqz p3, :cond_1

    const/16 p1, 0x12

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result p1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    iget p1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mOldNetworkType:I

    :cond_2
    return p1
.end method

.method protected getCallRATString(IIZ)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getCallRAT(IIZ)I

    move-result p0

    invoke-static {p0}, Lcom/motorola/bach/modemstats/utils/TelephonyUtils;->ratToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected declared-synchronized getCallStatsInfo(I)Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mCallStatsInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mCallStatsInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getIndex()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_0

    monitor-exit p0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;

    invoke-direct {v0, p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;-><init>(Lcom/motorola/bach/modemstats/MPhoneStateListener;I)V

    iget-object p1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mCallStatsInfoList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getCallType(II)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isVideoCall(I)Z

    move-result p1

    const/4 v0, 0x3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getCallStatsInfo(I)Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->isImsVTCall()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getCallTypeString(IZI)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    const-string p2, "MT"

    goto :goto_0

    :cond_0
    const-string p2, "MO"

    :goto_0
    invoke-direct {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isVideoCall(I)Z

    move-result p1

    const-string v0, "-VT"

    if-eqz p1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p3}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getCallStatsInfo(I)Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->isImsVTCall()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    :goto_1
    return-object p2
.end method

.method protected declared-synchronized getCallingUuid(I)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isCallIndexValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getCallStatsInfo(I)Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getCallingUuid()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    const-string p1, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getLastServiceState()Landroid/telephony/ServiceState;
    .locals 0

    iget-object p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mServiceStateCopy:Landroid/telephony/ServiceState;

    return-object p0
.end method

.method protected getSimOperator()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/motorola/bach/modemstats/utils/TelephonyUtils;->getSimOperator(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getSimSlot()I
    .locals 1

    iget p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mPhoneId:I

    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method

.method public getSubscriptionId()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method protected getVOLTEStatus()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsVolteEnabledByPlatform:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iget-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Lcom/motorola/bach/modemstats/utils/ImsUtils;->isAdvancedCallingSettingEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-boolean v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsVolteEnabledByPlatform:Z

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsVolteProvisioned:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "-P"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "-NP"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public handleAirplaneModeChange()V
    .locals 4

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isAirplaneModeOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mAirplaneMode:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update TimeOnRat for Settings Observer, airplane mode status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mAirplaneMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mAirplaneMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mServiceState:I

    sget-object v2, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "APM"

    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->timeSpentOnRAT(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mServiceState:I

    sget-object v2, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NULL"

    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->timeSpentOnRAT(ILjava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public handleCsFallbackAlarm(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "CsFallbackCallingIndexExtra"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isCallIndexValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getCallStatsInfo(I)Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->setCsFallbackIntent(Landroid/app/PendingIntent;)V

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->addFallback2Bug2Go()Z

    :cond_1
    return-void
.end method

.method public handleImsFeatureChanged(Landroid/content/Intent;)V
    .locals 8

    const-string v0, "item"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    if-eq v2, v0, :cond_0

    return-void

    :cond_0
    sget-boolean v3, Landroid/os/Build;->SOC_MANUFACTURER_IS_MTK:Z

    const-string v4, ", value="

    const-string v5, "handleImsFeatureChanged: item="

    const-string v6, "value"

    const/4 v7, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {p1, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne v7, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isImsRegistrationRequired()Z

    move-result p1

    if-nez v0, :cond_3

    iput-boolean v7, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsVolteFeatureEnabled:Z

    goto :goto_2

    :cond_3
    if-ne v2, v0, :cond_4

    iput-boolean v7, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsWfcFeatureEnabled:Z

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isImsRegistrationRequired()Z

    move-result v0

    if-ne v0, p1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleImsFeatureChanged skip for: bImsRequiredOld="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    return-void

    :cond_5
    iget p1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mNetworkType:I

    iget v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataServiceState:I

    invoke-virtual {p0, p1, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->checkImsRegistrationState(II)V

    return-void
.end method

.method public handleMoto5gStateChange()V
    .locals 1

    const-string v0, "handleMoto5gStateChange"

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mServiceStateCopy:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    :cond_0
    return-void
.end method

.method public handleOOSEvent(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "handleOOSEvent"

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "OUT_OF_SERV"

    invoke-virtual {p0, v1, p1, v0}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->addToDropbox(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public handleOemHookCallPerf([B)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getReversedIntegerFromBytes([BII)I

    move-result v3

    array-length v4, v1

    const/16 v5, 0x8

    sub-int/2addr v4, v5

    if-eq v4, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call Perf data length is not right. Data length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", (array length) - 8: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v1, v1

    sub-int/2addr v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", return."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v6, -0x1

    move-object v9, v3

    move-object v11, v9

    move-object v12, v11

    move v8, v5

    move v3, v6

    move v5, v3

    move v7, v5

    move v10, v7

    move v13, v10

    move v14, v13

    move v15, v14

    const/4 v4, 0x0

    :goto_0
    array-length v2, v1

    move/from16 v16, v15

    const/4 v15, 0x1

    sub-int/2addr v2, v15

    const/4 v15, 0x2

    if-ge v8, v2, :cond_9

    aget-byte v2, v1, v8

    add-int/lit8 v8, v8, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    array-length v2, v1

    const/4 v15, 0x1

    sub-int/2addr v2, v15

    if-gt v8, v2, :cond_1

    aget-byte v15, v1, v8

    goto :goto_1

    :cond_1
    move/from16 v15, v16

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x4

    invoke-direct {v0, v1, v8, v2}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getReversedIntegerFromBytes([BII)I

    move-result v14

    goto :goto_2

    :pswitch_2
    const/4 v2, 0x4

    invoke-direct {v0, v1, v8, v2}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getReversedIntegerFromBytes([BII)I

    move-result v13

    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x4

    :goto_3
    move/from16 v15, v16

    goto :goto_0

    :pswitch_3
    array-length v2, v1

    const/4 v15, 0x1

    sub-int/2addr v2, v15

    if-gt v8, v2, :cond_8

    aget-byte v6, v1, v8

    goto/16 :goto_9

    :pswitch_4
    array-length v2, v1

    sub-int/2addr v2, v15

    if-gt v8, v2, :cond_3

    invoke-direct {v0, v1, v8, v15}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getReversedIntegerFromBytes([BII)I

    move-result v2

    goto :goto_4

    :cond_3
    const/4 v2, 0x0

    :goto_4
    add-int/lit8 v8, v8, 0x2

    if-lez v2, :cond_6

    array-length v15, v1

    sub-int/2addr v15, v2

    if-gt v8, v15, :cond_6

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v1, v8, v2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_7

    :pswitch_5
    array-length v2, v1

    sub-int/2addr v2, v15

    if-gt v8, v2, :cond_4

    invoke-direct {v0, v1, v8, v15}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getReversedIntegerFromBytes([BII)I

    move-result v2

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    :goto_5
    add-int/lit8 v8, v8, 0x2

    if-lez v2, :cond_6

    array-length v15, v1

    sub-int/2addr v15, v2

    if-gt v8, v15, :cond_6

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v1, v8, v2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_7

    :pswitch_6
    array-length v2, v1

    sub-int/2addr v2, v15

    if-gt v8, v2, :cond_5

    invoke-direct {v0, v1, v8, v15}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getReversedIntegerFromBytes([BII)I

    move-result v2

    goto :goto_6

    :cond_5
    const/4 v2, 0x0

    :goto_6
    add-int/lit8 v8, v8, 0x2

    if-lez v2, :cond_6

    array-length v15, v1

    sub-int/2addr v15, v2

    if-gt v8, v15, :cond_6

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v1, v8, v2}, Ljava/lang/String;-><init>([BII)V

    :cond_6
    :goto_7
    add-int/2addr v8, v2

    goto :goto_3

    :pswitch_7
    array-length v2, v1

    const/4 v15, 0x4

    sub-int/2addr v2, v15

    if-gt v8, v2, :cond_2

    invoke-direct {v0, v1, v8, v15}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getReversedIntegerFromBytes([BII)I

    move-result v7

    goto :goto_2

    :pswitch_8
    const/4 v15, 0x4

    array-length v2, v1

    sub-int/2addr v2, v15

    if-gt v8, v2, :cond_2

    invoke-direct {v0, v1, v8, v15}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getReversedIntegerFromBytes([BII)I

    move-result v5

    goto :goto_2

    :pswitch_9
    const/4 v15, 0x4

    array-length v2, v1

    sub-int/2addr v2, v15

    if-gt v8, v2, :cond_2

    invoke-direct {v0, v1, v8, v15}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getReversedIntegerFromBytes([BII)I

    move-result v3

    goto :goto_2

    :pswitch_a
    const/4 v15, 0x4

    array-length v2, v1

    const/4 v15, 0x1

    sub-int/2addr v2, v15

    if-gt v8, v2, :cond_8

    aget-byte v2, v1, v8

    if-ne v2, v15, :cond_7

    goto :goto_8

    :cond_7
    const/4 v15, 0x0

    :goto_8
    move v4, v15

    goto :goto_9

    :pswitch_b
    const/4 v15, 0x1

    array-length v2, v1

    sub-int/2addr v2, v15

    if-gt v8, v2, :cond_8

    aget-byte v2, v1, v8

    move v10, v2

    :cond_8
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    :cond_9
    if-nez v10, :cond_a

    invoke-direct {v0, v6, v4}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->handleOemHookCsFallback(IZ)V

    goto :goto_a

    :cond_a
    if-ne v10, v15, :cond_b

    move-object/from16 v0, p0

    move v1, v6

    move v2, v3

    move v3, v5

    move v4, v7

    move-object v5, v9

    move-object v6, v11

    move-object v7, v12

    move v8, v13

    move v9, v14

    move/from16 v10, v16

    invoke-direct/range {v0 .. v10}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->handleOemHookCallEndReason(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    :cond_b
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method public handleOemHookImsTags([B)V
    .locals 9

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getReversedIntegerFromBytes([BII)I

    move-result v0

    array-length v1, p1

    const/16 v2, 0x8

    sub-int/2addr v1, v2

    if-eq v1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UE_Mode_Chk: VOPS data length is not right. Data length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", (array length) - 8: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length p1, p1

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", return."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getCallStatsInfo(I)Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    move v5, v4

    :cond_2
    :goto_0
    array-length v6, p1

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ge v2, v6, :cond_9

    aget-byte v6, p1, v2

    add-int/lit8 v2, v2, 0x1

    if-ne v6, v7, :cond_5

    array-length v6, p1

    sub-int/2addr v6, v7

    if-gt v2, v6, :cond_4

    aget-byte v3, p1, v2

    if-ne v3, v7, :cond_3

    goto :goto_1

    :cond_3
    move v7, v1

    :goto_1
    move v3, v7

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v8, 0x2

    if-ne v6, v8, :cond_7

    array-length v6, p1

    sub-int/2addr v6, v7

    if-gt v2, v6, :cond_4

    aget-byte v4, p1, v2

    if-ne v4, v7, :cond_6

    goto :goto_3

    :cond_6
    move v7, v1

    :goto_3
    move v4, v7

    goto :goto_2

    :cond_7
    const/4 v8, 0x3

    if-ne v6, v8, :cond_2

    array-length v6, p1

    sub-int/2addr v6, v7

    if-gt v2, v6, :cond_4

    aget-byte v5, p1, v2

    if-ne v5, v7, :cond_8

    goto :goto_4

    :cond_8
    move v7, v1

    :goto_4
    move v5, v7

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsTags_Chk: store VoLTE ImsTags related info, VopsStatus="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", ims_voice_status="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", is_srlte="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4, v5}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->storeImsInfo(ZZZ)V

    return-void
.end method

.method public handleTimeOnImsRegisterCheck()V
    .locals 4

    const-string v0, "handleTimeOnImsRegisterCheck for IMS deregisterred, timer expired"

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsRegistered:Z

    if-eqz v0, :cond_0

    const-string v0, "handleTimeOnImsRegisterCheck, IMS is registered currently"

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mNetworkType:I

    const/16 v1, 0xe

    const/16 v2, 0xd

    const/16 v3, 0x12

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Lcom/motorola/bach/modemstats/utils/Moto5gUtils;->is5gNSARat(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "handleTimeOnImsRegisterCheck, RAT is not IWLAN/LTE/eHRPD"

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mNetworkType:I

    if-ne v0, v3, :cond_2

    sget-object v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/motorola/bach/modemstats/utils/ImsUtils;->isVoWiFiSettingEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "handleTimeOnImsRegisterCheck, WFC is not enabled by user"

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    return-void

    :cond_2
    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_3

    invoke-static {v0}, Lcom/motorola/bach/modemstats/utils/Moto5gUtils;->is5gNSARat(I)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    sget-object v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/motorola/bach/modemstats/utils/ImsUtils;->isAdvancedCallingSettingEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "handleTimeOnImsRegisterCheck, VoLTE is not enabled by user on LTE/eHRPD"

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "handleTimeOnImsRegisterCheck, IMS Roaming not present on LTE/eHRPD"

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v0, "handleTimeOnImsRegisterCheck, trigger IMS-Register failure event."

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleTimeOnRatAlarm(Landroid/content/Intent;)V
    .locals 3

    const-string p1, "handleTimeOnRatAlarm, trigger TimeOnRat checkin event"

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result p1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v0, p1}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mapTelephonyNetworkTypeForCheckin(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceRadioTechnology:I

    invoke-virtual {p1, v0}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mapTelephonyNetworkTypeForCheckin(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mServiceState:I

    sget-object v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->timeSpentOnRAT(ILjava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRatSummary:Lcom/motorola/bach/modemstats/TimeOnRatSummary;

    sget-object p1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/TimeOnRatSummary;->checkin(Lcom/motorola/bach/modemstats/ModemStatsUtils;)V

    return-void
.end method

.method public handleTimeOnUeModeCheck()V
    .locals 6

    iget-boolean v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsUeInWrongMode:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "UE_Mode_Chk: UE is still in wrong operating mode after timer expiry"

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getCallStatsInfo(I)Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;

    move-result-object v0

    sget-object v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iget-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/motorola/bach/modemstats/utils/ImsUtils;->isAdvancedCallingSettingEnabled(Landroid/content/Context;I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getVopsStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsVolteProvisioned:Z

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iget-boolean v4, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsRegistered:Z

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isLte()Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x200

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-boolean v5, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsUeInWrongMode:Z

    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getIsSrlteMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getImsVoiceStatus()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string p0, "Expected = LTE only / Actual = SRLTE"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsUeInWrongMode:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getIsSrlteMode()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getImsVoiceStatus()Z

    move-result v2

    xor-int/2addr v1, v2

    if-eqz v1, :cond_6

    sget-object v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iget-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/motorola/bach/modemstats/utils/ImsUtils;->isAdvancedCallingSettingEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_4

    const-string p0, "UI setting disabled. Expected = SRLTE/ Actual = LTE only"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getVopsStatus()Z

    move-result v0

    if-nez v0, :cond_5

    const-string p0, "Non-VOPS Coverage. Expected = SRLTE/ Actual = LTE only"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    iget-boolean p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsVolteProvisioned:Z

    if-nez p0, :cond_6

    const-string p0, "Non-VoLTE Sim. Expected = SRLTE/ Actual = LTE only"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_1
    sget-object p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WRONG_OPERATING_MODE"

    invoke-virtual {p0, v1, v0, v3}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->addToDropbox(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_7
    return-void
.end method

.method public handleTimeOnVOLTEModeCheck()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UE_APModem_VOLTEEnabled_Chk: isLTE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isLte()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isApinWrongMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isLte()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "UE_APModem_VOLTEEnabled_Chk: AP Modem VOLTE Status mismatch after timer expiry"

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AP and Modem VOLTE Status Mismatch"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "WRONG_OPERATING_MODE"

    invoke-virtual {v0, v2, p0, v1}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->addToDropbox(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected hasRATChanged(I)Z
    .locals 0

    iget p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mNetworkType:I

    invoke-static {p0}, Lcom/motorola/bach/modemstats/utils/TelephonyUtils;->getNetworkClass(I)I

    move-result p0

    invoke-static {p1}, Lcom/motorola/bach/modemstats/utils/TelephonyUtils;->getNetworkClass(I)I

    move-result p1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected init()V
    .locals 3

    sget-object v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/motorola/bach/modemstats/ModemStatsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mAM:Landroid/media/AudioManager;

    sget-object v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/motorola/bach/modemstats/ModemStatsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mCM:Landroid/net/ConnectivityManager;

    sget-object v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    sget-boolean v0, Lcom/motorola/bach/modemstats/ConstantValue;->IS_BUILD_TYPE_ODM1:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/bach/modemstats/oemhook/MotoPhoneStateListener;

    sget-object v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iget-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Lcom/motorola/bach/modemstats/oemhook/MotoPhoneStateListener;-><init>(Lcom/motorola/bach/modemstats/ModemStatsService;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mMotoPhoneStateListener:Lcom/motorola/bach/modemstats/oemhook/MotoPhoneStateListener;

    new-instance v0, Lcom/motorola/bach/modemstats/oemhook/MotoTelephonyManagerHelper;

    sget-object v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iget-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Lcom/motorola/bach/modemstats/oemhook/MotoTelephonyManagerHelper;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTelMgrHelper:Lcom/motorola/bach/modemstats/oemhook/MotoTelephonyManagerHelper;

    new-instance v0, Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    sget-object v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iget-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mMotoTM:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    :cond_0
    :try_start_0
    new-instance v0, Landroid/telephony/ims/ImsManager;

    sget-object v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    invoke-direct {v0, v1}, Landroid/telephony/ims/ImsManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsMmTM:Landroid/telephony/ims/ImsMmTelManager;

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mProvisionManager:Landroid/telephony/ims/ProvisioningManager;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsMmTM:Landroid/telephony/ims/ImsMmTelManager;

    iput-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mProvisionManager:Landroid/telephony/ims/ProvisioningManager;

    const-string v0, "ProvisioningManager is not available"

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoice_Idle_Session_Start:J

    iput-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mData_Idle_Session_Start:J

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isImsRegistered()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsRegistered:Z

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mProvisionManager:Landroid/telephony/ims/ProvisioningManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningStatusForCapability(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsVolteProvisioned:Z

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mProvisionManager:Landroid/telephony/ims/ProvisioningManager;

    invoke-virtual {v0, v2, v2}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningStatusForCapability(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsWfcProvisioned:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mCallStatsInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0, v2, v2}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isEnabledByPlatform(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsVolteEnabledByPlatform:Z

    const/4 v0, 0x2

    invoke-direct {p0, v2, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isEnabledByPlatform(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsWfcEnabledByPlatform:Z

    invoke-direct {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->loadNormalCallDropList()V

    return-void
.end method

.method protected isAirplaneModeOn()Z
    .locals 2

    sget-object p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/ModemStatsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected isBluetoothScoOn()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mAM:Landroid/media/AudioManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isCDMATech()Z
    .locals 2

    sget-object p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->PROPERTY_DATA_NETWORK_TYPE:Ljava/lang/String;

    const-string v0, "unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "EvDo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "eHRPD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v0, "1xRTT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method protected isCallIndexValid(I)Z
    .locals 3

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is invalid."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method protected isCdmaCall(I)Z
    .locals 0

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/16 p0, 0xe

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    const/4 p0, 0x6

    if-eq p1, p0, :cond_1

    const/16 p0, 0xc

    if-eq p1, p0, :cond_1

    const/4 p0, 0x7

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method protected isEvdo()Z
    .locals 2

    sget-object p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->PROPERTY_DATA_NETWORK_TYPE:Ljava/lang/String;

    const-string v0, "unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "EvDo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "eHRPD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method protected isImsCall(II)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isVideoCall(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isImsVoiceCall(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isImsRegistrationRequired()Z
    .locals 1

    invoke-direct {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isVolteEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isWfcEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method protected isLte()Z
    .locals 1

    sget-object p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->PROPERTY_DATA_NETWORK_TYPE:Ljava/lang/String;

    const-string v0, "unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "LTE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected isNormalByCode(I)Z
    .locals 0

    const/16 p0, 0x1f6

    if-eq p1, p0, :cond_0

    const/16 p0, 0x647

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method protected isNormalByPreciseCause(Ljava/lang/String;)Z
    .locals 0

    const/16 p0, 0x12

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x13

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x427

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected isWfcEnabled()Z
    .locals 3

    iget-boolean v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsWfcProvisioned:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsWfcFeatureEnabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/motorola/bach/modemstats/utils/ImsUtils;->isVoWiFiSettingEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsWfcEnabledByPlatform:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const-string v1, "carrier_wfc_mdn_required_bool"

    invoke-direct {p0, v1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getCarrierConfigBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mMotoTM:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mProvisionManager:Landroid/telephony/ims/ProvisioningManager;

    const/16 v2, 0x48

    invoke-virtual {p0, v2}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningStringValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    and-int/2addr v0, p0

    :cond_3
    return v0
.end method

.method protected isWifiConnected()Z
    .locals 2

    iget-object p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public logCallDropEvent(Landroid/content/Intent;)V
    .locals 44

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "CALL_DROP"

    const-string v0, "incoming"

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v0, "index"

    const/4 v6, -0x1

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v0, "disconnected_time"

    const-wide/16 v8, 0x0

    invoke-virtual {v2, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    const-string v0, "duration"

    invoke-virtual {v2, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v0, "disconnected_cause"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v12, "disconnected_precise_cause"

    invoke-virtual {v2, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "disconnected_cause_additional"

    invoke-virtual {v2, v13}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/ims/ImsReasonInfo;

    const-string v8, "type"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "domain"

    invoke-virtual {v2, v9, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v6, "fallback"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v4, "create_time"

    move-object/from16 v22, v3

    move/from16 v21, v6

    move/from16 v20, v7

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v6, "wifi_ims_call"

    move-wide/from16 v23, v3

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "rat"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v4

    invoke-virtual {v1, v8, v9, v3}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getCallRAT(IIZ)I

    move-result v7

    move-object/from16 v25, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logCallDropEvent, isIncoming="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", disconnectTime="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", duration="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", cause="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", preciseCause="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", ims_cause="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", callType="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", callDomain="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", isFallbackCall="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v6, v21

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", isImsRegistered="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v6, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsRegistered:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", isWifiImsCall="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", createTime="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v26, v10

    move-wide/from16 v10, v23

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", index="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v6, v20

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ", channel="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v10, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v11, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v20, v3

    const/4 v3, 0x2

    invoke-virtual {v10, v7, v11, v3}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRadioChannel(III)I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ", band="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v10, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v11, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v7, v11, v3}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRadioBand(III)I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ", rat="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isCallIndexValid(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ANSWERED_ELSEWHERE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DECLINED_ELSEWHERE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1, v6}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getCallStatsInfo(I)Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getCallEndReason()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getClientEndCause()I

    move-result v11

    move/from16 v43, v11

    move-object v11, v10

    move/from16 v10, v43

    goto :goto_0

    :cond_1
    const/4 v10, -0x1

    const/4 v11, 0x0

    :goto_0
    sget-boolean v21, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v4, "1"

    const-string v24, "call.orig.failure.force"

    if-eqz v21, :cond_3

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v28, v0

    if-eqz v3, :cond_2

    const-string v0, "bCallOrigFailureForce: true, just for test."

    invoke-virtual {v1, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logi(Ljava/lang/String;)V

    if-nez v5, :cond_2

    const-wide/16 v26, 0x0

    move-object/from16 v43, v24

    move/from16 v24, v3

    move-object/from16 v3, v43

    goto :goto_1

    :cond_2
    move/from16 v24, v3

    move-object/from16 v3, v28

    goto :goto_1

    :cond_3
    move-object/from16 v28, v0

    move-object/from16 v3, v28

    const/16 v24, 0x0

    :goto_1
    const-string v0, "unspecified"

    if-lez v10, :cond_4

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v43, v28

    move-object/from16 v28, v0

    move-object/from16 v0, v43

    goto :goto_2

    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_5

    move-object/from16 v28, v0

    goto :goto_2

    :cond_5
    move-object/from16 v28, v0

    move-object v0, v3

    :goto_2
    move/from16 v29, v10

    if-eqz v13, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v13}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v10

    goto :goto_3

    :cond_6
    const/4 v10, -0x1

    :goto_3
    invoke-static {v3}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isNormalDisconnect(Ljava/lang/String;)Z

    move-result v30

    const-string v31, "off"

    move/from16 v32, v7

    const-string v7, "bt"

    move/from16 v33, v6

    const-string v6, "durn"

    const-wide/16 v34, 0x3e8

    move-object/from16 v36, v7

    const-string v7, "cause"

    move-object/from16 v37, v6

    const-string v6, "rtp_loss"

    move-object/from16 v38, v6

    const-string v6, "rtp_cnt"

    move-object/from16 v39, v6

    const-string v6, "v_stat"

    if-nez v30, :cond_22

    invoke-virtual {v1, v12}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isNormalByPreciseCause(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_22

    invoke-virtual {v1, v10}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isNormalByCode(I)Z

    move-result v10

    if-nez v10, :cond_22

    sget-object v10, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v10, v0}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->isNormalClearingByCinfo(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    move-object/from16 v4, p1

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v12, v33

    move-object/from16 v13, v36

    move-object/from16 v0, v37

    move-object/from16 v2, v38

    move-object/from16 v11, v39

    const/4 v10, 0x0

    goto/16 :goto_14

    :cond_7
    const-wide/16 v16, 0x0

    cmp-long v10, v26, v16

    const-string v12, ", Reason:"

    move-object/from16 v16, v2

    const/16 v2, 0x200

    if-nez v10, :cond_12

    if-nez v5, :cond_12

    const-string v0, "MO call failure"

    invoke-virtual {v1, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    :try_start_0
    new-instance v5, Lcom/motorola/android/provider/CheckinEvent;

    const-string v0, "CALL_PERF_STATS"

    const-string v17, "CALL_ORIG_FAILURE"

    const-string v18, "3.2"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v40, v29

    move-object v10, v5

    move-object/from16 v28, v11

    move-object v11, v0

    move-object/from16 v41, v12

    move-object/from16 v12, v17

    move-object/from16 v17, v13

    move-object/from16 v13, v18

    :try_start_1
    invoke-direct/range {v10 .. v15}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v13, p1

    :try_start_2
    invoke-virtual {v1, v5, v13}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->fillUpCallDropEvent(Lcom/motorola/android/provider/CheckinEvent;Landroid/content/Intent;)V

    invoke-static {v3}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->callOrigCause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getVOLTEStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v28, v11

    move-object/from16 v41, v12

    move-object/from16 v17, v13

    move/from16 v40, v29

    :goto_4
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    const-string v0, "callOrigFailure.Bug2Go"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "2"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_9

    :cond_8
    const/4 v0, 0x0

    goto :goto_8

    :cond_9
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_7
    move v0, v7

    goto :goto_8

    :cond_a
    invoke-virtual {v1, v8, v9}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isImsCall(II)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_7

    :goto_8
    if-eqz v24, :cond_b

    goto :goto_9

    :cond_b
    move v7, v0

    :goto_9
    if-eqz v7, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ims_registered:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsRegistered:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v41

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v12, v28

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    move/from16 v11, v40

    if-lez v11, :cond_d

    invoke-static {}, Lcom/motorola/bach/modemstats/ModemStatsErrorCode;->getInstance()Lcom/motorola/bach/modemstats/ModemStatsErrorCode;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/motorola/bach/modemstats/ModemStatsErrorCode;->getCallEndCauseFullText(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", cm_cause_code:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", FW-Cause:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    if-eqz v17, :cond_10

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    if-lez v2, :cond_f

    invoke-static {}, Lcom/motorola/bach/modemstats/ModemStatsErrorCode;->getInstance()Lcom/motorola/bach/modemstats/ModemStatsErrorCode;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/motorola/bach/modemstats/ModemStatsErrorCode;->getQmiErrorFullText(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", qcril_cause_code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_f
    if-nez v2, :cond_10

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", ImsReason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    :goto_a
    move/from16 v2, v20

    invoke-virtual {v1, v8, v9, v2}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getCallRAT(IIZ)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", Channel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v6, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v4, v2, v6, v7}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRadioChannel(III)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Band: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v6, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v2, v6, v7}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRadioBand(III)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CALL_ORIG_FAILURE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->addToDropbox(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v16, :cond_11

    move-object/from16 v10, v16

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->setCsFallbackFailureInfo(Ljava/lang/String;)V

    :cond_11
    sget-object v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v0, v5}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->logEvent(Lcom/motorola/android/provider/CheckinEvent;)V

    move/from16 v2, v33

    goto/16 :goto_1d

    :cond_12
    move-object v4, v12

    move-object/from16 v17, v13

    move-object/from16 v10, v16

    move-object/from16 v13, p1

    move-object v12, v11

    move/from16 v11, v29

    const-string v2, "log abnormal call drop"

    invoke-virtual {v1, v2}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    :try_start_3
    sget-object v2, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v2, v0}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->isCallDropNW(Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    const-string v2, "CALL_DROP_NW"

    if-eqz v0, :cond_13

    :try_start_4
    const-string v0, "3.0"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v20, v2

    move-object/from16 v22, v20

    goto :goto_c

    :catch_3
    move-exception v0

    move-object/from16 v41, v4

    move-object/from16 v24, v10

    move/from16 v42, v11

    move-object/from16 v28, v12

    move-object v4, v13

    move-object/from16 v20, v22

    :goto_b
    move/from16 v12, v33

    goto/16 :goto_10

    :cond_13
    :try_start_5
    const-string v0, "3.2"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    move-object/from16 v20, v22

    :goto_c
    :try_start_6
    new-instance v2, Lcom/motorola/android/provider/CheckinEvent;

    const-string v24, "CALL_PERF_STATS"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-object/from16 v41, v4

    move-object v4, v10

    move-object v10, v2

    move/from16 v42, v11

    move-object/from16 v11, v24

    move-object/from16 v28, v12

    move-object/from16 v12, v22

    move-object/from16 v24, v4

    move-object v4, v13

    move-object v13, v0

    :try_start_7
    invoke-direct/range {v10 .. v15}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :try_start_8
    invoke-virtual {v1, v2, v4}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->fillUpCallDropEvent(Lcom/motorola/android/provider/CheckinEvent;Landroid/content/Intent;)V

    div-long v10, v26, v34

    move-object/from16 v0, v37

    invoke-virtual {v2, v0, v10, v11}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;J)V

    invoke-static {v3}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->callDropCause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v31, "on"

    :cond_14
    move-object/from16 v0, v31

    move-object/from16 v13, v36

    invoke-virtual {v2, v13, v0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isImsCall(II)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    if-eqz v0, :cond_17

    move/from16 v12, v33

    :try_start_9
    invoke-virtual {v1, v12}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getCallStatsInfo(I)Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;

    move-result-object v0

    if-eqz v0, :cond_18

    iget v7, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRtpCnt:I

    const/4 v10, -0x1

    if-ne v7, v10, :cond_15

    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getRtpTotalCount()I

    move-result v7

    move-object/from16 v11, v39

    invoke-virtual {v2, v11, v7}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const/4 v7, -0x1

    goto :goto_d

    :cond_15
    move-object/from16 v11, v39

    invoke-virtual {v2, v11, v7}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const/4 v7, -0x1

    iput v7, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRtpCnt:I

    :goto_d
    iget v10, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRtpLoss:I

    if-ne v10, v7, :cond_16

    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getRtpLossCount()I

    move-result v7

    move-object/from16 v11, v38

    invoke-virtual {v2, v11, v7}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    goto :goto_e

    :cond_16
    move-object/from16 v11, v38

    invoke-virtual {v2, v11, v10}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const/4 v7, -0x1

    iput v7, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRtpLoss:I

    :goto_e
    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getSarState()I

    move-result v0

    invoke-virtual {v2, v6, v0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    goto :goto_f

    :catch_4
    move-exception v0

    goto :goto_11

    :cond_17
    move/from16 v12, v33

    :cond_18
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getVOLTEStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_12

    :catch_5
    move-exception v0

    move/from16 v12, v33

    goto :goto_11

    :catch_6
    move-exception v0

    goto/16 :goto_b

    :catch_7
    move-exception v0

    move-object/from16 v41, v4

    move-object/from16 v24, v10

    move/from16 v42, v11

    move-object/from16 v28, v12

    move-object v4, v13

    goto/16 :goto_b

    :catch_8
    move-exception v0

    move-object/from16 v41, v4

    move-object/from16 v24, v10

    move/from16 v42, v11

    move-object/from16 v28, v12

    move-object v4, v13

    move/from16 v12, v33

    move-object/from16 v20, v22

    :goto_10
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_12
    move-object/from16 v0, v20

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x200

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v8, v5, v12}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getCallTypeString(IZI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CallType:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    move-object/from16 v5, v25

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v24, :cond_1a

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->isCallOnWifi()Z

    move-result v5

    or-int/2addr v4, v5

    :cond_1a
    invoke-virtual {v1, v8, v9, v4}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getCallRATString(IIZ)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", RAT:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", ims_registered:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsRegistered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v41

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v10, v28

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    move/from16 v11, v42

    if-lez v11, :cond_1d

    invoke-static {}, Lcom/motorola/bach/modemstats/ModemStatsErrorCode;->getInstance()Lcom/motorola/bach/modemstats/ModemStatsErrorCode;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/motorola/bach/modemstats/ModemStatsErrorCode;->getCallEndCauseFullText(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", cm_cause_code:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", FW-Cause:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    if-eqz v17, :cond_20

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v3

    if-lez v3, :cond_1f

    invoke-static {}, Lcom/motorola/bach/modemstats/ModemStatsErrorCode;->getInstance()Lcom/motorola/bach/modemstats/ModemStatsErrorCode;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/motorola/bach/modemstats/ModemStatsErrorCode;->getQmiErrorFullText(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", qcril_cause_code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_1f
    if-nez v3, :cond_20

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", ImsReason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    :goto_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", Channel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v5, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v7, v32

    const/4 v8, 0x2

    invoke-virtual {v4, v7, v5, v8}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRadioChannel(III)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", Band: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v5, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v7, v5, v8}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRadioBand(III)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v5}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->addToDropbox(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v24, :cond_21

    move-object/from16 v3, v24

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->setCsFallbackFailureInfo(Ljava/lang/String;)V

    :cond_21
    sget-object v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v0, v2}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->logEvent(Lcom/motorola/android/provider/CheckinEvent;)V

    goto :goto_15

    :cond_22
    move-object/from16 v4, p1

    move/from16 v12, v33

    move-object/from16 v13, v36

    move-object/from16 v0, v37

    move-object/from16 v2, v38

    move-object/from16 v11, v39

    const/4 v10, 0x0

    move/from16 v19, v8

    move/from16 v20, v9

    :goto_14
    div-long v8, v26, v34

    const-wide/16 v16, 0x0

    cmp-long v16, v8, v16

    if-gtz v16, :cond_24

    if-eqz v5, :cond_23

    goto :goto_16

    :cond_23
    :goto_15
    move v2, v12

    goto/16 :goto_1d

    :cond_24
    :goto_16
    const-string v5, "log normal call drop"

    invoke-virtual {v1, v5}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    :try_start_a
    new-instance v5, Lcom/motorola/android/provider/CheckinEvent;

    const-string v16, "CALL_PERF_STATS"

    const-string v17, "CALL_PERF_STATS_SUCCESS"

    const-string v21, "3.1"
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    move-object/from16 v22, v10

    move-object v10, v5

    move-object/from16 v23, v6

    move-object v6, v11

    move-object/from16 v11, v16

    move-object/from16 v38, v2

    move v2, v12

    move-object/from16 v12, v17

    move-object/from16 v39, v6

    move-object v6, v13

    move-object/from16 v13, v21

    :try_start_b
    invoke-direct/range {v10 .. v15}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    :try_start_c
    invoke-virtual {v1, v5, v4}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->fillUpCallDropEvent(Lcom/motorola/android/provider/CheckinEvent;Landroid/content/Intent;)V

    invoke-virtual {v5, v0, v8, v9}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v31, "on"

    :cond_25
    move-object/from16 v0, v31

    invoke-virtual {v5, v6, v0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "svc_stat"

    iget v4, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mServiceState:I

    invoke-static {v4}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->serviceStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    move-object/from16 v3, v28

    :cond_26
    invoke-virtual {v5, v7, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v1, v3, v4}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isImsCall(II)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {v1, v2}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getCallStatsInfo(I)Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;

    move-result-object v0

    if-eqz v0, :cond_29

    iget v3, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRtpCnt:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_27

    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getRtpTotalCount()I

    move-result v3

    move-object/from16 v4, v39

    invoke-virtual {v5, v4, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const/4 v3, -0x1

    goto :goto_17

    :cond_27
    move-object/from16 v4, v39

    invoke-virtual {v5, v4, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const/4 v3, -0x1

    iput v3, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRtpCnt:I

    :goto_17
    iget v4, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRtpLoss:I

    if-ne v4, v3, :cond_28

    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getRtpLossCount()I

    move-result v3

    move-object/from16 v6, v38

    invoke-virtual {v5, v6, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    goto :goto_18

    :cond_28
    move-object/from16 v6, v38

    invoke-virtual {v5, v6, v4}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const/4 v3, -0x1

    iput v3, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRtpLoss:I

    :goto_18
    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getSarState()I

    move-result v0

    move-object/from16 v3, v23

    invoke-virtual {v5, v3, v0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    goto :goto_19

    :cond_29
    move-object/from16 v3, v23

    :goto_19
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getVOLTEStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_1c

    :catch_9
    move-exception v0

    move-object v4, v5

    goto :goto_1b

    :catch_a
    move-exception v0

    goto :goto_1a

    :catch_b
    move-exception v0

    move-object/from16 v22, v10

    move v2, v12

    :goto_1a
    move-object/from16 v4, v22

    :goto_1b
    const-string v3, "log normal call drop error"

    invoke-virtual {v1, v3}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->loge(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v4

    :goto_1c
    const-string v0, "log normal call drop logEvent start"

    invoke-virtual {v1, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v0, v5}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->logEvent(Lcom/motorola/android/provider/CheckinEvent;)V

    const-string v0, "log normal call drop logEvent end"

    invoke-virtual {v1, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    :goto_1d
    invoke-virtual {v1, v2}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->clearCallStatsInfo(I)V

    return-void
.end method

.method public logCallHandoverEvent(Landroid/content/Intent;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "rat"

    const-string v3, "duration"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-string v3, "cause"

    const/4 v14, -0x1

    invoke-virtual {v1, v3, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    const-string v8, "index"

    invoke-virtual {v1, v8, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "status"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_0

    move v9, v11

    goto :goto_0

    :cond_0
    move v9, v10

    :goto_0
    const-string v14, "srcTech"

    invoke-virtual {v1, v14, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const-string v11, "targetTech"

    invoke-virtual {v1, v11, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "logCallHandoverEvent, cause="

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", srcTech="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", targetTech="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", bSuccess="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", index="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", duration="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", channel="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget v4, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mNetworkType:I

    iget-object v5, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v18, v2

    const/4 v2, 0x2

    invoke-virtual {v11, v4, v5, v2}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRadioChannel(III)I

    move-result v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", band="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget v10, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mNetworkType:I

    iget-object v11, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v5, v10, v11, v2}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRadioBand(III)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-gtz v4, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logCallHandoverEvent: calling duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid, return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0, v8}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isCallIndexValid(I)Z

    move-result v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0, v8}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getCallStatsInfo(I)Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;

    move-result-object v4

    if-nez v4, :cond_3

    return-void

    :cond_3
    const/16 v5, 0x12

    if-ne v5, v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v9, :cond_5

    if-eqz v1, :cond_5

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->setCallOnWifi(Z)V

    :cond_5
    :try_start_0
    new-instance v11, Lcom/motorola/android/provider/CheckinEvent;

    const-string v10, "CALL_PERF_STATS"

    const-string v16, "VT_HANDOVER"

    const-string v17, "2.3"

    move-object v8, v11

    move v5, v9

    move-object v9, v10

    move-object/from16 v10, v16

    move-object v2, v11

    move-object/from16 v11, v17

    invoke-direct/range {v8 .. v13}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v8, "to_wifi"

    invoke-virtual {v2, v8, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Z)V

    const-string v1, "rssi"

    iget v8, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRssi:I

    invoke-virtual {v2, v1, v8}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v1, "ecio"

    iget v8, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mEcio:I

    invoke-virtual {v2, v1, v8}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v1, "wifi_rssi"

    sget-object v8, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v8}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentWifiRssi()I

    move-result v8

    invoke-virtual {v2, v1, v8}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v1, "is_scs"

    invoke-virtual {v2, v1, v5}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3, v15}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    invoke-static {v14}, Lcom/motorola/bach/modemstats/utils/TelephonyUtils;->ratToString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v18

    invoke-virtual {v2, v3, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uid"

    invoke-virtual {v4}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getCallingUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "durn"

    const-wide/16 v4, 0x3e8

    div-long/2addr v6, v4

    invoke-virtual {v2, v1, v6, v7}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;J)V

    const-string v1, "ims_reg"

    iget-boolean v4, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mImsRegistered:Z

    invoke-virtual {v2, v1, v4}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Z)V

    const-string v1, "wifi_st"

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isWifiConnected()Z

    move-result v4

    invoke-virtual {v2, v1, v4}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Z)V

    const-string v1, "roam"

    iget-object v4, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    invoke-virtual {v2, v1, v4}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Z)V

    const-string v1, "sinr"

    sget v4, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mSinr:I

    invoke-virtual {v2, v1, v4}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    sget-object v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget v4, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mNetworkType:I

    iget-object v5, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v1, v4, v5, v6}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRadioBand(III)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, -0x4

    const-string v5, "channel"

    const-string v6, "band"

    if-eq v1, v4, :cond_7

    const/4 v4, -0x2

    if-eq v1, v4, :cond_6

    :try_start_2
    invoke-virtual {v2, v6, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    sget-object v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget v4, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mNetworkType:I

    iget-object v6, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v1, v4, v6, v7}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRadioChannel(III)I

    move-result v1

    invoke-virtual {v2, v5, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    invoke-static {v14}, Lcom/motorola/bach/modemstats/utils/TelephonyUtils;->ratToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    sget-object v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v4, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, 0x2

    invoke-virtual {v1, v4, v7}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRatfromBandInfo(II)I

    move-result v1

    invoke-static {v1}, Lcom/motorola/bach/modemstats/utils/TelephonyUtils;->ratToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v3, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRadioBand(II)I

    move-result v1

    invoke-virtual {v2, v6, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    sget-object v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v3, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3, v4}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRadioChannel(II)I

    move-result v1

    invoke-virtual {v2, v5, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v6, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const/4 v1, -0x1

    invoke-virtual {v2, v5, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    invoke-static {v14}, Lcom/motorola/bach/modemstats/utils/TelephonyUtils;->ratToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string v1, "plmn"

    sget-object v3, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v0, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v11, v2

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v5, v2

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v11, v5

    :goto_4
    sget-object v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v0, v11}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->logEvent(Lcom/motorola/android/provider/CheckinEvent;)V

    return-void
.end method

.method public logMmwHWStatusInd(I)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logMmwHWStatusInd, data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", current rat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mNetworkType:I

    invoke-static {v1}, Lcom/motorola/bach/modemstats/utils/TelephonyUtils;->ratToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_0
    new-instance v6, Lcom/motorola/android/provider/CheckinEvent;

    const-string v1, "CALL_PERF_STATS"

    const-string v2, "MODEM_HEALTH_IND"

    const-string v3, "1.0"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p0, "hw_st"

    invoke-virtual {v6, p0, p1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v6, p0

    move-object p0, p1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    sget-object p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {p0, v6}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->logEvent(Lcom/motorola/android/provider/CheckinEvent;)V

    return-void
.end method

.method public logOutOfServiceEvent()V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logOutOfServiceEvent, cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->mCause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-wide v2, v2, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->mStart:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const/4 v2, 0x0

    :try_start_0
    new-instance v9, Lcom/motorola/android/provider/CheckinEvent;

    const-string v4, "MOT_OUT_OF_SERVICE"

    const-string v5, "OUT_OF_SERV"

    const-string v6, "2.3"

    iget-object v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-wide v7, v3, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->mTime:J

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "duration"

    invoke-virtual {v9, v2, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;J)V

    const-string v0, "cause"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->mCause:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "unspecified"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->mCause:Ljava/lang/String;

    :goto_0
    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sim_operator"

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mCellId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_PRODUCTION_DEVICE:Z

    if-nez v0, :cond_1

    const-string v0, "cell_id"

    sget-object v1, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mCellId:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v0, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    if-eqz v0, :cond_2

    const-string v0, "rat"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->rat:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "num_rlf"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->numOfRlf:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "rlf_cause"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->rlfCause:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "num_oos"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->numOfOos:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "oos_cause"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->oosCause:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "num_regfl"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->numOfRegFailure:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "reg_cause"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->regFailureCause:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "reg_event"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->regFailureEvent:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "s1cap_stat"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->s1CapabilityStatus:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "s1dis_rea"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->s1DisableReason:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "s1volte_et"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->s1VolteEvent:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "n1cap_stat"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->n1CapabilityStatus:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "n1dis_rea"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->n1DisableReason:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "n1volte_et"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->n1VolteEvent:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "tx_power"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->txPower:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "rsrp_avg"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->rsrpAvg:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "rsrp_rx0"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->rsrpRx0:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "rsrp_rx1"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->rsrpRx1:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "rsrp_rx2"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->rsrpRx2:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "rsrp_rx3"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->rsrpRx3:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "rsrq"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->rsrq:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "sinr"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->snrAvg:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "sinr_rx0"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->snrRx0:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "sinr_rx1"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->snrRx1:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "sinr_rx2"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->snrRx2:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "sinr_rx3"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->snrRx3:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "band"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->band:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "pci"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->pci:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "arfcn"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->arfcn:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "tx_asdiv"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->txAsdiv:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "cell_gp_t"

    iget-object p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget p0, p0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->cellGroupType:I

    invoke-virtual {v9, v0, p0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v2, v9

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v9, v2

    :cond_2
    :goto_2
    sget-object p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {p0, v9}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->logEvent(Lcom/motorola/android/provider/CheckinEvent;)V

    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "MPhoneStateListener"

    invoke-static {v0, p0, p1}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "MPhoneStateListener"

    invoke-static {v0, p0, p1}, Lcom/motorola/bach/modemstats/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected logi(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "MPhoneStateListener"

    invoke-static {v0, p0, p1}, Lcom/motorola/bach/modemstats/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "MPhoneStateListener"

    invoke-static {v0, p0, p1}, Lcom/motorola/bach/modemstats/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected logw(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "MPhoneStateListener"

    invoke-static {v0, p0, p1}, Lcom/motorola/bach/modemstats/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 8

    const-string v0, "onCallStateChanged"

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " incomingnumber is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    const-string p2, ""

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isUSC()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isSVLTE()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataStallManager:Lcom/motorola/bach/modemstats/datastall/MDataStallManager;

    iget-object p1, p1, Lcom/motorola/bach/modemstats/datastall/MDataStallManager;->mDataStallInstance:Lcom/motorola/bach/modemstats/datastall/DataStallBase;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataStallManager:Lcom/motorola/bach/modemstats/datastall/MDataStallManager;

    iget-object p1, p1, Lcom/motorola/bach/modemstats/datastall/MDataStallManager;->mDataStallInstance:Lcom/motorola/bach/modemstats/datastall/DataStallBase;

    invoke-virtual {p1}, Lcom/motorola/bach/modemstats/datastall/DataStallBase;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v4, "LinkLost"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "for non-svlte USC Nw, stop MT caused data stall"

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    sget-object p1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataStallManager:Lcom/motorola/bach/modemstats/datastall/MDataStallManager;

    invoke-virtual {p1}, Lcom/motorola/bach/modemstats/datastall/MDataStallManager;->stopDataStall()V

    :cond_1
    iget-boolean p1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceCallActive:Z

    if-nez p1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoice_Idle_Session_Start:J

    sub-long/2addr v4, v6

    div-long/2addr v4, v0

    iget-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIdle_Voice_Duration:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIdle_Voice_Duration:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoice_Active_Session_Start:J

    invoke-virtual {p0, v3}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->setVoiceCallActive(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Idle_Voice_Duration="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIdle_Voice_Duration:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    :cond_2
    const-string p1, "EVT_TYPE_CALL_START"

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    sget-object p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    const-string p1, "CALL_START"

    invoke-virtual {p0, p1, p2, v2}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->addToDropbox(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceCallActive:Z

    if-eqz p1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoice_Active_Session_Start:J

    sub-long/2addr v3, v5

    div-long/2addr v3, v0

    iget-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mActive_Voice_Duration:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mActive_Voice_Duration:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoice_Idle_Session_Start:J

    invoke-virtual {p0, v2}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->setVoiceCallActive(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Active_Voice_Duration="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mActive_Voice_Duration:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    :cond_4
    const-string p1, "EVT_TYPE_CALL_END"

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    sget-object p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    const-string p1, "CALL_END"

    invoke-virtual {p0, p1, p2, v2}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->addToDropbox(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onDataActivity(I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataActivity, direction is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataDirection:I

    if-eq v0, v2, :cond_0

    if-eq v0, v3, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataActivity, data isn\'t connected yet, direction -> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_5

    const/4 v0, 0x4

    if-eq p1, v2, :cond_2

    if-eq p1, v3, :cond_2

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_5

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataDirection:I

    if-eqz v1, :cond_3

    if-ne v1, v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->stopIdleDataSession()V

    :cond_4
    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->startActiveDataSession()V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataDirection:I

    if-eq v0, v2, :cond_6

    if-eq v0, v3, :cond_6

    if-ne v0, v1, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->stopActiveDataSession()V

    :cond_7
    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->startIdleDataSession()V

    :goto_0
    iput p1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataDirection:I

    return-void
.end method

.method public onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V

    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayInfoChanged, telephonyDisplayInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    const/4 p1, -0x1

    const/4 v1, 0x3

    if-eq v1, v0, :cond_1

    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v1, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const/16 v1, 0x15

    :goto_1
    sget-object v2, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iget-object v3, p0, Landroid/telephony/PhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/motorola/bach/modemstats/ModemStatsService;->handleNrBearerAllocationChanged(IZ)V

    if-ne v1, p1, :cond_2

    new-instance p1, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;

    invoke-direct {p1}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;-><init>()V

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mapTelephonyRatType(I)I

    move-result v1

    :cond_2
    new-instance p1, Landroid/telephony/ServiceState;

    invoke-direct {p1}, Landroid/telephony/ServiceState;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getChannelNumber()I

    move-result p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mMotoTM:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    if-nez v2, :cond_3

    const-string v2, ""

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getBandInfo(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    new-instance v3, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;

    iget-object v4, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v1, v2, p1, v4}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v1, v0}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->addRadioBandInfo(Ljava/util/ArrayList;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisplayInfoChanged arfcn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " band:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onOemHookRawEvent([B)V
    .locals 2

    const-string v0, "onOemHookRawEvent"

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logv(Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iget-object p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/motorola/bach/modemstats/ModemStatsService;->handleOemHook(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "MPhoneStateListener"

    const-string v1, "handleOemHook error!"

    invoke-static {v0, p0, v1, p1}, Lcom/motorola/bach/modemstats/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/telephony/ServiceState;

    invoke-direct {v2, v1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v2, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mServiceStateCopy:Landroid/telephony/ServiceState;

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    sget-object v4, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    invoke-static {v4}, Lcom/motorola/bach/modemstats/utils/TelephonyUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v4

    iget-object v5, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v5

    iget-object v6, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v6

    sget-object v7, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v8, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v8, v6}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mapTelephonyNetworkTypeForCheckin(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getChannelNumber()I

    move-result v9

    iget-object v10, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mMotoTM:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    const-string v11, ""

    if-nez v10, :cond_0

    move-object v10, v11

    goto :goto_0

    :cond_0
    iget-object v12, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getBandInfo(I)Ljava/lang/String;

    move-result-object v10

    :goto_0
    new-instance v12, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;

    invoke-direct {v12}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;-><init>()V

    invoke-virtual {v12, v4}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mapTelephonyRatType(I)I

    move-result v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onServiceStateChanged mSubId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " plmn: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " state: {old: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mServiceState:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", new: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v16, v8

    const-string v8, "}  data: {old: "

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v14, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataServiceState:I

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, "}  rat: {old: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v14, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mNetworkType:I

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, "} "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move/from16 v17, v9

    const/16 v9, 0x12

    if-ne v4, v9, :cond_1

    iget-object v13, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mapTelephonyRatType(I)I

    move-result v13

    const/16 v12, 0xa

    if-ne v13, v12, :cond_1

    const-string v10, "onServiceStateChanged Voice and Data on WLAN."

    invoke-virtual {v0, v10}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    const/4 v10, -0x1

    goto :goto_1

    :cond_1
    move-object v11, v10

    move/from16 v10, v17

    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onServiceStateChanged: ["

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "] RadioBandInfo: rat: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " band: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " arfcn: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    new-instance v9, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;

    iget-object v12, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v9, v13, v11, v10, v12}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v9

    const/16 v12, 0x13

    const/16 v13, 0xd

    if-lez v9, :cond_3

    if-eq v4, v12, :cond_2

    if-ne v4, v13, :cond_3

    :cond_2
    const-string v9, "onServiceStateChanged: NetworkType NSA"

    invoke-virtual {v0, v9}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    new-instance v9, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;

    const/16 v18, 0x15

    iget-object v13, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v21

    const/16 v22, 0x1

    move-object/from16 v17, v9

    move-object/from16 v19, v11

    move/from16 v20, v10

    invoke-direct/range {v17 .. v22}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;-><init>(ILjava/lang/String;III)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/16 v9, 0x12

    if-ne v4, v9, :cond_4

    iget-object v10, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v10

    if-ne v10, v9, :cond_4

    const-string v8, "onServiceStateChanged Voice and Data on WLAN. Not updating the cellular band info storage."

    invoke-virtual {v0, v8}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    sget-object v9, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v9, v8}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->addRadioBandInfo(Ljava/util/ArrayList;)V

    :goto_2
    const/4 v8, 0x0

    if-eqz v2, :cond_6

    iget-object v9, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->isVolteAvailable()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v1, v8}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onServiceStateChanged volte serviceState="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    :goto_3
    move v2, v8

    goto :goto_4

    :cond_5
    iget-object v9, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->isWifiCallingAvailable()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v1, v8}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onServiceStateChanged vowifi serviceState="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v9

    iget v10, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceRadioTechnology:I

    if-eq v9, v10, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onServiceStateChanged: voiceRadioTechnology {old: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceRadioTechnology:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    sget-object v10, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    invoke-static {v10}, Lcom/motorola/bach/modemstats/call/MCallManager;->getInstance(Landroid/content/Context;)Lcom/motorola/bach/modemstats/call/MCallManager;

    move-result-object v10

    iget-object v11, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iget-object v8, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v8

    invoke-virtual {v10, v11, v12, v13, v8}, Lcom/motorola/bach/modemstats/call/MCallManager;->updateDurationRat(IJI)V

    iput v9, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceRadioTechnology:I

    :cond_7
    const/16 v8, 0x12

    if-ne v6, v8, :cond_8

    sget-object v6, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v6, v9}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mapRilNetworkTypeForCheckin(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_8
    move-object/from16 v8, v16

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v6

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-eq v6, v9, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v6

    if-ne v6, v10, :cond_b

    :cond_9
    const/16 v6, 0x13

    if-eq v5, v6, :cond_a

    const/16 v6, 0xd

    if-ne v5, v6, :cond_b

    :cond_a
    const-string v8, "5GN"

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    iget v5, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataRadioTechnology:I

    if-eq v1, v5, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onServiceStateChanged: dataRadioTechnology {old:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataRadioTechnology:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    iput v1, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataRadioTechnology:I

    :cond_c
    iget v1, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mNetworkType:I

    if-ne v4, v1, :cond_d

    iget v1, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataServiceState:I

    if-eq v3, v1, :cond_e

    :cond_d
    invoke-virtual {v0, v4, v3}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->checkImsRegistrationState(II)V

    :cond_e
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v8, v7, v1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->timeSpentOnRAT(ILjava/lang/String;Ljava/lang/String;Z)V

    iget v1, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mNetworkType:I

    if-eq v4, v1, :cond_f

    iput v1, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mOldNetworkType:I

    iput v4, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mNetworkType:I

    :cond_f
    iget v1, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mServiceState:I

    if-nez v1, :cond_10

    if-eqz v2, :cond_10

    if-eq v2, v10, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->startVoiceOutOfService()V

    goto :goto_6

    :cond_10
    if-eqz v1, :cond_11

    if-nez v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->stopVoiceOutOfServiceAndLogEvent()V

    :cond_11
    :goto_6
    iget v1, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataServiceState:I

    if-nez v1, :cond_12

    if-eqz v3, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->startDataOutOfService()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataActivity:Z

    goto :goto_7

    :cond_12
    if-eqz v1, :cond_13

    if-nez v3, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->stopDataOutOfService()V

    :cond_13
    :goto_7
    iput v2, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mServiceState:I

    iput v3, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataServiceState:I

    sget-object v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iget v2, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mNetworkType:I

    iput v2, v1, Lcom/motorola/bach/modemstats/ModemStatsService;->mNetworkType:I

    sget-object v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iget v2, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mOldNetworkType:I

    iput v2, v1, Lcom/motorola/bach/modemstats/ModemStatsService;->mOldNetworkType:I

    sget-object v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iget v2, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mServiceState:I

    iput v2, v1, Lcom/motorola/bach/modemstats/ModemStatsService;->mServiceState:I

    iget v1, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataServiceState:I

    sput v1, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mDataServiceState:I

    sget-boolean v1, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mLteCamped:Z

    if-nez v1, :cond_14

    iget v1, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataServiceState:I

    if-nez v1, :cond_14

    iget v1, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mNetworkType:I

    const/16 v2, 0xd

    if-ne v2, v1, :cond_14

    const/4 v1, 0x1

    sput-boolean v1, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mLteCamped:Z

    :cond_14
    sget-object v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataStallManager:Lcom/motorola/bach/modemstats/datastall/MDataStallManager;

    iget v0, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mNetworkType:I

    iput v0, v1, Lcom/motorola/bach/modemstats/datastall/MDataStallManager;->mNetworkType:I

    sget-object v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataStallManager:Lcom/motorola/bach/modemstats/datastall/MDataStallManager;

    iget-object v0, v0, Lcom/motorola/bach/modemstats/datastall/MDataStallManager;->mDataStallInstance:Lcom/motorola/bach/modemstats/datastall/DataStallBase;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataStallManager:Lcom/motorola/bach/modemstats/datastall/MDataStallManager;

    iget-object v0, v0, Lcom/motorola/bach/modemstats/datastall/MDataStallManager;->mDataStallInstance:Lcom/motorola/bach/modemstats/datastall/DataStallBase;

    invoke-virtual {v0, v3, v4}, Lcom/motorola/bach/modemstats/datastall/DataStallBase;->onServiceStateChanged(II)V

    :cond_15
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 6

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataRadioTechnology:I

    const/16 v2, 0xe

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const v2, 0x7fffffff

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isLte()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteSignalStrength()I

    move-result v0

    if-eq v2, v0, :cond_2

    iput v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRssi:I

    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v1

    if-eq v2, v1, :cond_3

    iput v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mEcio:I

    :cond_3
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRssnr()I

    move-result v3

    if-eq v2, v3, :cond_4

    iput v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSnr:I

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LTE mRssi="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mRsrq="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRssnr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v0

    if-eq v2, v0, :cond_6

    iput v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRssi:I

    :cond_6
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmBitErrorRate()I

    move-result v3

    if-eq v2, v3, :cond_7

    iput v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mEcio:I

    :cond_7
    iput v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSnr:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSM mRssi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGsmBitErrorRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isEvdo()Z

    move-result v0

    const-string v3, ", mEcio="

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    if-eq v2, v0, :cond_9

    iput v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRssi:I

    :cond_9
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v1

    if-eq v2, v1, :cond_a

    iput v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mEcio:I

    :cond_a
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v4

    if-eq v2, v4, :cond_b

    iput v4, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSnr:I

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVDO mRssi="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSnr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    if-eq v2, v0, :cond_d

    iput v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRssi:I

    :cond_d
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v4

    if-eq v2, v4, :cond_e

    iput v4, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mEcio:I

    :cond_e
    iput v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSnr:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CDMA mRssi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    :goto_2
    iget v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRssi:I

    sput v0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mRssi:I

    iget v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mEcio:I

    sput v0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mEcio:I

    invoke-static {p1}, Lcom/motorola/bach/modemstats/utils/TelephonyUtils;->getRsrpFromSignalStrength(Landroid/telephony/SignalStrength;)Lcom/motorola/bach/modemstats/utils/TelephonyUtils$SignalStrengthParam;

    move-result-object p1

    new-instance v0, Lcom/motorola/bach/modemstats/call/SimBean;

    invoke-direct {v0}, Lcom/motorola/bach/modemstats/call/SimBean;-><init>()V

    iput-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSimBean:Lcom/motorola/bach/modemstats/call/SimBean;

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/motorola/bach/modemstats/call/SimBean;->subId:I

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSimBean:Lcom/motorola/bach/modemstats/call/SimBean;

    iget v1, p1, Lcom/motorola/bach/modemstats/utils/TelephonyUtils$SignalStrengthParam;->mRsrp:I

    iput v1, v0, Lcom/motorola/bach/modemstats/call/SimBean;->rsrp:I

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSimBean:Lcom/motorola/bach/modemstats/call/SimBean;

    iget v1, p1, Lcom/motorola/bach/modemstats/utils/TelephonyUtils$SignalStrengthParam;->mRsrq:I

    iput v1, v0, Lcom/motorola/bach/modemstats/call/SimBean;->rsrq:I

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSimBean:Lcom/motorola/bach/modemstats/call/SimBean;

    iget v1, p1, Lcom/motorola/bach/modemstats/utils/TelephonyUtils$SignalStrengthParam;->mSinr:I

    iput v1, v0, Lcom/motorola/bach/modemstats/call/SimBean;->sinr:I

    iget v0, p1, Lcom/motorola/bach/modemstats/utils/TelephonyUtils$SignalStrengthParam;->mRsrp:I

    sput v0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mRsrp:I

    iget v0, p1, Lcom/motorola/bach/modemstats/utils/TelephonyUtils$SignalStrengthParam;->mRsrq:I

    sput v0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mRsrq:I

    iget p1, p1, Lcom/motorola/bach/modemstats/utils/TelephonyUtils$SignalStrengthParam;->mSinr:I

    sput p1, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mSinr:I

    sget-object p1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataStallManager:Lcom/motorola/bach/modemstats/datastall/MDataStallManager;

    iget-object p1, p1, Lcom/motorola/bach/modemstats/datastall/MDataStallManager;->mDataStallInstance:Lcom/motorola/bach/modemstats/datastall/DataStallBase;

    if-eqz p1, :cond_f

    sget-object p1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataStallManager:Lcom/motorola/bach/modemstats/datastall/MDataStallManager;

    iget-object p1, p1, Lcom/motorola/bach/modemstats/datastall/MDataStallManager;->mDataStallInstance:Lcom/motorola/bach/modemstats/datastall/DataStallBase;

    iget p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRssi:I

    invoke-virtual {p1, p0}, Lcom/motorola/bach/modemstats/datastall/DataStallBase;->onSignalStrengthChanged(I)V

    :cond_f
    return-void
.end method

.method public register()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register, subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/bach/modemstats/utils/CommonUtils;->isQcomPlatform()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x1081a1

    goto :goto_0

    :cond_0
    const v0, 0x81a1

    :goto_0
    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    sget-boolean v0, Lcom/motorola/bach/modemstats/ConstantValue;->IS_BUILD_TYPE_ODM1:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTelMgrHelper:Lcom/motorola/bach/modemstats/oemhook/MotoTelephonyManagerHelper;

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mMotoPhoneStateListener:Lcom/motorola/bach/modemstats/oemhook/MotoPhoneStateListener;

    invoke-virtual {v0, v1}, Lcom/motorola/bach/modemstats/oemhook/MotoTelephonyManagerHelper;->register(Lcom/motorola/bach/modemstats/oemhook/MotoPhoneStateListener;)V

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.ims.IMS_SERVICE_UP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iget-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Lcom/motorola/bach/modemstats/ModemStatsService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->registerImsCallback()V

    return-void
.end method

.method protected requestCallEndRadioState(IZ)V
    .locals 0

    const-string p1, "requestCallEndRadioState: Not Sending RIL request to Modem"

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    return-void
.end method

.method protected setSimBean(Lcom/motorola/bach/modemstats/call/SimBean;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSimBean:Lcom/motorola/bach/modemstats/call/SimBean;

    return-void
.end method

.method protected setVoiceCallActive(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceCallActive:Z

    iget-object p1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isSVLTE()Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mNetworkType:I

    iget v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataServiceState:I

    invoke-virtual {p0, p1, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->checkImsRegistrationState(II)V

    :cond_1
    return-void
.end method

.method protected startActiveDataSession()V
    .locals 4

    iget-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mData_Active_Session_Start:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mData_Active_Session_Start:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataActivity, startActiveDataSession at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mData_Active_Session_Start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected startDataOutOfService()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->onDataServiceChanged(Z)V

    return-void
.end method

.method protected startIdleDataSession()V
    .locals 4

    iget-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mData_Idle_Session_Start:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mData_Idle_Session_Start:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataActivity, startIdleDataSession at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mData_Idle_Session_Start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected startRatSession()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mActive_duration:J

    iput-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIdle_duration:J

    iput-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mData_Active_Session_Start:J

    iput-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mData_Idle_Session_Start:J

    iput-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mActive_Voice_Duration:J

    iput-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIdle_Voice_Duration:J

    iput-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoice_Active_Session_Start:J

    iput-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoice_Idle_Session_Start:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataDirection:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mStartTimeRatChange:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeOnRAT, startRatSession at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mStartTimeRatChange:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    return-void
.end method

.method protected startVoiceOutOfService()V
    .locals 6

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isWfcEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "startVoiceOutOfService skip"

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    const/4 v1, 0x0

    if-nez v0, :cond_5

    new-instance v0, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    invoke-direct {v0, p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;-><init>(Lcom/motorola/bach/modemstats/MPhoneStateListener;)V

    iput-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->mTime:J

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->mStart:J

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    const-string v2, "unspecified"

    iput-object v2, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->mCause:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-wide v3, v3, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->mTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",sim_slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getSimSlot()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",sim_operator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mMotoTM:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getOosInfos(I)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iput-object v2, v3, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    const-string v3, ",rat: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->rat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",arfcn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->arfcn:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",pci: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->pci:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",band: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->band:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",rsrp_avg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->rsrpAvg:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",rsrp_rx0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->rsrpRx0:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",rsrp_rx1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->rsrpRx1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",rsrp_rx2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->rsrpRx2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",rsrp_rx3: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->rsrpRx3:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",rsrq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->rsrq:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",sinr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->snrAvg:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",num_oos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->numOfOos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",oos_cause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->oosCause:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",num_regfl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->numOfRegFailure:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",reg_event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->regFailureEvent:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",reg_cause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->regFailureCause:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",num_rlf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->numOfRlf:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",rlf_cause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->rlfCause:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",s1dis_rea: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->s1DisableReason:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",s1volte_et: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->s1VolteEvent:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",n1dis_rea: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->n1DisableReason:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",n1volte_et: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->n1VolteEvent:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->regFailureCause:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MPhoneStateListener"

    const-string v4, "oosInfos == null"

    invoke-static {v3, v4, v2}, Lcom/motorola/bach/modemstats/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isAirplaneModeOn()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x5

    iput v4, v3, Landroid/os/Message;->what:I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "data"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0x493e0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    :goto_1
    iput-boolean v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataActivity:Z

    invoke-virtual {p0, v1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->setVoiceCallActive(Z)V

    return-void
.end method

.method protected stopActiveDataSession()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataActivity, stopActiveDataSession for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mData_Active_Session_Start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mData_Active_Session_Start:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mData_Active_Session_Start:J

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mData_Active_Session_Start:J

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mActive_duration:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mActive_duration:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update Active duration, duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Curr_Active_duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mActive_duration:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", old_direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    iput-wide v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mData_Active_Session_Start:J

    return-void
.end method

.method protected stopDataOutOfService()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->onDataServiceChanged(Z)V

    return-void
.end method

.method protected stopIdleDataSession()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataActivity, stopDataIdlSession for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mData_Idle_Session_Start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mData_Idle_Session_Start:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mData_Idle_Session_Start:J

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mData_Idle_Session_Start:J

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIdle_duration:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIdle_duration:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update Idle duration, duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Curr_idle_duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIdle_duration:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", old_direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mDataDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    iput-wide v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mData_Idle_Session_Start:J

    return-void
.end method

.method protected stopRatSession()J
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeOnRAT, stopRatSession for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mStartTimeRatChange:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mStartTimeRatChange:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mStartTimeRatChange:J

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mStartTimeRatChange:J

    sub-long/2addr v0, v4

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isWifiConnected()Z

    move-result v4

    if-nez v4, :cond_2

    iget-wide v4, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mData_Idle_Session_Start:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_1

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->stopIdleDataSession()V

    :cond_1
    iget-wide v4, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mData_Active_Session_Start:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_3

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->stopActiveDataSession()V

    goto :goto_0

    :cond_2
    const-string v4, "Device on WIFI, set data Active duration to 0"

    invoke-virtual {p0, v4}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    iput-wide v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mActive_duration:J

    iput-wide v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIdle_duration:J

    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimeOnRAT, rat duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Data_Active_duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mActive_duration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Data_Idle_duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIdle_duration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mActive_duration:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIdle_duration:J

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Big difference b/w idle_duration and mIdle_duration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    :cond_4
    iput-wide v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIdle_duration:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimeOnRAT, adjust Data_Idle_duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIdle_duration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    return-wide v0
.end method

.method public stopVoiceOutOfServiceAndLogEvent()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-wide v2, v2, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->mStart:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logOutOfServiceEvent()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    :cond_1
    return-void
.end method

.method public timeSpentOnRAT(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] timeSpentOnRAT, TimeOnRat.rat: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " oldRat: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mCheckinRatType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Service: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    const-string v0, "NULL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "APM"

    if-nez v2, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const-string p2, "timeSpentOnRAT, identified: OOS"

    invoke-virtual {p0, p2}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    const-string p2, "OOS"

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    const-string p2, "timeSpentOnRAT, identified: SOS (Emergency Only)"

    invoke-virtual {p0, p2}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    const-string p2, "SOS"

    :cond_2
    :goto_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    const-string p1, "timeSpentOnRAT, identified: APM (Airplane Mode Active)"

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    move-object p2, v3

    :cond_3
    iget-boolean p1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mAirplaneMode:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "] timeSpentOnRAT, TimeOnRat Override: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " with APM (Airplane Mode Active)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p1, "WFC"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/motorola/bach/modemstats/TimeOnRat;

    invoke-direct {p1}, Lcom/motorola/bach/modemstats/TimeOnRat;-><init>()V

    iget-object p2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mCheckinRatType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/motorola/bach/modemstats/TimeOnRat;->getBaseRat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    move-object v3, p2

    :goto_1
    const-string p1, "NA"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move-object v0, v3

    :goto_2
    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isWifiConnected()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->isWfcEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isWifiCallingAvailable()Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "W"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "timeSpentOnRAT, Added WiFi to RAT type"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    :cond_7
    iget-object p1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mCheckinRatType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    if-nez p4, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "timeSpentOnRAT: no change in RAT detected: current and previous RAT"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mCheckinRatType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->stopRatSession()J

    move-result-wide p1

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    long-to-int v5, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[RAT Time] session end for: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mCheckinRatType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", duration: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "s. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "timeSpentOnRAT, RAT = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mCheckinRatType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", Duration ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", Data Active = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v3, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mActive_duration:J

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", Sim Slot ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    if-lez v5, :cond_9

    iget-object p1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRatSummary:Lcom/motorola/bach/modemstats/TimeOnRatSummary;

    new-instance p2, Lcom/motorola/bach/modemstats/TimeOnRat;

    iget-object v4, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mCheckinRatType:Ljava/lang/String;

    iget-wide v6, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mActive_duration:J

    div-long/2addr v6, v1

    long-to-int v6, v6

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->getSimSlot()I

    move-result v7

    move-object v3, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/motorola/bach/modemstats/TimeOnRat;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/motorola/bach/modemstats/TimeOnRatSummary;->addRatTime(Lcom/motorola/bach/modemstats/TimeOnRat;)V

    goto :goto_3

    :cond_9
    const-string p1, "timeSpentOnRAT, Ignoring current session since the time spent on rat is insignificant"

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[RAT Session] TIME_SPENT_ON_RAT new session start: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[RAT Summary] SubId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " Total Time:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRatSummary:Lcom/motorola/bach/modemstats/TimeOnRatSummary;

    invoke-virtual {p2}, Lcom/motorola/bach/modemstats/TimeOnRatSummary;->getTotalMeasuredTime()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " RatList: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mRatSummary:Lcom/motorola/bach/modemstats/TimeOnRatSummary;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->startRatSession()V

    iput-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mCheckinRatType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSubId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsVolteFeatureEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsVolteFeatureEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsWfcFeatureEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsWfcFeatureEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsVolteProvisioned: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsVolteProvisioned:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsWfcProvisioned: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean p0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mIsWfcProvisioned:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " }"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregister()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregister, subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    sget-boolean v0, Lcom/motorola/bach/modemstats/ConstantValue;->IS_BUILD_TYPE_ODM1:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mTelMgrHelper:Lcom/motorola/bach/modemstats/oemhook/MotoTelephonyManagerHelper;

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mMotoPhoneStateListener:Lcom/motorola/bach/modemstats/oemhook/MotoPhoneStateListener;

    invoke-virtual {v0, v1}, Lcom/motorola/bach/modemstats/oemhook/MotoTelephonyManagerHelper;->unregister(Lcom/motorola/bach/modemstats/oemhook/MotoPhoneStateListener;)V

    :cond_0
    sget-object v0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/motorola/bach/modemstats/ModemStatsService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MPhoneStateListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/motorola/bach/modemstats/MPhoneStateListener;->unregisterImsCallback()V

    return-void
.end method
