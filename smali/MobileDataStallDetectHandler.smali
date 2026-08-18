.class public Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;
.super Landroid/os/Handler;
.source "MobileDataStallDetectHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler$TelephonyDctRecoveryAction;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;

.field private static token:I


# instance fields
.field private mCM:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDataStallManager:Lcom/motorola/bach/modemstats/datastall/MDataStallManager;

.field private mIsDataStallStarted:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecoveryAction:I

.field private mRecoveryCycleNum:I

.field private mRecoveryResultReported:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private pingResult:Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils$PingResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->DEBUG:Z

    const-string v0, "MobileDataStallDetectHandler"

    sput-object v0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->token:I

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mDataStallManager:Lcom/motorola/bach/modemstats/datastall/MDataStallManager;

    new-instance p1, Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils$PingResult;

    invoke-direct {p1}, Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils$PingResult;-><init>()V

    iput-object p1, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->pingResult:Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils$PingResult;

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mRecoveryAction:I

    iput-boolean p1, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mRecoveryResultReported:Z

    iput p1, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mRecoveryCycleNum:I

    iput-boolean p1, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mIsDataStallStarted:Z

    new-instance p1, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler$1;

    invoke-direct {p1, p0}, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler$1;-><init>(Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;)V

    iput-object p1, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/motorola/bach/modemstats/datastall/MDataStallManager;->getInstance(Landroid/content/Context;)Lcom/motorola/bach/modemstats/datastall/MDataStallManager;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mDataStallManager:Lcom/motorola/bach/modemstats/datastall/MDataStallManager;

    iget-object p1, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mResolver:Landroid/content/ContentResolver;

    const-string p1, "connectivity"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mCM:Landroid/net/ConnectivityManager;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.DATA_STALL_DETECTED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x2

    invoke-virtual {p2, p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$002(Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;I)I
    .locals 0

    iput p1, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mRecoveryAction:I

    return p1
.end method

.method static synthetic access$100(Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;)I
    .locals 0

    iget p0, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mRecoveryCycleNum:I

    return p0
.end method

.method static synthetic access$108(Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;)I
    .locals 2

    iget v0, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mRecoveryCycleNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mRecoveryCycleNum:I

    return v0
.end method

.method static synthetic access$200(Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->notifyDataStall(ZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mIsDataStallStarted:Z

    return p0
.end method

.method private getRecoveryResult(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "success in step "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mRecoveryAction:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "all fail"

    :goto_0
    return-object p0
.end method

.method private notifyDataStall(ZZ)V
    .locals 5

    sget-object v0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDataStall:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/motorola/bach/modemstats/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsDataStallStarted="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mIsDataStallStarted:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mRecoveryResultReported="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mRecoveryResultReported:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/motorola/bach/modemstats/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mIsDataStallStarted:Z

    if-eqz v1, :cond_2

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.motorola.internal.intent.action.DATA_STALL_NOTIFICATION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.motorola.internal.intent.extra.DATA_STALL_STATUS"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "com.motorola.internal.intent.extra.DATA_STALL_CAUSE"

    const-string v4, "pingFailure"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->pingResult:Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils$PingResult;

    iget v3, v3, Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils$PingResult;->passedNum:I

    const-string v4, "com.motorola.internal.intent.extra.DATA_STALL_PING_SUCCESS_COUNT"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->pingResult:Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils$PingResult;

    iget v3, v3, Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils$PingResult;->totalNum:I

    const-string v4, "com.motorola.internal.intent.extra.DATA_STALL_PING_TOTAL_COUNT"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mRecoveryResultReported:Z

    if-nez v4, :cond_1

    if-eqz p2, :cond_1

    xor-int/lit8 p2, p1, 0x1

    invoke-direct {p0, p2}, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->getRecoveryResult(Z)Ljava/lang/String;

    move-result-object v3

    const-string p2, "com.motorola.internal.intent.extra.DATA_STALL_RECOVERY_RESULT"

    invoke-virtual {v1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mRecoveryResultReported:Z

    :cond_1
    iget-object p2, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    sget-boolean p2, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->DEBUG:Z

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotifyDataStall:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", recoveryRes:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", pingResult:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->pingResult:Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils$PingResult;

    iget v1, v1, Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils$PingResult;->passedNum:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->pingResult:Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils$PingResult;

    iget v1, v1, Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils$PingResult;->totalNum:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p2, v1}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-boolean p2, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mIsDataStallStarted:Z

    if-eq p2, p1, :cond_3

    iput-boolean p1, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mIsDataStallStarted:Z

    if-nez p1, :cond_3

    iput-boolean v2, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mRecoveryResultReported:Z

    iput v2, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mRecoveryCycleNum:I

    :cond_3
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    sget-boolean v0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage msg.what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->notifyDataStall(ZZ)V

    goto/16 :goto_2

    :cond_2
    iget-object p1, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mDataStallManager:Lcom/motorola/bach/modemstats/datastall/MDataStallManager;

    invoke-virtual {p1}, Lcom/motorola/bach/modemstats/datastall/MDataStallManager;->isDataUnavailableForVoice()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mDataStallManager:Lcom/motorola/bach/modemstats/datastall/MDataStallManager;

    invoke-virtual {p1}, Lcom/motorola/bach/modemstats/datastall/MDataStallManager;->isDataUnavailableForOOS()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mDataStallManager:Lcom/motorola/bach/modemstats/datastall/MDataStallManager;

    invoke-virtual {p1}, Lcom/motorola/bach/modemstats/datastall/MDataStallManager;->isPolicyDataDisabled()Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_1

    :cond_3
    sget-object p1, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->TAG:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "handleMessage MSG_BLUE_TO_WHITE"

    invoke-static {p1, v4, v3}, Lcom/motorola/bach/modemstats/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->pingResult:Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils$PingResult;

    invoke-virtual {v3}, Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils$PingResult;->resetResult()V

    iget-object v3, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils;->keepAlive(Landroid/content/Context;)V

    invoke-static {}, Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils;->getInstance()Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils;->startLog(Landroid/content/Context;)I

    move-result v3

    sput v3, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->token:I

    iget-object v3, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils;->getServers(ILandroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils;->getServers(ILandroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils;->getServers(ILandroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils;->detectDatalink(I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    const-string v4, "mot.dsdetect.moreping"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils$PingConfig;

    invoke-direct {v5}, Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils$PingConfig;-><init>()V

    invoke-virtual {v5, v4}, Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils$PingConfig;->parse(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v3, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->pingResult:Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils$PingResult;

    invoke-static {v5, v3}, Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils;->continousPing(Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils$PingConfig;Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils$PingResult;)I

    move-result v3

    :cond_4
    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_5

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "link switch or reasonable data stall, ignore previous test result"

    invoke-static {p1, v4, v3}, Lcom/motorola/bach/modemstats/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v1

    :cond_5
    const/4 v4, -0x1

    if-eqz v3, :cond_7

    if-eq v3, v2, :cond_6

    if-eq v3, v0, :cond_6

    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "Pre-recovery, link lost during detecting."

    invoke-static {p1, v3, v0}, Lcom/motorola/bach/modemstats/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils;->getInstance()Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils;

    move-result-object p1

    sget v0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->token:I

    invoke-virtual {p1, v0, v1}, Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils;->stopLog(IZ)V

    sput v4, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->token:I

    goto :goto_0

    :cond_6
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "detected data fail!"

    invoke-static {p1, v1, v0}, Lcom/motorola/bach/modemstats/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils;->getInstance()Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils;

    move-result-object p1

    sget v0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->token:I

    invoke-virtual {p1, v0, v2}, Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils;->stopLog(IZ)V

    sput v4, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->token:I

    goto :goto_0

    :cond_7
    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "Pre-recovery, detect pass."

    invoke-static {p1, v3, v0}, Lcom/motorola/bach/modemstats/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils;->getInstance()Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils;

    move-result-object p1

    sget v0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->token:I

    invoke-virtual {p1, v0, v1}, Lcom/motorola/bach/modemstats/datastall/DataStallDetectUtils;->stopLog(IZ)V

    sput v4, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->token:I

    :goto_0
    invoke-virtual {p0, v2}, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, v2}, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->removeMessages(I)V

    goto :goto_2

    :cond_8
    :goto_1
    sget-object p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->TAG:Ljava/lang/String;

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "ignore, data is reasonable not available"

    invoke-static {p0, v0, p1}, Lcom/motorola/bach/modemstats/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_2
    return-void
.end method

.method normalMobileInternetOnDefault()Z
    .locals 2

    iget-object v0, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/motorola/bach/modemstats/datastall/MobileDataStallDetectHandler;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method onDestroy()V
    .locals 0

    return-void
.end method
