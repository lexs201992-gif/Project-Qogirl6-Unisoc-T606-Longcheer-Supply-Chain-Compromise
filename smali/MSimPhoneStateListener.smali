.class public Lcom/motorola/bach/modemstats/MSimPhoneStateListener;
.super Lcom/motorola/bach/modemstats/MPhoneStateListener;
.source "MSimPhoneStateListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MSimPhoneStateListener"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mServiceStateCopy:Landroid/telephony/ServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/motorola/bach/modemstats/ModemStatsService;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/bach/modemstats/MPhoneStateListener;-><init>(Lcom/motorola/bach/modemstats/ModemStatsService;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mServiceStateCopy:Landroid/telephony/ServiceState;

    sput-object p1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MSimPhoneStateListener, subId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", phoneId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getCallRAT(IIZ)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->isImsCall(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xd

    if-eqz p3, :cond_1

    const/16 p1, 0x12

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    iget-object p2, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result p1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    iget p1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mOldNetworkType:I

    :cond_2
    return p1
.end method

.method protected getCallRATString(IIZ)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->getCallRAT(IIZ)I

    move-result p0

    invoke-static {p0}, Lcom/motorola/bach/modemstats/utils/TelephonyUtils;->ratToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleMoto5gStateChange()V
    .locals 1

    const-string v0, "handleMoto5gStateChange"

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mServiceStateCopy:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    :cond_0
    return-void
.end method

.method protected isCDMATech()Z
    .locals 2

    iget p0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mPhoneId:I

    sget-object v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->PROPERTY_DATA_NETWORK_TYPE:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-static {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

.method protected isEvdo()Z
    .locals 2

    iget p0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mPhoneId:I

    sget-object v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->PROPERTY_DATA_NETWORK_TYPE:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-static {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

.method protected isLte()Z
    .locals 2

    iget p0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mPhoneId:I

    sget-object v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->PROPERTY_DATA_NETWORK_TYPE:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-static {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

.method public logCallDropEvent(Landroid/content/Intent;)V
    .locals 41

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

    move-result-wide v12

    const-string v0, "disconnected_cause"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string v0, "disconnected_precise_cause"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "disconnected_cause_additional"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/ims/ImsReasonInfo;

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

    move-object/from16 v21, v3

    move/from16 v20, v6

    move/from16 v19, v7

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v6, "wifi_ims_call"

    move-wide/from16 v22, v3

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "rat"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v4

    invoke-virtual {v1, v8, v9, v3}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->getCallRAT(IIZ)I

    move-result v7

    move-object/from16 v24, v6

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

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", cause="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", preciseCause="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", ims_cause="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    move/from16 v6, v20

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", isImsRegistered="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v6, v1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mImsRegistered:Z

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

    move v6, v8

    move/from16 v20, v9

    move-wide/from16 v8, v22

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", index="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v8, v19

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", operator="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v9, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    move/from16 v19, v3

    iget-object v3, v1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v9, v3}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", channel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v9, v1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move/from16 v22, v6

    const/4 v6, 0x2

    invoke-virtual {v3, v7, v9, v6}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRadioChannel(III)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", band="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v9, v1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v3, v7, v9, v6}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRadioBand(III)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->isCallIndexValid(I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1, v8}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->getCallStatsInfo(I)Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getCallEndReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getClientEndCause()I

    move-result v7

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v7, -0x1

    :goto_0
    const-string v9, "unspecified"

    if-lez v7, :cond_2

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v3, v23

    goto :goto_1

    :cond_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_3

    move-object v3, v9

    goto :goto_1

    :cond_3
    move-object v3, v11

    :goto_1
    if-eqz v10, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v6

    goto :goto_2

    :cond_4
    const/4 v6, -0x1

    :goto_2
    invoke-static {v11}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->isNormalDisconnect(Ljava/lang/String;)Z

    move-result v26

    const-string v27, "on"

    const-string v28, "off"

    move-object/from16 v29, v9

    const-string v9, "bt"

    move/from16 v30, v8

    const-string v8, "durn"

    const-wide/16 v31, 0x3e8

    move-object/from16 v33, v9

    const-string v9, "slot"

    move-object/from16 v34, v8

    const-string v8, "cause"

    move-object/from16 v35, v11

    const-string v11, "rtp_loss"

    move-object/from16 v36, v11

    const-string v11, "rtp_cnt"

    move-object/from16 v37, v2

    const-string v2, "v_stat"

    if-nez v26, :cond_1e

    invoke-virtual {v1, v0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->isNormalByPreciseCause(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {v1, v6}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->isNormalByCode(I)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v0, v3}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->isNormalClearingByCinfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v4, p1

    move-object/from16 v19, v2

    move-object v5, v11

    move-wide/from16 v38, v12

    move/from16 v6, v20

    move/from16 v12, v30

    move-object/from16 v13, v33

    move-object/from16 v0, v34

    move-object/from16 v11, v35

    move-object/from16 v7, v36

    const/16 v18, 0x0

    goto/16 :goto_12

    :cond_5
    const-wide/16 v16, 0x0

    cmp-long v0, v12, v16

    const-string v6, ", cm_cause_code:"

    move-object/from16 v16, v3

    const/16 v3, 0x200

    if-nez v0, :cond_f

    if-nez v5, :cond_f

    const-string v0, "MO call failure"

    invoke-virtual {v1, v0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

    :try_start_0
    new-instance v5, Lcom/motorola/android/provider/CheckinEvent;

    const-string v11, "CALL_PERF_STATS"

    const-string v12, "CALL_ORIG_FAILURE"

    const-string v13, "3.2"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v17, v10

    move-object v10, v5

    move-object/from16 v26, v35

    :try_start_1
    invoke-direct/range {v10 .. v15}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v10, p1

    :try_start_2
    invoke-virtual {v1, v5, v10}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->fillUpCallDropEvent(Lcom/motorola/android/provider/CheckinEvent;Landroid/content/Intent;)V

    invoke-static/range {v26 .. v26}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->callOrigCause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v8, v0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->getSimSlot()I

    move-result v0

    invoke-virtual {v5, v9, v0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->getVOLTEStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v17, v10

    move-object/from16 v26, v35

    :goto_3
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    const-string v0, "callOrigFailure.Bug2Go"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x1

    if-eqz v2, :cond_7

    move/from16 v9, v20

    move/from16 v2, v22

    :cond_6
    const/4 v8, 0x0

    goto :goto_6

    :cond_7
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move/from16 v9, v20

    move/from16 v2, v22

    goto :goto_6

    :cond_8
    move/from16 v9, v20

    move/from16 v2, v22

    invoke-virtual {v1, v2, v9}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->isImsCall(II)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_6
    if-eqz v8, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reason:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    if-lez v7, :cond_a

    invoke-static {}, Lcom/motorola/bach/modemstats/ModemStatsErrorCode;->getInstance()Lcom/motorola/bach/modemstats/ModemStatsErrorCode;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/motorola/bach/modemstats/ModemStatsErrorCode;->getCallEndCauseFullText(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", FW-Cause:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v26

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    if-eqz v17, :cond_d

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v3

    if-lez v3, :cond_c

    invoke-static {}, Lcom/motorola/bach/modemstats/ModemStatsErrorCode;->getInstance()Lcom/motorola/bach/modemstats/ModemStatsErrorCode;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/motorola/bach/modemstats/ModemStatsErrorCode;->getQmiErrorFullText(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", qcril_cause_code:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_c
    if-nez v3, :cond_d

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", ImsReason:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    :goto_7
    move/from16 v3, v19

    invoke-virtual {v1, v2, v9, v3}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->getCallRAT(IIZ)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", Channel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v6, v1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

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

    sget-object v4, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v6, v1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v2, v6, v7}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRadioBand(III)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CALL_ORIG_FAILURE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->addToDropbox(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v37, :cond_e

    move-object/from16 v2, v37

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->setCsFallbackFailureInfo(Ljava/lang/String;)V

    :cond_e
    sget-object v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v0, v5}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->logEvent(Lcom/motorola/android/provider/CheckinEvent;)V

    move/from16 v7, v30

    goto/16 :goto_1c

    :cond_f
    move-object/from16 v17, v10

    move/from16 v3, v22

    move-object/from16 v26, v35

    move-object/from16 v10, p1

    move/from16 v22, v7

    move-object/from16 v7, v37

    move/from16 v40, v20

    move-object/from16 v20, v6

    move/from16 v6, v40

    const-string v0, "log abnormal call drop"

    invoke-virtual {v1, v0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

    :try_start_3
    sget-object v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    move-object/from16 v10, v16

    :try_start_4
    invoke-virtual {v0, v10}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->isCallDropNW(Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    const-string v10, "CALL_DROP_NW"

    if-eqz v0, :cond_10

    :try_start_5
    const-string v0, "3.0"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object/from16 v16, v0

    move-object v0, v10

    move-object/from16 v21, v0

    goto :goto_8

    :catch_3
    move-exception v0

    move-object/from16 v35, v4

    move/from16 v36, v5

    move-object/from16 v37, v7

    move/from16 v12, v30

    const/4 v10, 0x0

    move-object/from16 v4, p1

    goto/16 :goto_f

    :cond_10
    :try_start_6
    const-string v0, "3.2"

    move-object/from16 v16, v0

    move-object/from16 v0, v21

    :goto_8
    new-instance v10, Lcom/motorola/android/provider/CheckinEvent;

    const-string v25, "CALL_PERF_STATS"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-object/from16 v35, v4

    move-object/from16 v29, v10

    move-object/from16 v4, p1

    move-object/from16 v10, v29

    move-object/from16 v37, v7

    move-object/from16 v7, v36

    move/from16 v36, v5

    move-object v5, v11

    move-object/from16 v11, v25

    move-wide/from16 v38, v12

    move-object v12, v0

    move-object/from16 v13, v16

    :try_start_7
    invoke-direct/range {v10 .. v15}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :try_start_8
    invoke-virtual {v1, v10, v4}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->fillUpCallDropEvent(Lcom/motorola/android/provider/CheckinEvent;Landroid/content/Intent;)V

    div-long v12, v38, v31

    move-object/from16 v0, v34

    invoke-virtual {v10, v0, v12, v13}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;J)V

    invoke-static/range {v26 .. v26}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->callDropCause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v8, v0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_11

    move-object/from16 v0, v27

    goto :goto_9

    :cond_11
    move-object/from16 v0, v28

    :goto_9
    move-object/from16 v13, v33

    invoke-virtual {v10, v13, v0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->getSimSlot()I

    move-result v0

    invoke-virtual {v10, v9, v0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    invoke-virtual {v1, v3, v6}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->isImsCall(II)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    if-eqz v0, :cond_14

    move/from16 v12, v30

    :try_start_9
    invoke-virtual {v1, v12}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->getCallStatsInfo(I)Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;

    move-result-object v0

    iget v8, v1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mRtpCnt:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_12

    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getRtpTotalCount()I

    move-result v8

    invoke-virtual {v10, v5, v8}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const/4 v5, -0x1

    goto :goto_a

    :cond_12
    iget v8, v1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mRtpCnt:I

    invoke-virtual {v10, v5, v8}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const/4 v5, -0x1

    iput v5, v1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mRtpCnt:I

    :goto_a
    iget v8, v1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mRtpLoss:I

    if-ne v8, v5, :cond_13

    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getRtpLossCount()I

    move-result v5

    invoke-virtual {v10, v7, v5}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    goto :goto_b

    :cond_13
    iget v5, v1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mRtpLoss:I

    invoke-virtual {v10, v7, v5}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const/4 v5, -0x1

    iput v5, v1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mRtpLoss:I

    :goto_b
    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getSarState()I

    move-result v0

    invoke-virtual {v10, v2, v0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    goto :goto_c

    :catch_4
    move-exception v0

    goto :goto_f

    :cond_14
    move/from16 v12, v30

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->getVOLTEStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v2, v0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_10

    :catch_5
    move-exception v0

    move/from16 v12, v30

    goto :goto_f

    :catch_6
    move-exception v0

    goto :goto_d

    :catch_7
    move-exception v0

    move-object/from16 v35, v4

    move/from16 v36, v5

    move-object/from16 v37, v7

    move/from16 v12, v30

    move-object/from16 v4, p1

    goto :goto_e

    :catch_8
    move-exception v0

    move-object/from16 v35, v4

    move/from16 v36, v5

    move-object/from16 v37, v7

    move-object v4, v10

    :goto_d
    move/from16 v12, v30

    :goto_e
    const/4 v10, 0x0

    :goto_f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_10
    move-object/from16 v0, v21

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v5, 0x200

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move/from16 v5, v36

    invoke-virtual {v1, v3, v5, v12}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->getCallTypeString(IZI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_15

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CallType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    move-object/from16 v5, v24

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v37, :cond_16

    invoke-virtual/range {v37 .. v37}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->isCallOnWifi()Z

    move-result v5

    or-int/2addr v4, v5

    :cond_16
    invoke-virtual {v1, v3, v6, v4}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->getCallRATString(IIZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", RAT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", ims_registered:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mImsRegistered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", Reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v35

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    if-lez v22, :cond_19

    invoke-static {}, Lcom/motorola/bach/modemstats/ModemStatsErrorCode;->getInstance()Lcom/motorola/bach/modemstats/ModemStatsErrorCode;

    move-result-object v3

    move/from16 v7, v22

    invoke-virtual {v3, v7}, Lcom/motorola/bach/modemstats/ModemStatsErrorCode;->getCallEndCauseFullText(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", FW-Cause:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v11, v26

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    if-eqz v17, :cond_1c

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v3

    if-lez v3, :cond_1b

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

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_1b
    if-nez v3, :cond_1c

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", ImsReason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    :goto_11
    sget-object v3, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v2, v4}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->addToDropbox(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v37, :cond_1d

    move-object/from16 v2, v37

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->setCsFallbackFailureInfo(Ljava/lang/String;)V

    :cond_1d
    sget-object v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v0, v10}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->logEvent(Lcom/motorola/android/provider/CheckinEvent;)V

    goto/16 :goto_1b

    :cond_1e
    move-object/from16 v4, p1

    move-object v5, v11

    move-wide/from16 v38, v12

    move/from16 v6, v20

    move/from16 v12, v30

    move-object/from16 v13, v33

    move-object/from16 v0, v34

    move-object/from16 v11, v35

    move-object/from16 v7, v36

    const/16 v18, 0x0

    move-object/from16 v19, v2

    :goto_12
    div-long v2, v38, v31

    const-wide/16 v16, 0x0

    cmp-long v10, v2, v16

    if-lez v10, :cond_24

    const-string v10, "log normal call drop"

    invoke-virtual {v1, v10}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

    :try_start_a
    new-instance v10, Lcom/motorola/android/provider/CheckinEvent;

    const-string v16, "CALL_PERF_STATS"

    const-string v17, "CALL_PERF_STATS_SUCCESS"

    const-string v20, "3.1"
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    move-object/from16 v21, v10

    move-object/from16 v10, v21

    move-object/from16 v23, v11

    move-object/from16 v11, v16

    move-object/from16 v36, v7

    move v7, v12

    move-object/from16 v12, v17

    move-object/from16 v16, v5

    move-object v5, v13

    move-object/from16 v13, v20

    :try_start_b
    invoke-direct/range {v10 .. v15}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    :try_start_c
    invoke-virtual {v1, v10, v4}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->fillUpCallDropEvent(Lcom/motorola/android/provider/CheckinEvent;Landroid/content/Intent;)V

    invoke-virtual {v10, v0, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_1f

    move-object/from16 v0, v27

    goto :goto_13

    :cond_1f
    move-object/from16 v0, v28

    :goto_13
    invoke-virtual {v10, v5, v0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "svc_stat"

    iget v2, v1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mServiceState:I

    invoke-static {v2}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->serviceStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    move-object/from16 v11, v29

    goto :goto_14

    :cond_20
    move-object/from16 v11, v23

    :goto_14
    invoke-virtual {v10, v8, v11}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->getSimSlot()I

    move-result v0

    invoke-virtual {v10, v9, v0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    move/from16 v2, v22

    invoke-virtual {v1, v2, v6}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->isImsCall(II)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {v1, v7}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->getCallStatsInfo(I)Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;

    move-result-object v0

    iget v2, v1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mRtpCnt:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_21

    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getRtpTotalCount()I

    move-result v2

    move-object/from16 v3, v16

    invoke-virtual {v10, v3, v2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const/4 v2, -0x1

    goto :goto_15

    :cond_21
    move-object/from16 v3, v16

    iget v2, v1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mRtpCnt:I

    invoke-virtual {v10, v3, v2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const/4 v2, -0x1

    iput v2, v1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mRtpCnt:I

    :goto_15
    iget v3, v1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mRtpLoss:I

    if-ne v3, v2, :cond_22

    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getRtpLossCount()I

    move-result v2

    move-object/from16 v3, v36

    invoke-virtual {v10, v3, v2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    goto :goto_16

    :cond_22
    move-object/from16 v3, v36

    iget v2, v1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mRtpLoss:I

    invoke-virtual {v10, v3, v2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const/4 v2, -0x1

    iput v2, v1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mRtpLoss:I

    :goto_16
    invoke-virtual {v0}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getSarState()I

    move-result v0

    move-object/from16 v2, v19

    invoke-virtual {v10, v2, v0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    goto :goto_17

    :cond_23
    move-object/from16 v2, v19

    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->getVOLTEStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v2, v0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_1a

    :catch_9
    move-exception v0

    move-object v3, v10

    goto :goto_19

    :catch_a
    move-exception v0

    goto :goto_18

    :catch_b
    move-exception v0

    move v7, v12

    :goto_18
    move-object/from16 v3, v18

    :goto_19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v10, v3

    :goto_1a
    sget-object v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v0, v10}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->logEvent(Lcom/motorola/android/provider/CheckinEvent;)V

    goto :goto_1c

    :cond_24
    :goto_1b
    move v7, v12

    :goto_1c
    invoke-virtual {v1, v7}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->clearCallStatsInfo(I)V

    return-void
.end method

.method public logCallHandoverEvent(Landroid/content/Intent;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "duration"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-string v2, "cause"

    const/4 v7, -0x1

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const-string v8, "index"

    invoke-virtual {v1, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "status"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    move v14, v10

    goto :goto_0

    :cond_0
    move v14, v9

    :goto_0
    const-string v8, "srcTech"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    const-string v8, "targetTech"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "logCallHandoverEvent, cause="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", srcTech="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", targetTech="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", bSuccess="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", index="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", duration="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", channel="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget v10, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mNetworkType:I

    iget-object v3, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v9, v10, v3, v4}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRadioChannel(III)I

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", band="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v8, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget v9, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mNetworkType:I

    iget-object v10, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10, v4}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRadioBand(III)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    cmp-long v3, v5, v8

    if-gtz v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logCallHandoverEvent: calling duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid, return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0, v7}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->isCallIndexValid(I)Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0, v7}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->getCallStatsInfo(I)Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;

    move-result-object v3

    if-nez v3, :cond_3

    return-void

    :cond_3
    const/16 v7, 0x12

    if-ne v7, v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v14, :cond_5

    if-eqz v1, :cond_5

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->setCallOnWifi(Z)V

    :cond_5
    const/16 v16, 0x0

    :try_start_0
    new-instance v10, Lcom/motorola/android/provider/CheckinEvent;

    const-string v8, "CALL_PERF_STATS"

    const-string v9, "VT_HANDOVER"

    const-string v17, "2.3"

    move-object v7, v10

    move-object v4, v10

    move-object/from16 v10, v17

    invoke-direct/range {v7 .. v12}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v7, "to_wifi"

    invoke-virtual {v4, v7, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Z)V

    const-string v1, "rssi"

    iget v7, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mRssi:I

    invoke-virtual {v4, v1, v7}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v1, "ecio"

    iget v7, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mEcio:I

    invoke-virtual {v4, v1, v7}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v1, "wrssi"

    sget-object v7, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v7}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentWifiRssi()I

    move-result v7

    invoke-virtual {v4, v1, v7}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v1, "is_scs"

    invoke-virtual {v4, v1, v14}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Z)V

    invoke-virtual {v4, v2, v13}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v1, "rat"

    invoke-static {v15}, Lcom/motorola/bach/modemstats/utils/TelephonyUtils;->ratToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sinr"

    sget-object v2, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    sget v2, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mSinr:I

    invoke-virtual {v4, v1, v2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v1, "uid"

    invoke-virtual {v3}, Lcom/motorola/bach/modemstats/MPhoneStateListener$CallStatsInfo;->getCallingUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "durn"

    const-wide/16 v2, 0x3e8

    div-long/2addr v5, v2

    invoke-virtual {v4, v1, v5, v6}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;J)V

    const-string v1, "ims_reg"

    iget-boolean v2, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mImsRegistered:Z

    invoke-virtual {v4, v1, v2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Z)V

    const-string v1, "wifi_st"

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->isWifiConnected()Z

    move-result v2

    invoke-virtual {v4, v1, v2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Z)V

    const-string v1, "roam"

    iget-object v2, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v3, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v2

    invoke-virtual {v4, v1, v2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Z)V

    const-string v1, "plmn"

    sget-object v2, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v3, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "channel"

    sget-object v2, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget v3, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mNetworkType:I

    iget-object v5, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v2, v3, v5, v6}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRadioChannel(III)I

    move-result v2

    invoke-virtual {v4, v1, v2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v1, "band"

    sget-object v2, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget v3, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mNetworkType:I

    iget-object v0, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v0, v5}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getCurrentRadioBand(III)I

    move-result v0

    invoke-virtual {v4, v1, v0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v10, v4

    goto :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v16, v4

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v10, v16

    :goto_3
    sget-object v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v0, v10}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->logEvent(Lcom/motorola/android/provider/CheckinEvent;)V

    return-void
.end method

.method public logOutOfServiceEvent()V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logOutOfServiceEvent, cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->mCause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

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

    iget-object v3, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-wide v7, v3, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->mTime:J

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "duration"

    invoke-virtual {v9, v2, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;J)V

    const-string v0, "cause"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->mCause:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "unspecified"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->mCause:Ljava/lang/String;

    :goto_0
    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sim_slot"

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->getSimSlot()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "sim_operator"

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    sget-object v0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mCellId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_PRODUCTION_DEVICE:Z

    if-nez v0, :cond_1

    const-string v0, "cell_id"

    sget-object v1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    sget-object v1, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mCellId:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v0, v0, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    if-eqz v0, :cond_2

    const-string v0, "rat"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->rat:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "num_rlf"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->numOfRlf:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "rlf_cause"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->rlfCause:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "num_oos"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->numOfOos:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "oos_cause"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->oosCause:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "num_regfl"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->numOfRegFailure:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "reg_cause"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->regFailureCause:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "reg_event"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->regFailureEvent:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "s1cap_stat"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->s1CapabilityStatus:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "s1dis_rea"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->s1DisableReason:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "s1volte_et"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->s1VolteEvent:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "n1cap_stat"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->n1CapabilityStatus:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "n1dis_rea"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->n1DisableReason:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "n1volte_et"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->n1VolteEvent:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "tx_power"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->txPower:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "rsrp_avg"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->rsrpAvg:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "rsrp_rx0"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->rsrpRx0:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "rsrp_rx1"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->rsrpRx1:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "rsrp_rx2"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->rsrpRx2:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "rsrp_rx3"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->rsrpRx3:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "rsrq"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->rsrq:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "sinr"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->snrAvg:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "sinr_rx0"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->snrRx0:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "sinr_rx1"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->snrRx1:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "sinr_rx2"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->snrRx2:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "sinr_rx3"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->snrRx3:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "band"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->band:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "pci"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->pci:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "arfcn"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->arfcn:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "tx_asdiv"

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    iget-object v1, v1, Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;->oosInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$OosInfos;->txAsdiv:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v0, "cell_gp_t"

    iget-object p0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

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
    sget-object p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

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

    iget p0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mPhoneId:I

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

    const-string v0, "MSimPhoneStateListener"

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

    iget p0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mPhoneId:I

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

    const-string v0, "MSimPhoneStateListener"

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

    iget p0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mPhoneId:I

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

    const-string v0, "MSimPhoneStateListener"

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

    iget p0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mPhoneId:I

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

    const-string v0, "MSimPhoneStateListener"

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

    iget p0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mPhoneId:I

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

    const-string v0, "MSimPhoneStateListener"

    invoke-static {v0, p0, p1}, Lcom/motorola/bach/modemstats/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStateChanged, mSubId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

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

    invoke-virtual {p0, p2}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

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
    iget-object p1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {}, Lcom/motorola/bach/modemstats/utils/TelephonyUtils;->getActiveDataSubscription()I

    move-result v4

    if-ne p1, v4, :cond_1

    sget-object p1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataStallManager:Lcom/motorola/bach/modemstats/datastall/MDataStallManager;

    iget-object p1, p1, Lcom/motorola/bach/modemstats/datastall/MDataStallManager;->mDataStallInstance:Lcom/motorola/bach/modemstats/datastall/DataStallBase;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataStallManager:Lcom/motorola/bach/modemstats/datastall/MDataStallManager;

    iget-object p1, p1, Lcom/motorola/bach/modemstats/datastall/MDataStallManager;->mDataStallInstance:Lcom/motorola/bach/modemstats/datastall/DataStallBase;

    invoke-virtual {p1}, Lcom/motorola/bach/modemstats/datastall/DataStallBase;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v4, "LinkLost"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->isUSC()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->isSVLTE()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "for non-svlte USC Nw, stop MT caused data stall"

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

    sget-object p1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataStallManager:Lcom/motorola/bach/modemstats/datastall/MDataStallManager;

    invoke-virtual {p1}, Lcom/motorola/bach/modemstats/datastall/MDataStallManager;->stopDataStall()V

    :cond_1
    iget-boolean p1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceCallActive:Z

    if-nez p1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoice_Idle_Session_Start:J

    sub-long/2addr v4, v6

    div-long/2addr v4, v0

    iget-wide v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mIdle_Voice_Duration:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mIdle_Voice_Duration:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoice_Active_Session_Start:J

    invoke-virtual {p0, v3}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->setVoiceCallActive(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Idle_Voice_Duration="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mIdle_Voice_Duration:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

    :cond_2
    const-string p1, "EVT_TYPE_CALL_START"

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

    sget-object p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    const-string p1, "CALL_START"

    invoke-virtual {p0, p1, p2, v2}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->addToDropbox(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceCallActive:Z

    if-eqz p1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoice_Active_Session_Start:J

    sub-long/2addr v3, v5

    div-long/2addr v3, v0

    iget-wide v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mActive_Voice_Duration:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mActive_Voice_Duration:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoice_Idle_Session_Start:J

    invoke-virtual {p0, v2}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->setVoiceCallActive(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Active_Voice_Duration="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mActive_Voice_Duration:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

    :cond_4
    const-string p1, "EVT_TYPE_CALL_END"

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

    sget-object p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    const-string p1, "CALL_END"

    invoke-virtual {p0, p1, p2, v2}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->addToDropbox(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onDataActivity(I)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/motorola/bach/modemstats/utils/TelephonyUtils;->getActiveDataSubscription()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataActivity, mSubId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", direction is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataDirection:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataDirection:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataDirection:I

    if-ne v0, v1, :cond_2

    :cond_1
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

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_6

    const/4 v0, 0x4

    if-eq p1, v2, :cond_3

    if-eq p1, v3, :cond_3

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_6

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataDirection:I

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataDirection:I

    if-ne v1, v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->stopIdleDataSession()V

    :cond_5
    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->startActiveDataSession()V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataDirection:I

    if-eq v0, v2, :cond_7

    iget v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataDirection:I

    if-eq v0, v3, :cond_7

    iget v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataDirection:I

    if-ne v0, v1, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->stopActiveDataSession()V

    :cond_8
    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->startIdleDataSession()V

    :goto_0
    iput p1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataDirection:I

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/telephony/ServiceState;

    invoke-direct {v2, v1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v2, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mServiceStateCopy:Landroid/telephony/ServiceState;

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    sget-object v4, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iget-object v5, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Lcom/motorola/bach/modemstats/utils/TelephonyUtils;->getNetworkType(Landroid/content/Context;I)I

    move-result v4

    iget-object v5, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v5

    iget-object v6, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v6

    sget-object v7, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget-object v8, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v8, v6}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mapTelephonyNetworkTypeForCheckin(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onServiceStateChanged mSubId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " plmn: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " state: {old: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mServiceState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", new: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "}  data: {old: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataServiceState:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "}  rat: {old: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mNetworkType:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "}  nw: {data: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", voice: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "} "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getChannelNumber()I

    move-result v9

    iget-object v12, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mMotoTM:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    const-string v13, ""

    if-nez v12, :cond_0

    move-object v12, v13

    goto :goto_0

    :cond_0
    iget-object v12, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mMotoTM:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    iget-object v14, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v12, v14}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getBandInfo(I)Ljava/lang/String;

    move-result-object v12

    :goto_0
    new-instance v14, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;

    invoke-direct {v14}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;-><init>()V

    invoke-virtual {v14, v4}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mapTelephonyRatType(I)I

    move-result v15

    move-object/from16 v16, v8

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move/from16 v17, v9

    const/16 v9, 0x12

    if-ne v4, v9, :cond_1

    iget-object v15, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;->mapTelephonyRatType(I)I

    move-result v15

    const/16 v14, 0xa

    if-ne v15, v14, :cond_1

    const/4 v12, -0x1

    goto :goto_1

    :cond_1
    move-object v13, v12

    move/from16 v12, v17

    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onServiceStateChanged: ["

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v14, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, "] RadioBandInfo: rat: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, " band: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, " arfcn: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

    new-instance v9, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;

    iget-object v14, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-direct {v9, v15, v13, v12, v14}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v9

    const/16 v14, 0x13

    const/16 v15, 0xd

    if-lez v9, :cond_3

    if-eq v4, v14, :cond_2

    if-ne v4, v15, :cond_3

    :cond_2
    new-instance v9, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;

    const/16 v18, 0x15

    iget-object v15, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v21

    const/16 v22, 0x1

    move-object/from16 v17, v9

    move-object/from16 v19, v13

    move/from16 v20, v12

    invoke-direct/range {v17 .. v22}, Lcom/motorola/bach/modemstats/RadioBandInfoAdam;-><init>(ILjava/lang/String;III)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v9, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v9, v8}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->addRadioBandInfo(Ljava/util/ArrayList;)V

    const/4 v8, 0x0

    if-eqz v2, :cond_5

    iget-object v9, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->isVolteAvailable()Z

    move-result v9

    if-eqz v9, :cond_4

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

    invoke-virtual {v0, v2}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

    :goto_2
    move v2, v8

    goto :goto_3

    :cond_4
    iget-object v9, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->isWifiCallingAvailable()Z

    move-result v9

    if-eqz v9, :cond_5

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

    invoke-virtual {v0, v2}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v9

    iget v12, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceRadioTechnology:I

    if-eq v9, v12, :cond_6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onServiceStateChanged: voiceRadioTechnology {old: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceRadioTechnology:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

    sget-object v12, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    invoke-static {v12}, Lcom/motorola/bach/modemstats/call/MCallManager;->getInstance(Landroid/content/Context;)Lcom/motorola/bach/modemstats/call/MCallManager;

    move-result-object v12

    iget-object v13, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iget-object v8, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v8

    invoke-virtual {v12, v13, v14, v15, v8}, Lcom/motorola/bach/modemstats/call/MCallManager;->updateDurationRat(IJI)V

    iput v9, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceRadioTechnology:I

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v8

    iget v12, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataRadioTechnology:I

    if-eq v8, v12, :cond_7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onServiceStateChanged: dataRadioTechnology {old:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataRadioTechnology:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

    iput v8, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataRadioTechnology:I

    :cond_7
    const/16 v8, 0x12

    if-ne v6, v8, :cond_8

    sget-object v6, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    invoke-virtual {v6, v9}, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mapRilNetworkTypeForCheckin(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_8
    move-object/from16 v8, v16

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v6

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-eq v6, v9, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v1

    if-ne v1, v10, :cond_b

    :cond_9
    const/16 v1, 0x13

    if-eq v5, v1, :cond_a

    const/16 v1, 0xd

    if-ne v5, v1, :cond_b

    :cond_a
    const-string v8, "5GN"

    :cond_b
    iget v1, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mNetworkType:I

    if-ne v4, v1, :cond_c

    iget v1, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataServiceState:I

    if-eq v3, v1, :cond_d

    :cond_c
    iget-object v1, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Lcom/motorola/bach/modemstats/utils/TelephonyUtils;->getActiveDataSubscription()I

    move-result v5

    if-ne v1, v5, :cond_d

    invoke-virtual {v0, v4, v3}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->checkImsRegistrationState(II)V

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v8, v7, v1}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->timeSpentOnRAT(ILjava/lang/String;Ljava/lang/String;Z)V

    iget v1, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mNetworkType:I

    if-eq v4, v1, :cond_e

    iget v1, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mNetworkType:I

    iput v1, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mOldNetworkType:I

    iput v4, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mNetworkType:I

    :cond_e
    iget v1, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mServiceState:I

    if-nez v1, :cond_f

    if-eqz v2, :cond_f

    if-eq v2, v10, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->startVoiceOutOfService()V

    goto :goto_5

    :cond_f
    iget v1, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mServiceState:I

    if-eqz v1, :cond_10

    if-nez v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->stopVoiceOutOfServiceAndLogEvent()V

    :cond_10
    :goto_5
    iget-object v1, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Lcom/motorola/bach/modemstats/utils/TelephonyUtils;->getActiveDataSubscription()I

    move-result v5

    if-ne v1, v5, :cond_12

    iget v1, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataServiceState:I

    if-nez v1, :cond_11

    if-eqz v3, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->startDataOutOfService()V

    goto :goto_6

    :cond_11
    iget v1, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataServiceState:I

    if-eqz v1, :cond_12

    if-nez v3, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->stopDataOutOfService()V

    :cond_12
    :goto_6
    iget v1, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataServiceState:I

    if-nez v1, :cond_13

    if-eqz v3, :cond_13

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataActivity:Z

    :cond_13
    iput v2, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mServiceState:I

    iput v3, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataServiceState:I

    iget-object v1, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Lcom/motorola/bach/modemstats/utils/TelephonyUtils;->getActiveDataSubscription()I

    move-result v2

    if-ne v1, v2, :cond_15

    sget-object v1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iget v2, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mNetworkType:I

    iput v2, v1, Lcom/motorola/bach/modemstats/ModemStatsService;->mNetworkType:I

    sget-object v1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iget v2, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mOldNetworkType:I

    iput v2, v1, Lcom/motorola/bach/modemstats/ModemStatsService;->mOldNetworkType:I

    sget-object v1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    iget v2, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mServiceState:I

    iput v2, v1, Lcom/motorola/bach/modemstats/ModemStatsService;->mServiceState:I

    sget-object v1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget v1, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataServiceState:I

    sput v1, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mDataServiceState:I

    sget-object v1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    sget-boolean v1, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mLteCamped:Z

    if-nez v1, :cond_14

    iget v1, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataServiceState:I

    if-nez v1, :cond_14

    iget v0, v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mNetworkType:I

    const/16 v1, 0xd

    if-ne v1, v0, :cond_14

    sget-object v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mLteCamped:Z

    :cond_14
    sget-object v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataStallManager:Lcom/motorola/bach/modemstats/datastall/MDataStallManager;

    iget-object v0, v0, Lcom/motorola/bach/modemstats/datastall/MDataStallManager;->mDataStallInstance:Lcom/motorola/bach/modemstats/datastall/DataStallBase;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataStallManager:Lcom/motorola/bach/modemstats/datastall/MDataStallManager;

    iget-object v0, v0, Lcom/motorola/bach/modemstats/datastall/MDataStallManager;->mDataStallInstance:Lcom/motorola/bach/modemstats/datastall/DataStallBase;

    invoke-virtual {v0, v3, v4}, Lcom/motorola/bach/modemstats/datastall/DataStallBase;->onServiceStateChanged(II)V

    :cond_15
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 8

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataRadioTechnology:I

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
    const-string v2, ", mSnr="

    const-string v3, ", mEcio="

    const-string v4, "Subscription: "

    const v5, 0x7fffffff

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->isLte()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteSignalStrength()I

    move-result v0

    if-eq v5, v0, :cond_2

    iput v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mRssi:I

    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v1

    if-eq v5, v1, :cond_3

    iput v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mEcio:I

    :cond_3
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRssnr()I

    move-result v6

    if-eq v5, v6, :cond_4

    iput v6, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSnr:I

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", LTE mRssi="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v0

    if-eq v5, v0, :cond_6

    iput v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mRssi:I

    :cond_6
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmBitErrorRate()I

    move-result v2

    if-eq v5, v2, :cond_7

    iput v2, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mEcio:I

    :cond_7
    iput v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSnr:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", GSM mRssi="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->isEvdo()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    if-eq v5, v0, :cond_9

    iput v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mRssi:I

    :cond_9
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v1

    if-eq v5, v1, :cond_a

    iput v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mEcio:I

    :cond_a
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v6

    if-eq v5, v6, :cond_b

    iput v6, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSnr:I

    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", EVDO mRssi="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    if-eq v5, v0, :cond_d

    iput v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mRssi:I

    :cond_d
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    if-eq v5, v2, :cond_e

    iput v2, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mEcio:I

    :cond_e
    iput v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSnr:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", CDMA mRssi="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

    :goto_2
    invoke-static {p1}, Lcom/motorola/bach/modemstats/utils/TelephonyUtils;->getRsrpFromSignalStrength(Landroid/telephony/SignalStrength;)Lcom/motorola/bach/modemstats/utils/TelephonyUtils$SignalStrengthParam;

    move-result-object p1

    new-instance v0, Lcom/motorola/bach/modemstats/call/SimBean;

    invoke-direct {v0}, Lcom/motorola/bach/modemstats/call/SimBean;-><init>()V

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/motorola/bach/modemstats/call/SimBean;->subId:I

    iget v1, p1, Lcom/motorola/bach/modemstats/utils/TelephonyUtils$SignalStrengthParam;->mRsrp:I

    iput v1, v0, Lcom/motorola/bach/modemstats/call/SimBean;->rsrp:I

    iget v1, p1, Lcom/motorola/bach/modemstats/utils/TelephonyUtils$SignalStrengthParam;->mRsrq:I

    iput v1, v0, Lcom/motorola/bach/modemstats/call/SimBean;->rsrq:I

    iget v1, p1, Lcom/motorola/bach/modemstats/utils/TelephonyUtils$SignalStrengthParam;->mSinr:I

    iput v1, v0, Lcom/motorola/bach/modemstats/call/SimBean;->sinr:I

    invoke-virtual {p0, v0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->setSimBean(Lcom/motorola/bach/modemstats/call/SimBean;)V

    sget-object v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget v0, p1, Lcom/motorola/bach/modemstats/utils/TelephonyUtils$SignalStrengthParam;->mSinr:I

    sput v0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mSinr:I

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/motorola/bach/modemstats/utils/TelephonyUtils;->getActiveDataSubscription()I

    move-result v1

    if-ne v0, v1, :cond_f

    sget-object v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget v0, p1, Lcom/motorola/bach/modemstats/utils/TelephonyUtils$SignalStrengthParam;->mRsrp:I

    sput v0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mRsrp:I

    sget-object v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget v0, p1, Lcom/motorola/bach/modemstats/utils/TelephonyUtils$SignalStrengthParam;->mRsrq:I

    sput v0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mRsrq:I

    sget-object v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mRssi:I

    sput v0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mRssi:I

    sget-object v0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mModemStatsUtils:Lcom/motorola/bach/modemstats/ModemStatsUtils;

    iget v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mEcio:I

    sput v0, Lcom/motorola/bach/modemstats/ModemStatsUtils;->mEcio:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRsrp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Lcom/motorola/bach/modemstats/utils/TelephonyUtils$SignalStrengthParam;->mRsrp:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->logd(Ljava/lang/String;)V

    sget-object p1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataStallManager:Lcom/motorola/bach/modemstats/datastall/MDataStallManager;

    iget-object p1, p1, Lcom/motorola/bach/modemstats/datastall/MDataStallManager;->mDataStallInstance:Lcom/motorola/bach/modemstats/datastall/DataStallBase;

    if-eqz p1, :cond_f

    sget-object p1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataStallManager:Lcom/motorola/bach/modemstats/datastall/MDataStallManager;

    iget-object p1, p1, Lcom/motorola/bach/modemstats/datastall/MDataStallManager;->mDataStallInstance:Lcom/motorola/bach/modemstats/datastall/DataStallBase;

    iget p0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mRssi:I

    invoke-virtual {p1, p0}, Lcom/motorola/bach/modemstats/datastall/DataStallBase;->onSignalStrengthChanged(I)V

    :cond_f
    return-void
.end method

.method protected setVoiceCallActive(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceCallActive:Z

    iget-object v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/motorola/bach/modemstats/utils/TelephonyUtils;->getActiveDataSubscription()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.internal.intent.action.DATA_UNAVAILABLE_FOR_VOICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.motorola.internal.intent.extra.DATA_UNAVAILABLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object p1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    invoke-virtual {p1}, Lcom/motorola/bach/modemstats/ModemStatsService;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mService:Lcom/motorola/bach/modemstats/ModemStatsService;

    invoke-virtual {p1, v0}, Lcom/motorola/bach/modemstats/ModemStatsService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    iget-object p1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mVoiceOOSStartData:Lcom/motorola/bach/modemstats/MPhoneStateListener$OOSStartData;

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->isSVLTE()Z

    move-result p1

    if-nez p1, :cond_2

    iget p1, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mNetworkType:I

    iget v0, p0, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->mDataServiceState:I

    invoke-virtual {p0, p1, v0}, Lcom/motorola/bach/modemstats/MSimPhoneStateListener;->checkImsRegistrationState(II)V

    :cond_2
    return-void
.end method
