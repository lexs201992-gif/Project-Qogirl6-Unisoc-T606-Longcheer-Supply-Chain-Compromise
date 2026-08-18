.class public Lcom/motorola/motocit/irsensor/IRGuesture;
.super Lcom/motorola/motocit/Test_Base;
.source "IRGuesture.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static final mSENSOR_IR_RAW_DATA:I = 0x10006


# instance fields
.field private final PRECISION:I

.field private final UI_UPDATE_RATE:J

.field activityStartedFromCommServer:Z

.field fIrGuestureAmbientHighValue:D

.field fIrGuestureAmbientLowValue:D

.field fIrGuestureHighBothBottomValue:D

.field fIrGuestureHighBottomLeftValue:D

.field fIrGuestureHighBottomRightValue:D

.field fIrGuestureHighTopRightValue:D

.field fIrGuestureLowBothBottomValue:D

.field fIrGuestureLowBottomLeftValue:D

.field fIrGuestureLowBottomRightValue:D

.field fIrGuestureLowTopRightValue:D

.field fMaxIrGuestureAmbientHighValue:D

.field fMaxIrGuestureAmbientLowValue:D

.field fMaxIrGuestureHighBothBottomValue:D

.field fMaxIrGuestureHighBottomLeftValue:D

.field fMaxIrGuestureHighBottomRightValue:D

.field fMaxIrGuestureHighTopRightValue:D

.field fMaxIrGuestureLowBothBottomValue:D

.field fMaxIrGuestureLowBottomLeftValue:D

.field fMaxIrGuestureLowBottomRightValue:D

.field fMaxIrGuestureLowTopRightValue:D

.field fMinIrGuestureAmbientHighValue:D

.field fMinIrGuestureAmbientLowValue:D

.field fMinIrGuestureHighBothBottomValue:D

.field fMinIrGuestureHighBottomLeftValue:D

.field fMinIrGuestureHighBottomRightValue:D

.field fMinIrGuestureHighTopRightValue:D

.field fMinIrGuestureLowBothBottomValue:D

.field fMinIrGuestureLowBottomLeftValue:D

.field fMinIrGuestureLowBottomRightValue:D

.field fMinIrGuestureLowTopRightValue:D

.field private lastUiUpdateTime:J

.field mIRGuesture:D

.field private mIrGuestureAmbientHigh:Landroid/widget/TextView;

.field private mIrGuestureAmbientHighMax:Landroid/widget/TextView;

.field private mIrGuestureAmbientHighMin:Landroid/widget/TextView;

.field mIrGuestureAmbientHighValue:D

.field private mIrGuestureAmbientLow:Landroid/widget/TextView;

.field private mIrGuestureAmbientLowMax:Landroid/widget/TextView;

.field private mIrGuestureAmbientLowMin:Landroid/widget/TextView;

.field mIrGuestureAmbientLowValue:D

.field private mIrGuestureHighBothBottom:Landroid/widget/TextView;

.field private mIrGuestureHighBothBottomMax:Landroid/widget/TextView;

.field private mIrGuestureHighBothBottomMin:Landroid/widget/TextView;

.field mIrGuestureHighBothBottomValue:D

.field private mIrGuestureHighBottomLeft:Landroid/widget/TextView;

.field private mIrGuestureHighBottomLeftMax:Landroid/widget/TextView;

.field private mIrGuestureHighBottomLeftMin:Landroid/widget/TextView;

.field mIrGuestureHighBottomLeftValue:D

.field private mIrGuestureHighBottomRight:Landroid/widget/TextView;

.field private mIrGuestureHighBottomRightMax:Landroid/widget/TextView;

.field private mIrGuestureHighBottomRightMin:Landroid/widget/TextView;

.field mIrGuestureHighBottomRightValue:D

.field private mIrGuestureHighTopRight:Landroid/widget/TextView;

.field private mIrGuestureHighTopRightMax:Landroid/widget/TextView;

.field private mIrGuestureHighTopRightMin:Landroid/widget/TextView;

.field mIrGuestureHighTopRightValue:D

.field private mIrGuestureLowBothBottom:Landroid/widget/TextView;

.field private mIrGuestureLowBothBottomMax:Landroid/widget/TextView;

.field private mIrGuestureLowBothBottomMin:Landroid/widget/TextView;

.field mIrGuestureLowBothBottomValue:D

.field private mIrGuestureLowBottomLeft:Landroid/widget/TextView;

.field private mIrGuestureLowBottomLeftMax:Landroid/widget/TextView;

.field private mIrGuestureLowBottomLeftMin:Landroid/widget/TextView;

.field mIrGuestureLowBottomLeftValue:D

.field private mIrGuestureLowBottomRight:Landroid/widget/TextView;

.field private mIrGuestureLowBottomRightMax:Landroid/widget/TextView;

.field private mIrGuestureLowBottomRightMin:Landroid/widget/TextView;

.field mIrGuestureLowBottomRightValue:D

.field private mIrGuestureLowTopRight:Landroid/widget/TextView;

.field private mIrGuestureLowTopRightMax:Landroid/widget/TextView;

.field private mIrGuestureLowTopRightMin:Landroid/widget/TextView;

.field mIrGuestureLowTopRightValue:D

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private sensorListenerRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/motorola/motocit/Test_Base;-><init>()V

    const-wide v0, -0x3f3c788000000000L    # -9999.0

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fIrGuestureHighTopRightValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fIrGuestureHighBottomLeftValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fIrGuestureHighBottomRightValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fIrGuestureHighBothBottomValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fIrGuestureLowTopRightValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fIrGuestureLowBottomLeftValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fIrGuestureLowBottomRightValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fIrGuestureLowBothBottomValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fIrGuestureAmbientHighValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fIrGuestureAmbientLowValue:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureHighTopRightValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureHighBottomLeftValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureHighBottomRightValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureHighBothBottomValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureLowTopRightValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureLowBottomLeftValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureLowBottomRightValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureLowBothBottomValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureAmbientHighValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureAmbientLowValue:D

    const-wide v0, 0x40c3878000000000L    # 9999.0

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureHighTopRightValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureHighBottomLeftValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureHighBottomRightValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureHighBothBottomValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureLowTopRightValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureLowBottomLeftValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureLowBottomRightValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureLowBothBottomValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureAmbientHighValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureAmbientLowValue:D

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIRGuesture:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->activityStartedFromCommServer:Z

    const-wide/16 v1, 0xc8

    iput-wide v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->UI_UPDATE_RATE:J

    const/4 v1, 0x2

    iput v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->PRECISION:I

    iput-boolean v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->sensorListenerRegistered:Z

    return-void
.end method

.method private logResults(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "High_POWER_TOP_RIGHT"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "HIGH_POWER_BOTTOM_LEFT"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "HIGH_POWER_BOTTOM_RIGHT"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "HIGH_POWER_BOTH_BOTTOM"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "LOW_POWER_TOP_RIGHT"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "LOW_POWER_BOTTOM_LEFT"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "LOW_POWER_BOTTOM_RIGHT"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "LOW_POWER_BOTH_BOTTOM"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "AMBIENT_PRE_HIGH"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "AMBIENT_PRE_LOW"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighTopRightValue:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomLeftValue:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomRightValue:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBothBottomValue:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowTopRightValue:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomLeftValue:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomRightValue:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBothBottomValue:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientHighValue:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientLowValue:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->logTestResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected handleTestSpecificActions()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/motocit/CmdFailException;,
            Lcom/motorola/motocit/CmdPassException;
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->strRxCmd:Ljava/lang/String;

    const-string v1, "GET_READING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x69

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0x14

    if-ge v0, v4, :cond_0

    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIRGuesture:D

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->TAG:Ljava/lang/String;

    const-string v5, "delay to retry"

    invoke-virtual {p0, v4, v5, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5, v3}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "High_POWER_TOP_RIGHT="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighTopRightValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HIGH_POWER_BOTTOM_LEFT="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomLeftValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HIGH_POWER_BOTTOM_RIGHT="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomRightValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HIGH_POWER_BOTH_BOTTOM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBothBottomValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOW_POWER_TOP_RIGHT="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowTopRightValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOW_POWER_BOTTOM_LEFT="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomLeftValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOW_POWER_BOTTOM_RIGHT="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomRightValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOW_POWER_BOTH_BOTTOM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBothBottomValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AMBIENT_PRE_HIGH="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientHighValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AMBIENT_PRE_LOW="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientLowValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "High_POWER_TOP_RIGHT_MAX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureHighTopRightValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HIGH_POWER_BOTTOM_LEFT_MAX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureHighBottomLeftValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HIGH_POWER_BOTTOM_RIGHT_MAX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureHighBottomRightValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HIGH_POWER_BOTH_BOTTOM_MAX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureHighBothBottomValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOW_POWER_TOP_RIGHT_MAX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureLowTopRightValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOW_POWER_BOTTOM_LEFT_MAX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureLowBottomLeftValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOW_POWER_BOTTOM_RIGHT_MAX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureLowBottomRightValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOW_POWER_BOTH_BOTTOM_MAX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureLowBothBottomValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AMBIENT_PRE_HIGH_MAX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureAmbientHighValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AMBIENT_PRE_LOW_MAX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureAmbientLowValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "High_POWER_TOP_RIGHT_MIN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureHighTopRightValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HIGH_POWER_BOTTOM_LEFT_MIN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureHighBottomLeftValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HIGH_POWER_BOTTOM_RIGHT_MIN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureHighBottomRightValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HIGH_POWER_BOTH_BOTTOM_MIN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureHighBothBottomValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOW_POWER_TOP_RIGHT_MIN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureLowTopRightValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOW_POWER_BOTTOM_LEFT_MIN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureLowBottomLeftValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOW_POWER_BOTTOM_RIGHT_MIN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureLowBottomRightValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOW_POWER_BOTH_BOTTOM_MIN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureLowBothBottomValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AMBIENT_PRE_HIGH_MIN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureAmbientHighValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AMBIENT_PRE_LOW_MIN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureAmbientLowValue:D

    invoke-static {v5, v6, v2}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CommServerDataPacket;

    iget v3, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->strRxCmd:Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->TAG:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/motocit/CmdPassException;

    iget v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->nRxSeqTag:I

    iget-object v6, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->strRxCmd:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v3}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v4

    :cond_1
    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->strRxCmd:Ljava/lang/String;

    const-string v4, "CLEAR_MAX_MIN_READINGS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->strRxCmd:Ljava/lang/String;

    const-string v4, "GET_SENSOR_INFO"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mSensorManager:Landroid/hardware/SensorManager;

    const v4, 0x10006

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "Sensor manager returned null for requested sensor"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->TAG:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v5, v3, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v3, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->nRxSeqTag:I

    iget-object v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v3, v5, v4}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MAXIMUM_RANGE="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MIN_DELAY="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMinDelay()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NAME="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "POWER="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getPower()F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RESOLUTION="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getResolution()F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TYPE="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VENDOR="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VERSION="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getVersion()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CommServerDataPacket;

    iget v3, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->strRxCmd:Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->TAG:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/motocit/CmdPassException;

    iget v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->nRxSeqTag:I

    iget-object v6, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->strRxCmd:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v3}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v4

    :cond_3
    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->strRxCmd:Ljava/lang/String;

    const-string v4, "help"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/motorola/motocit/irsensor/IRGuesture;->printHelp()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->TAG:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "%s help printed"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CmdPassException;

    iget v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->TAG:Ljava/lang/String;

    aput-object v5, v2, v3

    iget-object v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->strRxCmd:Ljava/lang/String;

    aput-object v5, v2, v4

    const-string v4, "Activity \'%s\' does not recognize command \'%s\'"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->TAG:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_5
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureHighTopRightValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureHighBottomLeftValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureHighBottomRightValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureHighBothBottomValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureLowTopRightValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureLowBottomLeftValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureLowBottomRightValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureLowBothBottomValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureAmbientHighValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureAmbientLowValue:D

    const-wide v0, 0x40c3878000000000L    # 9999.0

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureHighTopRightValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureHighBottomLeftValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureHighBottomRightValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureHighBothBottomValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureLowTopRightValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureLowBottomLeftValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureLowBottomRightValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureLowBothBottomValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureAmbientHighValue:D

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureAmbientLowValue:D

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/motorola/motocit/CmdPassException;

    iget v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "Sensor_IRGuesture"

    iput-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->TAG:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/motorola/motocit/Test_Base;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/irsensor/IRGuesture;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mSensorManager:Landroid/hardware/SensorManager;

    const v0, 0x7f08003e

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/irsensor/IRGuesture;->adjustViewDisplayArea(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mGestureListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mGestureListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    const v1, 0x7f0600c7

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighTopRight:Landroid/widget/TextView;

    const v1, 0x7f0600c5

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomLeft:Landroid/widget/TextView;

    const v1, 0x7f0600c6

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomRight:Landroid/widget/TextView;

    const v1, 0x7f0600c4

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBothBottom:Landroid/widget/TextView;

    const v1, 0x7f0600cb

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowTopRight:Landroid/widget/TextView;

    const v1, 0x7f0600c9

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomLeft:Landroid/widget/TextView;

    const v1, 0x7f0600ca

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomRight:Landroid/widget/TextView;

    const v1, 0x7f0600c8

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBothBottom:Landroid/widget/TextView;

    const v1, 0x7f0600c2

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientHigh:Landroid/widget/TextView;

    const v1, 0x7f0600c3

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientLow:Landroid/widget/TextView;

    const v1, 0x7f0600f8

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighTopRightMax:Landroid/widget/TextView;

    const v1, 0x7f06010f

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighTopRightMin:Landroid/widget/TextView;

    const v1, 0x7f0600f6

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomLeftMax:Landroid/widget/TextView;

    const v1, 0x7f06010d

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomLeftMin:Landroid/widget/TextView;

    const v1, 0x7f0600f7

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomRightMax:Landroid/widget/TextView;

    const v1, 0x7f06010e

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomRightMin:Landroid/widget/TextView;

    const v1, 0x7f0600f5

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBothBottomMax:Landroid/widget/TextView;

    const v1, 0x7f06010c

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBothBottomMin:Landroid/widget/TextView;

    const v1, 0x7f0600fc

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowTopRightMax:Landroid/widget/TextView;

    const v1, 0x7f060113

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowTopRightMin:Landroid/widget/TextView;

    const v1, 0x7f0600fa

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomLeftMax:Landroid/widget/TextView;

    const v1, 0x7f060111

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomLeftMin:Landroid/widget/TextView;

    const v1, 0x7f0600fb

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomRightMax:Landroid/widget/TextView;

    const v1, 0x7f060112

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomRightMin:Landroid/widget/TextView;

    const v1, 0x7f0600f9

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBothBottomMax:Landroid/widget/TextView;

    const v1, 0x7f060110

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBothBottomMin:Landroid/widget/TextView;

    const v1, 0x7f0600f3

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientHighMax:Landroid/widget/TextView;

    const v1, 0x7f06010a

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientHighMin:Landroid/widget/TextView;

    const v1, 0x7f0600f4

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientLowMax:Landroid/widget/TextView;

    const v1, 0x7f06010b

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientLowMin:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->lastUiUpdateTime:J

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onDestroy()V

    iget-boolean v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->sensorListenerRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->TAG:Ljava/lang/String;

    const/16 v1, 0x69

    const-string v2, "onDestroy() unregister sensor listener"

    invoke-virtual {p0, v0, v2, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->sensorListenerRegistered:Z

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8

    invoke-virtual {p0}, Lcom/motorola/motocit/irsensor/IRGuesture;->wasActivityStartedByCommServer()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/motorola/motocit/TestUtils;->getPassFailMethods()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VOLUME_KEYS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

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

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/irsensor/IRGuesture;->modeCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/irsensor/IRGuesture;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v2

    :cond_2
    invoke-virtual {p0, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->systemExitWrapper(I)V

    goto/16 :goto_3

    :cond_3
    :goto_0
    const v3, 0x8000

    const-string v4, "testresult.txt"

    if-ne p1, v0, :cond_4

    const-string v0, "IR Gesture Test: PASS\r\n"

    invoke-virtual {p0, v4, v0, v3}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "FAIL"

    invoke-direct {p0, v0}, Lcom/motorola/motocit/irsensor/IRGuesture;->logResults(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "IR Gesture Test: FAILED\r\n"

    invoke-virtual {p0, v4, v0, v3}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "PASS"

    invoke-direct {p0, v0}, Lcom/motorola/motocit/irsensor/IRGuesture;->logResults(Ljava/lang/String;)V

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HIGH_POWER_TOP_RIGHT="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighTopRightValue:D

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v3}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HIGH_POWER_BOTTOM_LEFT="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomLeftValue:D

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v3}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HIGH_POWER_BOTTOM_RIGHT="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomRightValue:D

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v3}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HIGH_POWER_BOTH_BOTTOM="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBothBottomValue:D

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v3}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LOW_POWER_TOP_RIGHT="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowTopRightValue:D

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v3}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LOW_POWER_BOTTOM_LEFT="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomLeftValue:D

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v3}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LOW_POWER_BOTTOM_RIGHT="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomRightValue:D

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v3}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LOW_POWER_BOTH_BOTTOM="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBothBottomValue:D

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v3}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AMBIENT_PRE_HIGH="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientHighValue:D

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v3}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AMBIENT_PRE_LOW="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientLowValue:D

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, "\r\n\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v3}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

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
    invoke-virtual {p0, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->systemExitWrapper(I)V

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

    invoke-virtual {p0}, Lcom/motorola/motocit/irsensor/IRGuesture;->wasActivityStartedByCommServer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/motocit/irsensor/IRGuesture;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->TAG:Ljava/lang/String;

    const/16 v1, 0x69

    const-string v2, "onPause() unregister sensor listener"

    invoke-virtual {p0, v0, v2, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->sensorListenerRegistered:Z

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 6

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onResume()V

    iget-boolean v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->sensorListenerRegistered:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->TAG:Ljava/lang/String;

    const-string v1, "onResume() register sensor listener"

    const/16 v2, 0x69

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-virtual {p0}, Lcom/motorola/motocit/irsensor/IRGuesture;->wasActivityStartedByCommServer()Z

    move-result v0

    const/4 v1, 0x1

    const v3, 0x10006

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->activityStartedFromCommServer:Z

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->TAG:Ljava/lang/String;

    const-string v5, "activity originated from commserver.. setting update rate to fastest"

    invoke-virtual {p0, v0, v5, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, p0, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    :cond_0
    iput-boolean v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->activityStartedFromCommServer:Z

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->TAG:Ljava/lang/String;

    const-string v4, "activity originated UI .. setting update rate to UI rate"

    invoke-virtual {p0, v0, v4, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :goto_0
    iput-boolean v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->sensorListenerRegistered:Z

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/motocit/irsensor/IRGuesture;->sendStartActivityPassed()V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x10006

    if-ne v0, v1, :cond_14

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIRGuesture:D

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighTopRightValue:D

    iget-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureHighTopRightValue:D

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureHighTopRightValue:D

    :cond_0
    iget-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureHighTopRightValue:D

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureHighTopRightValue:D

    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomLeftValue:D

    iget-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureHighBottomLeftValue:D

    cmpl-double v2, v0, v2

    if-lez v2, :cond_2

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureHighBottomLeftValue:D

    :cond_2
    iget-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureHighBottomLeftValue:D

    cmpg-double v2, v0, v2

    if-gez v2, :cond_3

    iput-wide v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureHighBottomLeftValue:D

    :cond_3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    float-to-double v2, v0

    iput-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomRightValue:D

    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureHighBottomRightValue:D

    cmpl-double v0, v2, v4

    if-lez v0, :cond_4

    iput-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureHighBottomRightValue:D

    :cond_4
    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureHighBottomRightValue:D

    cmpg-double v0, v2, v4

    if-gez v0, :cond_5

    iput-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureHighBottomRightValue:D

    :cond_5
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x3

    aget v0, v0, v2

    float-to-double v2, v0

    iput-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBothBottomValue:D

    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureHighBothBottomValue:D

    cmpl-double v0, v2, v4

    if-lez v0, :cond_6

    iput-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureHighBothBottomValue:D

    :cond_6
    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureHighBothBottomValue:D

    cmpg-double v0, v2, v4

    if-gez v0, :cond_7

    iput-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureHighBothBottomValue:D

    :cond_7
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x4

    aget v0, v0, v2

    float-to-double v2, v0

    iput-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowTopRightValue:D

    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureLowTopRightValue:D

    cmpl-double v0, v2, v4

    if-lez v0, :cond_8

    iput-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureLowTopRightValue:D

    :cond_8
    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureLowTopRightValue:D

    cmpg-double v0, v2, v4

    if-gez v0, :cond_9

    iput-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureLowTopRightValue:D

    :cond_9
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x5

    aget v0, v0, v2

    float-to-double v2, v0

    iput-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomLeftValue:D

    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureLowBottomLeftValue:D

    cmpl-double v0, v2, v4

    if-lez v0, :cond_a

    iput-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureLowBottomLeftValue:D

    :cond_a
    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureLowBottomLeftValue:D

    cmpg-double v0, v2, v4

    if-gez v0, :cond_b

    iput-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureLowBottomLeftValue:D

    :cond_b
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x6

    aget v0, v0, v2

    float-to-double v2, v0

    iput-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomRightValue:D

    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureLowBottomRightValue:D

    cmpl-double v0, v2, v4

    if-lez v0, :cond_c

    iput-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureLowBottomRightValue:D

    :cond_c
    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureLowBottomRightValue:D

    cmpg-double v0, v2, v4

    if-gez v0, :cond_d

    iput-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureLowBottomRightValue:D

    :cond_d
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x7

    aget v0, v0, v2

    float-to-double v2, v0

    iput-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBothBottomValue:D

    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureLowBothBottomValue:D

    cmpl-double v0, v2, v4

    if-lez v0, :cond_e

    iput-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureLowBothBottomValue:D

    :cond_e
    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureLowBothBottomValue:D

    cmpg-double v0, v2, v4

    if-gez v0, :cond_f

    iput-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureLowBothBottomValue:D

    :cond_f
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/16 v2, 0x8

    aget v0, v0, v2

    float-to-double v2, v0

    iput-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientHighValue:D

    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureAmbientHighValue:D

    cmpl-double v0, v2, v4

    if-lez v0, :cond_10

    iput-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureAmbientHighValue:D

    :cond_10
    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureAmbientHighValue:D

    cmpg-double v0, v2, v4

    if-gez v0, :cond_11

    iput-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureAmbientHighValue:D

    :cond_11
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/16 v2, 0x9

    aget v0, v0, v2

    float-to-double v2, v0

    iput-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientLowValue:D

    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureAmbientLowValue:D

    cmpl-double v0, v2, v4

    if-lez v0, :cond_12

    iput-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureAmbientLowValue:D

    :cond_12
    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureAmbientLowValue:D

    cmpg-double v0, v2, v4

    if-gez v0, :cond_13

    iput-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureAmbientLowValue:D

    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->lastUiUpdateTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v0, v2, v4

    if-lez v0, :cond_14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->lastUiUpdateTime:J

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->TAG:Ljava/lang/String;

    const/16 v2, 0x69

    const-string v3, "sensor: IR Guesture sensor receive event, getting value"

    invoke-virtual {p0, v0, v3, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighTopRight:Landroid/widget/TextView;

    const v2, -0xff0100

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighTopRight:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighTopRightValue:D

    invoke-static {v5, v6, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighTopRightMax:Landroid/widget/TextView;

    const/high16 v3, -0x10000

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighTopRightMax:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Max:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureHighTopRightValue:D

    invoke-static {v7, v8, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighTopRightMin:Landroid/widget/TextView;

    const/16 v5, -0x100

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighTopRightMin:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Min"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureHighTopRightValue:D

    invoke-static {v9, v10, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomLeft:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomLeftValue:D

    invoke-static {v9, v10, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomLeftMax:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomLeftMax:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureHighBottomLeftValue:D

    invoke-static {v9, v10, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomLeftMin:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomLeftMin:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureHighBottomLeftValue:D

    invoke-static {v9, v10, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomRight:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomRightValue:D

    invoke-static {v9, v10, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomRightMax:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomRightMax:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureHighBottomRightValue:D

    invoke-static {v9, v10, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomRightMin:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomRightMin:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureHighBottomRightValue:D

    invoke-static {v9, v10, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBothBottom:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBothBottom:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBothBottomValue:D

    invoke-static {v9, v10, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBothBottomMax:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBothBottomMax:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureHighBothBottomValue:D

    invoke-static {v9, v10, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBothBottomMin:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBothBottomMin:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureHighBothBottomValue:D

    invoke-static {v9, v10, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowTopRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowTopRight:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowTopRightValue:D

    invoke-static {v9, v10, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowTopRightMax:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowTopRightMax:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureLowTopRightValue:D

    invoke-static {v9, v10, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowTopRightMin:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowTopRightMin:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureLowTopRightValue:D

    invoke-static {v9, v10, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomLeft:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomLeftValue:D

    invoke-static {v9, v10, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomLeftMax:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomLeftMax:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureLowBottomLeftValue:D

    invoke-static {v9, v10, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomLeftMin:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomLeftMin:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureLowBottomLeftValue:D

    invoke-static {v9, v10, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomRight:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomRightValue:D

    invoke-static {v9, v10, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomRightMax:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomRightMax:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureLowBottomRightValue:D

    invoke-static {v9, v10, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomRightMin:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomRightMin:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureLowBottomRightValue:D

    invoke-static {v9, v10, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBothBottom:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBothBottom:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBothBottomValue:D

    invoke-static {v9, v10, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBothBottomMax:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBothBottomMax:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureLowBothBottomValue:D

    invoke-static {v9, v10, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBothBottomMin:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBothBottomMin:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureLowBothBottomValue:D

    invoke-static {v9, v10, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientHigh:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientHigh:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientHighValue:D

    invoke-static {v9, v10, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientHighMax:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientHighMax:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureAmbientHighValue:D

    invoke-static {v9, v10, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientHighMin:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientHighMin:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureAmbientHighValue:D

    invoke-static {v9, v10, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientLow:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientLow:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientLowValue:D

    invoke-static {v9, v10, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientLowMax:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientLowMax:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMaxIrGuestureAmbientLowValue:D

    invoke-static {v3, v4, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientLowMin:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientLowMin:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->fMinIrGuestureAmbientLowValue:D

    invoke-static {v3, v4, v1}, Lcom/motorola/motocit/TestUtils;->round(DI)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_14
    return-void
.end method

.method public onSwipeDown()Z
    .locals 2

    const-string v0, "Seq"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/irsensor/IRGuesture;->modeCheck(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/irsensor/IRGuesture;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->systemExitWrapper(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSwipeLeft()Z
    .locals 6

    const-string v0, "testresult.txt"

    const-string v1, "IR Gesture Test: PASS\r\n"

    const v2, 0x8000

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HIGH_POWER_TOP_RIGHT="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighTopRightValue:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HIGH_POWER_BOTTOM_LEFT="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomLeftValue:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HIGH_POWER_BOTTOM_RIGHT="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomRightValue:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HIGH_POWER_BOTH_BOTTOM="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBothBottomValue:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOW_POWER_TOP_RIGHT="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowTopRightValue:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOW_POWER_BOTTOM_LEFT="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomLeftValue:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOW_POWER_BOTTOM_RIGHT="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomRightValue:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOW_POWER_BOTH_BOTTOM="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBothBottomValue:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AMBIENT_PRE_HIGH="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientHighValue:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AMBIENT_PRE_LOW="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientLowValue:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "\r\n\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "PASS"

    invoke-direct {p0, v0}, Lcom/motorola/motocit/irsensor/IRGuesture;->logResults(Ljava/lang/String;)V

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
    invoke-virtual {p0, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->systemExitWrapper(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSwipeRight()Z
    .locals 6

    const-string v0, "testresult.txt"

    const-string v1, "IR Gesture Test: FAILED\r\n"

    const v2, 0x8000

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HIGH_POWER_TOP_RIGHT="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighTopRightValue:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HIGH_POWER_BOTTOM_LEFT="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomLeftValue:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HIGH_POWER_BOTTOM_RIGHT="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBottomRightValue:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HIGH_POWER_BOTH_BOTTOM="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureHighBothBottomValue:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOW_POWER_TOP_RIGHT="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowTopRightValue:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOW_POWER_BOTTOM_LEFT="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomLeftValue:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOW_POWER_BOTTOM_RIGHT="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBottomRightValue:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOW_POWER_BOTH_BOTTOM="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureLowBothBottomValue:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AMBIENT_PRE_HIGH="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientHighValue:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AMBIENT_PRE_LOW="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->mIrGuestureAmbientLowValue:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "\r\n\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "FAIL"

    invoke-direct {p0, v0}, Lcom/motorola/motocit/irsensor/IRGuesture;->logResults(Ljava/lang/String;)V

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
    invoke-virtual {p0, v2}, Lcom/motorola/motocit/irsensor/IRGuesture;->systemExitWrapper(I)V

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

    iget-object v1, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "This function will read the IR sensor raw data"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/motorola/motocit/irsensor/IRGuesture;->getBaseHelp()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v1, "Activity Specific Commands"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "GET_READING - Returns IR raw data"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "CLEAR_MAX_MIN_READINGS - Clears Max and Min IR sensor raw values"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "GET_SENSOR_INFO - Returns the following information about the sensor"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, " MAXIMUM_RANGE - maximum range of the sensor in the sensor\'s unit"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, " MIN_DELAY - the minimum delay allowed between two events in microsecond or zero if this sensor only returns a value when the data it\'s measuring changes"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, " NAME - name string of the sensor"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, " POWER - the power in mA used by this sensor while in use"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, " RESOLUTION - resolution of the sensor in the sensor\'s unit"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, " TYPE - generic type of this sensor"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, " VENDOR - vendor string of this sensor"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, " VERSION - version of the sensor\'s module"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CommServerDataPacket;

    iget v2, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->strRxCmd:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/motocit/irsensor/IRGuesture;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/irsensor/IRGuesture;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    return-void
.end method
