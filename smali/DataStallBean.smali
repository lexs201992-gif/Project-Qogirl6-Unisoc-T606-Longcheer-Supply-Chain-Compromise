.class public Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;
.super Ljava/lang/Object;
.source "DataStallBean.java"


# instance fields
.field private band:I

.field private channel:I

.field private dataStallInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$DataStallInfos;

.field private disp_on:Z

.field private hplmn:Ljava/lang/String;

.field private multiRab:Z

.field private networkType:I

.field private plmn:Ljava/lang/String;

.field private rat:Ljava/lang/String;

.field private roam:Z

.field private rsrp:I

.field private rsrq:I

.field private rssi:I

.field private sinr:I

.field private slot:I

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBand()I
    .locals 0

    iget p0, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->band:I

    return p0
.end method

.method public getChannel()I
    .locals 0

    iget p0, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->channel:I

    return p0
.end method

.method public getDataStallInfos()Lcom/motorola/android/telephony/MotoExtTelephonyInfo$DataStallInfos;
    .locals 0

    iget-object p0, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->dataStallInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$DataStallInfos;

    return-object p0
.end method

.method public getDisp_on()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->disp_on:Z

    return p0
.end method

.method public getHplmn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->hplmn:Ljava/lang/String;

    return-object p0
.end method

.method public getMultiRab()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->multiRab:Z

    return p0
.end method

.method public getNetworkType()I
    .locals 0

    iget p0, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->networkType:I

    return p0
.end method

.method public getPlmn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->plmn:Ljava/lang/String;

    return-object p0
.end method

.method public getRat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->rat:Ljava/lang/String;

    return-object p0
.end method

.method public getRoam()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->roam:Z

    return p0
.end method

.method public getRsrp()I
    .locals 0

    iget p0, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->rsrp:I

    return p0
.end method

.method public getRsrq()I
    .locals 0

    iget p0, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->rsrq:I

    return p0
.end method

.method public getRssi()I
    .locals 0

    iget p0, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->rssi:I

    return p0
.end method

.method public getSinr()I
    .locals 0

    iget p0, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->sinr:I

    return p0
.end method

.method public getSlot()I
    .locals 0

    iget p0, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->slot:I

    return p0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->time:J

    return-wide v0
.end method

.method public setBand(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->band:I

    return-void
.end method

.method public setChannel(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->channel:I

    return-void
.end method

.method public setDataStallInfos(Lcom/motorola/android/telephony/MotoExtTelephonyInfo$DataStallInfos;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->dataStallInfos:Lcom/motorola/android/telephony/MotoExtTelephonyInfo$DataStallInfos;

    return-void
.end method

.method public setDisp_on(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->disp_on:Z

    return-void
.end method

.method public setHplmn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->hplmn:Ljava/lang/String;

    return-void
.end method

.method public setMultiRab(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->multiRab:Z

    return-void
.end method

.method public setNetworkType(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->networkType:I

    return-void
.end method

.method public setPlmn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->plmn:Ljava/lang/String;

    return-void
.end method

.method public setRat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->rat:Ljava/lang/String;

    return-void
.end method

.method public setRoam(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->roam:Z

    return-void
.end method

.method public setRsrp(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->rsrp:I

    return-void
.end method

.method public setRsrq(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->rsrq:I

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->rssi:I

    return-void
.end method

.method public setSinr(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->sinr:I

    return-void
.end method

.method public setSlot(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->slot:I

    return-void
.end method

.method public setTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/motorola/bach/modemstats/datastall/smart5g/DataStallBean;->time:J

    return-void
.end method
