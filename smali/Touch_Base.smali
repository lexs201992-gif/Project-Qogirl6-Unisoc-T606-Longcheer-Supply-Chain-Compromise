.class public abstract Lcom/motorola/motocit/touchscreen/Touch_Base;
.super Lcom/motorola/motocit/Test_Base;
.source "Touch_Base.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/motocit/touchscreen/Touch_Base$Touch_View;
    }
.end annotation


# instance fields
.field protected final TEST_STATUS_FAIL:Ljava/lang/String;

.field protected final TEST_STATUS_PASS:Ljava/lang/String;

.field protected final TEST_STATUS_RUNNING:Ljava/lang/String;

.field protected mHandlerInTouch:Landroid/os/Handler;

.field private final mHiderInTouch:Ljava/lang/Runnable;

.field protected testStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/motocit/Test_Base;-><init>()V

    const-string v0, "PASS"

    iput-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TEST_STATUS_PASS:Ljava/lang/String;

    const-string v0, "FAIL"

    iput-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TEST_STATUS_FAIL:Ljava/lang/String;

    const-string v1, "RUNNING"

    iput-object v1, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TEST_STATUS_RUNNING:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->testStatus:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->mHandlerInTouch:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/motocit/touchscreen/Touch_Base$1;

    invoke-direct {v0, p0}, Lcom/motorola/motocit/touchscreen/Touch_Base$1;-><init>(Lcom/motorola/motocit/touchscreen/Touch_Base;)V

    iput-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->mHiderInTouch:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/motocit/touchscreen/Touch_Base;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/motocit/touchscreen/Touch_Base;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/touchscreen/Touch_Base;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/motocit/touchscreen/Touch_Base;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/motorola/motocit/touchscreen/Touch_Base;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/touchscreen/Touch_Base;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$1200(Lcom/motorola/motocit/touchscreen/Touch_Base;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/motorola/motocit/touchscreen/Touch_Base;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/touchscreen/Touch_Base;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$1400(Lcom/motorola/motocit/touchscreen/Touch_Base;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/motorola/motocit/touchscreen/Touch_Base;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/touchscreen/Touch_Base;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$1600(Lcom/motorola/motocit/touchscreen/Touch_Base;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/motorola/motocit/touchscreen/Touch_Base;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/touchscreen/Touch_Base;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$1800(Lcom/motorola/motocit/touchscreen/Touch_Base;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/motorola/motocit/touchscreen/Touch_Base;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/touchscreen/Touch_Base;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/motocit/touchscreen/Touch_Base;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/motocit/touchscreen/Touch_Base;->wasActivityStartedByCommServer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/motorola/motocit/touchscreen/Touch_Base;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/motorola/motocit/touchscreen/Touch_Base;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/touchscreen/Touch_Base;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$2200(Lcom/motorola/motocit/touchscreen/Touch_Base;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/motorola/motocit/touchscreen/Touch_Base;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/touchscreen/Touch_Base;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$2400(Lcom/motorola/motocit/touchscreen/Touch_Base;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/motorola/motocit/touchscreen/Touch_Base;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/touchscreen/Touch_Base;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$2600(Lcom/motorola/motocit/touchscreen/Touch_Base;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/motorola/motocit/touchscreen/Touch_Base;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/touchscreen/Touch_Base;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$2800(Lcom/motorola/motocit/touchscreen/Touch_Base;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/motorola/motocit/touchscreen/Touch_Base;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/touchscreen/Touch_Base;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/motocit/touchscreen/Touch_Base;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/motorola/motocit/touchscreen/Touch_Base;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/motorola/motocit/touchscreen/Touch_Base;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/touchscreen/Touch_Base;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/motocit/touchscreen/Touch_Base;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/touchscreen/Touch_Base;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$500(Lcom/motorola/motocit/touchscreen/Touch_Base;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/motocit/touchscreen/Touch_Base;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/touchscreen/Touch_Base;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$700(Lcom/motorola/motocit/touchscreen/Touch_Base;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/touchscreen/Touch_Base;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$800(Lcom/motorola/motocit/touchscreen/Touch_Base;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/motorola/motocit/touchscreen/Touch_Base;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/touchscreen/Touch_Base;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method


# virtual methods
.method public getDist(FFII)F
    .locals 6

    int-to-float v0, p4

    int-to-float v1, p3

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    float-to-double v2, p1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public goneSystemUi()V
    .locals 2

    const/16 v0, 0x706

    or-int/lit16 v0, v0, 0x1000

    invoke-virtual {p0}, Lcom/motorola/motocit/touchscreen/Touch_Base;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected handleTestSpecificActions()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/motocit/CmdFailException;,
            Lcom/motorola/motocit/CmdPassException;
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->strRxCmd:Ljava/lang/String;

    const-string v1, "GET_TOUCH_RESULT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->strRxCmd:Ljava/lang/String;

    const-string v2, "help"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/motocit/touchscreen/Touch_Base;->printHelp()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "%s help printed"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CmdPassException;

    iget v2, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->strRxCmd:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v2, "Activity \'%s\' does not recognize command \'%s\'"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v3, 0x69

    invoke-virtual {p0, v2, v1, v3}, Lcom/motorola/motocit/touchscreen/Touch_Base;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TOUCH_RESULT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->testStatus:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CommServerDataPacket;

    iget v2, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->strRxCmd:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/touchscreen/Touch_Base;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/motorola/motocit/CmdPassException;

    iget v4, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->nRxSeqTag:I

    iget-object v5, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v2}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3
.end method

.method public onBackPressed()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    const-string v1, "Overriding Back Key to do nothing"

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/touchscreen/Touch_Base;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    new-instance v0, Lcom/motorola/motocit/display/DisplayCutout;

    invoke-direct {v0, p0}, Lcom/motorola/motocit/display/DisplayCutout;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/motorola/motocit/display/DisplayCutout;->openFullScreenModel()V

    invoke-super {p0, p1}, Lcom/motorola/motocit/Test_Base;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->isTouchScreenTest:Z

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/touchscreen/Touch_Base;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/motorola/motocit/touchscreen/Touch_Base;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v5, 0x10700

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    const/16 v4, 0x69

    const-string v5, "[rick debug] set LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES"

    invoke-virtual {p0, v1, v5, v4}, Lcom/motorola/motocit/touchscreen/Touch_Base;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy() called"

    const/16 v2, 0x69

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/touchscreen/Touch_Base;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onDestroy()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->isTouchScreenTest:Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v0, 0x1

    const/16 v1, 0x64

    const/16 v2, 0x18

    if-ne p1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/motocit/touchscreen/Touch_Base;->testFailed()V
    :try_end_0
    .catch Lcom/motorola/motocit/CmdFailException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v3, Lcom/motorola/motocit/CmdFailException;->strErrMsgList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v5, Lcom/motorola/motocit/CommServerDataPacket;

    iget-object v6, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    const-string v7, "FAIL"

    invoke-direct {v5, v2, v7, v6, v4}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v5}, Lcom/motorola/motocit/touchscreen/Touch_Base;->sendUnsolicitedPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    :goto_0
    iget-object v3, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    const-string v4, "Volume Down Key Pressed, previous message should be used to fail test"

    invoke-virtual {p0, v3, v4, v1}, Lcom/motorola/motocit/touchscreen/Touch_Base;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const-wide/16 v3, 0x3e8

    :try_start_1
    invoke-static {v3, v4, v2}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    invoke-virtual {p0}, Lcom/motorola/motocit/touchscreen/Touch_Base;->finish()V

    return v0

    :cond_0
    iget-object v2, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    const-string v3, "Other Key Pressed, nothing should happen"

    invoke-virtual {p0, v2, v3, v1}, Lcom/motorola/motocit/touchscreen/Touch_Base;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return v0
.end method

.method protected onPause()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    const-string v1, "onPause() called"

    const/16 v2, 0x69

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/touchscreen/Touch_Base;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->isTouchScreenTest:Z

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/motorola/motocit/Test_Base;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->isTouchScreenTest:Z

    invoke-virtual {p0}, Lcom/motorola/motocit/touchscreen/Touch_Base;->sendStartActivityPassed()V

    invoke-virtual {p0}, Lcom/motorola/motocit/touchscreen/Touch_Base;->goneSystemUi()V

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

.method public onWindowFocusChanged(Z)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged - Touch_Base: Focus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x69

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/touchscreen/Touch_Base;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    const-string v1, "onWindowFocusChanged - Touch_Base: setting flag to true"

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/touchscreen/Touch_Base;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->isTouchScreenTest:Z

    invoke-virtual {p0}, Lcom/motorola/motocit/touchscreen/Touch_Base;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/motocit/touchscreen/Touch_Base;->wasActivityStartedByCommServer()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    const-string v3, "onWindowFocusChanged - Touch_Base: in IF condition, show keys"

    invoke-virtual {p0, v1, v3, v2}, Lcom/motorola/motocit/touchscreen/Touch_Base;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-virtual {p0}, Lcom/motorola/motocit/touchscreen/Touch_Base;->goneSystemUi()V

    :cond_0
    return-void
.end method

.method protected printHelp()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "This activity tests a touchscreen on a phone by having the operator trace a line as it creates an"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "hourglass pattern on the screen.  Volume Down to fail the test."

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/motorola/motocit/touchscreen/Touch_Base;->getBaseHelp()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v1, "Activity Specific Commands"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "GET_TOUCH_RESULT - returns the TOUCH_RESULT value"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CommServerDataPacket;

    iget v2, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->strRxCmd:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/motocit/touchscreen/Touch_Base;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/touchscreen/Touch_Base;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    return-void
.end method

.method public setPaintColor(IILandroid/graphics/Paint;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xff

    if-ge p2, p1, :cond_0

    invoke-virtual {p3, v1, v1, v1, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    :cond_0
    if-ne p2, p1, :cond_1

    invoke-virtual {p3, v1, v1, v1, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    :cond_1
    if-le p2, p1, :cond_2

    invoke-virtual {p3, v1, v0, v1, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    :cond_2
    return-void
.end method
