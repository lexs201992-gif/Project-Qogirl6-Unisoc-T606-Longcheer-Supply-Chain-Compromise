.class public Lcom/motorola/motocit/fingerprint/FingerPrint;
.super Lcom/motorola/motocit/Test_Base;
.source "FingerPrint.java"


# static fields
.field private static final FP_SYS_NODE:Ljava/lang/String; = "/sys/hwinfo/FP_MFR"

.field private static final FP_TEST_REQUEST_CODE:I = 0x96

.field private static final START_TIME:I = 0xa


# instance fields
.field private mBtRetry:Landroid/widget/Button;

.field private mFpManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mStartTest:Ljava/lang/Runnable;

.field private mTextResult:Landroid/widget/TextView;

.field private mUiHandler:Landroid/os/Handler;

.field private testPassed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/motorola/motocit/Test_Base;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->mTextResult:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->mBtRetry:Landroid/widget/Button;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->testPassed:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/motocit/fingerprint/FingerPrint$1;

    invoke-direct {v0, p0}, Lcom/motorola/motocit/fingerprint/FingerPrint$1;-><init>(Lcom/motorola/motocit/fingerprint/FingerPrint;)V

    iput-object v0, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/motocit/fingerprint/FingerPrint$2;

    invoke-direct {v0, p0}, Lcom/motorola/motocit/fingerprint/FingerPrint$2;-><init>(Lcom/motorola/motocit/fingerprint/FingerPrint;)V

    iput-object v0, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->mStartTest:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/motocit/fingerprint/FingerPrint;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->mTextResult:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/motocit/fingerprint/FingerPrint;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->mBtRetry:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/motorola/motocit/fingerprint/FingerPrint;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/fingerprint/FingerPrint;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$1100(Lcom/motorola/motocit/fingerprint/FingerPrint;)V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->startSensorTest()V

    return-void
.end method

.method static synthetic access$202(Lcom/motorola/motocit/fingerprint/FingerPrint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->testPassed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/motorola/motocit/fingerprint/FingerPrint;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/motocit/fingerprint/FingerPrint;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/fingerprint/FingerPrint;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$500(Lcom/motorola/motocit/fingerprint/FingerPrint;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->getFpProperties()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/motocit/fingerprint/FingerPrint;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/motorola/motocit/fingerprint/FingerPrint;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/motorola/motocit/fingerprint/FingerPrint;)V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->report3rdPartyAppNotFound()V

    return-void
.end method

.method static synthetic access$900(Lcom/motorola/motocit/fingerprint/FingerPrint;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getFPChipName()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/hwinfo/FP_MFR"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/motorola/motocit/fingerprint/FingerPrint;->getStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed, content of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    const/16 v3, 0x65

    const-string v4, "fpChipName /sys/hwinfo/FP_MFR not exists"

    invoke-virtual {p0, v2, v4, v3}, Lcom/motorola/motocit/fingerprint/FingerPrint;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const-string v2, "Failed, fpChipName /sys/hwinfo/FP_MFR not exists"

    return-object v2
.end method

.method private getFpProperties()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    const-string v1, "persist.vendor.fingerprint"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    iget-object v1, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------getFpProperties------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/motocit/fingerprint/FingerPrint;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-object v0
.end method

.method private getStringFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x65

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    const/4 v3, 0x0

    const/16 v4, 0x64

    new-array v5, v4, [B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    move v3, v6

    iget-object v6, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getStringFromFile len "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7, v4}, Lcom/motorola/motocit/fingerprint/FingerPrint;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    iget-object v6, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    const-string v7, "getStringFromFile IOException"

    invoke-virtual {p0, v6, v7, v2}, Lcom/motorola/motocit/fingerprint/FingerPrint;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    nop

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    const/4 v1, 0x0

    :goto_2
    goto :goto_3

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_2
    move-exception v3

    :try_start_4
    iget-object v4, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " read error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v2}, Lcom/motorola/motocit/fingerprint/FingerPrint;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_3
    move-exception v3

    :try_start_6
    iget-object v4, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Not Found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v2}, Lcom/motorola/motocit/fingerprint/FingerPrint;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    :cond_0
    :goto_3
    iget-object v2, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x69

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/motocit/fingerprint/FingerPrint;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-object v0

    :goto_4
    if-eqz v1, :cond_1

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    const/4 v1, 0x0

    goto :goto_5

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_5
    throw v2
.end method

.method private report3rdPartyAppNotFound()V
    .locals 6

    const-string v0, "Failed, Fingerprint test app not found"

    iget-object v1, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    const-string v2, "report3rdPartyAppNotFound run"

    const/16 v3, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/motocit/fingerprint/FingerPrint;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->sendMsgToHandler(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->wasActivityStartedByCommServer()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CommServerDataPacket;

    iget v3, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->strRxCmd:Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/motorola/motocit/fingerprint/FingerPrint;->sendCmdFailToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    :cond_0
    return-void
.end method

.method private sendMsgToHandler(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "result"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private startSensorTest()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    const-string v1, "startFingerprintTest"

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/fingerprint/FingerPrint;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v0, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->mStartTest:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected handleTestSpecificActions()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/motocit/CmdFailException;,
            Lcom/motorola/motocit/CmdPassException;
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->strRxCmd:Ljava/lang/String;

    const-string v1, "START_FPS_TEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->startSensorTest()V

    nop

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->strRxCmd:Ljava/lang/String;

    const-string v1, "help"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->printHelp()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "%s help printed"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CmdPassException;

    iget v2, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->strRxCmd:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v1, "Activity \'%s\' does not recognize command \'%s\'"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x69

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/motocit/fingerprint/FingerPrint;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-super/range {p0 .. p3}, Lcom/motorola/motocit/Test_Base;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v4, v0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestCode= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " resultCode= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x69

    invoke-virtual {v0, v4, v5, v6}, Lcom/motorola/motocit/fingerprint/FingerPrint;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const/16 v4, 0x96

    if-ne v1, v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "######getFpProperties#####"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->getFpProperties()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sjx"

    invoke-virtual {v0, v5, v4}, Lcom/motorola/motocit/fingerprint/FingerPrint;->dbgLogD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->getFpProperties()Ljava/lang/String;

    move-result-object v6

    const-string v7, "fpc"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "TEST_RESULT=FPS_PASS"

    const-string v8, "TEST_STATUS=PASSED"

    const-string v9, "Passed"

    const-string v10, "fp test failed"

    const-string v12, "TEST_RESULT=FPS_FAILED"

    const-string v13, "TEST_STATUS=FAILED"

    const-string v14, "Failed"

    const/16 v15, 0x64

    if-eqz v6, :cond_2

    iget-object v5, v0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "----fpc result--resultCode==="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6, v15}, Lcom/motorola/motocit/fingerprint/FingerPrint;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const-string v5, "fpc_test_result"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    iget-object v6, v0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fp test passed wasActivityStartedByCommServer() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->wasActivityStartedByCommServer()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v6, v10, v15}, Lcom/motorola/motocit/fingerprint/FingerPrint;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const/4 v6, 0x0

    invoke-direct {v0, v6, v9}, Lcom/motorola/motocit/fingerprint/FingerPrint;->sendMsgToHandler(ILjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->wasActivityStartedByCommServer()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v6, v0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v6, v10, v15}, Lcom/motorola/motocit/fingerprint/FingerPrint;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const/4 v6, 0x0

    invoke-direct {v0, v6, v14}, Lcom/motorola/motocit/fingerprint/FingerPrint;->sendMsgToHandler(ILjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->wasActivityStartedByCommServer()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    goto/16 :goto_2

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->getFpProperties()Ljava/lang/String;

    move-result-object v6

    const-string v11, "goodix"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "----goodix result--resultCode: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "TouchTest"

    const/4 v11, 0x0

    invoke-virtual {v3, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "----goodix result--goodixResult: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    if-ne v6, v11, :cond_3

    const-string v10, "----goodix  passed------ "

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    invoke-direct {v0, v10, v9}, Lcom/motorola/motocit/fingerprint/FingerPrint;->sendMsgToHandler(ILjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->wasActivityStartedByCommServer()Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "----goodix wasActivityStartedByCommServer  pass--"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    const/16 v7, 0x64

    invoke-virtual {v0, v5, v10, v7}, Lcom/motorola/motocit/fingerprint/FingerPrint;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const/4 v5, 0x0

    invoke-direct {v0, v5, v14}, Lcom/motorola/motocit/fingerprint/FingerPrint;->sendMsgToHandler(ILjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->wasActivityStartedByCommServer()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->getFpProperties()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "**********fingerprinter not exist********"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    invoke-direct {v0, v5, v14}, Lcom/motorola/motocit/fingerprint/FingerPrint;->sendMsgToHandler(ILjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->wasActivityStartedByCommServer()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    :goto_1
    nop

    :cond_6
    :goto_2
    iget-object v5, v0, Lcom/motorola/motocit/fingerprint/FingerPrint;->mTextResult:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->invalidate()V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->wasActivityStartedByCommServer()Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Lcom/motorola/motocit/CommServerDataPacket;

    iget v6, v0, Lcom/motorola/motocit/fingerprint/FingerPrint;->nRxSeqTag:I

    iget-object v7, v0, Lcom/motorola/motocit/fingerprint/FingerPrint;->strRxCmd:Ljava/lang/String;

    iget-object v8, v0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v4}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v5}, Lcom/motorola/motocit/fingerprint/FingerPrint;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    new-instance v6, Lcom/motorola/motocit/CommServerDataPacket;

    iget v7, v0, Lcom/motorola/motocit/fingerprint/FingerPrint;->nRxSeqTag:I

    iget-object v8, v0, Lcom/motorola/motocit/fingerprint/FingerPrint;->strRxCmd:Ljava/lang/String;

    iget-object v9, v0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v6}, Lcom/motorola/motocit/fingerprint/FingerPrint;->sendCmdPassToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    :cond_7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "Sensor_FingerPrint"

    iput-object v0, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    const/16 v2, 0x69

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/fingerprint/FingerPrint;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-super {p0, p1}, Lcom/motorola/motocit/Test_Base;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->setContentView(I)V

    const v0, 0x7f06017f

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->mTextResult:Landroid/widget/TextView;

    const v0, 0x7f060072

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->mBtRetry:Landroid/widget/Button;

    new-instance v1, Lcom/motorola/motocit/fingerprint/FingerPrint$3;

    invoke-direct {v1, p0}, Lcom/motorola/motocit/fingerprint/FingerPrint$3;-><init>(Lcom/motorola/motocit/fingerprint/FingerPrint;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->startSensorTest()V

    invoke-direct {p0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->getFpProperties()Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->testPassed:Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8

    invoke-virtual {p0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->wasActivityStartedByCommServer()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x19

    const-wide/16 v2, 0x3e8

    const v4, 0x8000

    const-string v5, "testresult.txt"

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->testPassed:Z

    if-eqz v0, :cond_1

    const-string v0, "Sensor - FingerPrint:  PASS\r\n\r\n"

    invoke-virtual {p0, v5, v0, v4}, Lcom/motorola/motocit/fingerprint/FingerPrint;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    :try_start_0
    iget-object v0, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    const-string v4, "PASS"

    invoke-virtual {p0, v0, v4, v6, v6}, Lcom/motorola/motocit/fingerprint/FingerPrint;->logTestResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v2, v3, v7}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    invoke-virtual {p0, v7}, Lcom/motorola/motocit/fingerprint/FingerPrint;->systemExitWrapper(I)V

    goto :goto_2

    :cond_1
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    const-string v0, "Sensor - FingerPrint:  FAILED\r\n\r\n"

    invoke-virtual {p0, v5, v0, v4}, Lcom/motorola/motocit/fingerprint/FingerPrint;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    :try_start_1
    iget-object v0, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    const-string v4, "FAIL"

    invoke-virtual {p0, v0, v4, v6, v6}, Lcom/motorola/motocit/fingerprint/FingerPrint;->logTestResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v2, v3, v7}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    invoke-virtual {p0, v7}, Lcom/motorola/motocit/fingerprint/FingerPrint;->systemExitWrapper(I)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    const-string v0, "Seq"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->modeCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v7

    :cond_3
    invoke-virtual {p0, v7}, Lcom/motorola/motocit/fingerprint/FingerPrint;->systemExitWrapper(I)V

    :cond_4
    :goto_2
    return v1
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onResume()V

    invoke-virtual {p0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->sendStartActivityPassed()V

    return-void
.end method

.method public onSwipeDown()Z
    .locals 2

    const-string v0, "Seq"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->modeCheck(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/motorola/motocit/fingerprint/FingerPrint;->systemExitWrapper(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSwipeLeft()Z
    .locals 3

    const-string v0, "testresult.txt"

    const-string v1, "Sensor - FingerPrint:  PASS\r\n\r\n"

    const v2, 0x8000

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/fingerprint/FingerPrint;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    const-string v1, "PASS"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/motorola/motocit/fingerprint/FingerPrint;->logTestResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

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
    invoke-virtual {p0, v2}, Lcom/motorola/motocit/fingerprint/FingerPrint;->systemExitWrapper(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSwipeRight()Z
    .locals 3

    const-string v0, "testresult.txt"

    const-string v1, "Sensor - FingerPrint:  FAILED\r\n\r\n"

    const v2, 0x8000

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/fingerprint/FingerPrint;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    const-string v1, "FAIL"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/motorola/motocit/fingerprint/FingerPrint;->logTestResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

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
    invoke-virtual {p0, v2}, Lcom/motorola/motocit/fingerprint/FingerPrint;->systemExitWrapper(I)V

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

    iget-object v1, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "This function will test FingerPrint sensor"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/motorola/motocit/fingerprint/FingerPrint;->getBaseHelp()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v1, "Activity Specific Commands"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CommServerDataPacket;

    iget v2, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->strRxCmd:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/motocit/fingerprint/FingerPrint;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/fingerprint/FingerPrint;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    return-void
.end method
