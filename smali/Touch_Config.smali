.class public Lcom/motorola/motocit/touchscreen/Touch_Config;
.super Lcom/motorola/motocit/touchscreen/Touch_Base;
.source "Touch_Config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/motocit/touchscreen/Touch_Config$TS_Config_View;,
        Lcom/motorola/motocit/touchscreen/Touch_Config$InvalidateWindow;
    }
.end annotation


# instance fields
.field TS_View:Lcom/motorola/motocit/touchscreen/Touch_Config$TS_Config_View;

.field mDraw:Z

.field mLineWidthDivisor:I

.field mXList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mYList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/motorola/motocit/touchscreen/Touch_Base;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Config;->mLineWidthDivisor:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Config;->mXList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Config;->mYList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Config;->mDraw:Z

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/motocit/touchscreen/Touch_Config;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/motocit/touchscreen/Touch_Config;->wasActivityStartedByCommServer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/motorola/motocit/touchscreen/Touch_Config;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Config;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/motorola/motocit/touchscreen/Touch_Config;Lcom/motorola/motocit/CommServerDataPacket;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/motorola/motocit/touchscreen/Touch_Config;->sendUnsolicitedPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/motorola/motocit/touchscreen/Touch_Config;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Config;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/motorola/motocit/touchscreen/Touch_Config;Lcom/motorola/motocit/CommServerDataPacket;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/motorola/motocit/touchscreen/Touch_Config;->sendUnsolicitedPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/motorola/motocit/touchscreen/Touch_Config;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/motocit/touchscreen/Touch_Config;->wasActivityStartedByCommServer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/motorola/motocit/touchscreen/Touch_Config;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/motorola/motocit/touchscreen/Touch_Config;->modeCheck(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/motorola/motocit/touchscreen/Touch_Config;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Config;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/motocit/touchscreen/Touch_Config;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/touchscreen/Touch_Config;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$500(Lcom/motorola/motocit/touchscreen/Touch_Config;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/touchscreen/Touch_Config;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/motocit/touchscreen/Touch_Config;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Config;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/motorola/motocit/touchscreen/Touch_Config;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Config;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/motorola/motocit/touchscreen/Touch_Config;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/touchscreen/Touch_Config;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$900(Lcom/motorola/motocit/touchscreen/Touch_Config;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/motocit/CmdFailException;,
            Lcom/motorola/motocit/CmdPassException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/motorola/motocit/touchscreen/Touch_Config;->testPassed()V

    return-void
.end method


# virtual methods
.method public getTouchConfigSettingsFromConfig(Ljava/util/List;Ljava/util/List;I)Z
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x0

    invoke-static {}, Lcom/motorola/motocit/TestUtils;->getSequenceFileInUse()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/local/12m/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/vendor/etc/motorola/12m/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/system/etc/motorola/12m/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/mnt/sdcard/CQATest/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    const/4 v0, 0x0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    const/16 v9, 0x64

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    :cond_3
    iget-object v8, v1, Lcom/motorola/motocit/touchscreen/Touch_Config;->TAG:Ljava/lang/String;

    const-string v10, "!! CANN\'T FIND TOUCH CONFIG FILE"

    invoke-virtual {v1, v8, v10, v9}, Lcom/motorola/motocit/touchscreen/Touch_Config;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    move-object v8, v0

    :goto_0
    if-eqz v8, :cond_12

    if-eqz v3, :cond_12

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v10, ""

    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    move-object v10, v11

    const/4 v12, 0x1

    if-eqz v11, :cond_5

    :try_start_1
    const-string v11, "<TOUCH CONFIG SETTINGS>"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v11, v12, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v25, v6

    move-object/from16 v4, p2

    goto/16 :goto_d

    :cond_5
    :goto_1
    if-eqz v10, :cond_11

    :try_start_2
    iget-object v11, v1, Lcom/motorola/motocit/touchscreen/Touch_Config;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Touch Config Settings: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v11, v13, v9}, Lcom/motorola/motocit/touchscreen/Touch_Config;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v13, v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v13, :cond_10

    :try_start_3
    aget-object v16, v11, v15

    move-object/from16 v17, v16

    const-string v14, "X_VERTICES"

    move-object/from16 v9, v17

    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    const-string v12, "\\|"

    move/from16 v18, v2

    const-string v2, "="

    if-eqz v14, :cond_9

    :try_start_4
    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move-object/from16 v19, v3

    const/16 v17, 0x1

    :try_start_5
    aget-object v3, v14, v17

    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-object/from16 v20, v4

    :try_start_6
    array-length v4, v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-object/from16 v21, v5

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_8

    :try_start_7
    aget-object v22, v3, v5

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    if-ltz v23, :cond_7

    move-object/from16 v23, v3

    :try_start_8
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move/from16 v24, v4

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_6

    goto :goto_4

    :cond_6
    move-object/from16 v25, v6

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v25, v6

    move/from16 v2, v18

    goto/16 :goto_d

    :cond_7
    move-object/from16 v23, v3

    move/from16 v24, v4

    :goto_4
    :try_start_9
    iget-object v3, v1, Lcom/motorola/motocit/touchscreen/Touch_Config;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move-object/from16 v25, v6

    :try_start_a
    const-string v6, "X_VERTICES MUST BE 0 <= X <= 1000"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x64

    invoke-virtual {v1, v3, v4, v6}, Lcom/motorola/motocit/touchscreen/Touch_Config;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const/4 v3, 0x0

    move/from16 v18, v3

    :goto_5
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    move-object/from16 v4, p1

    :try_start_b
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v23

    move/from16 v4, v24

    move-object/from16 v6, v25

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v4, p1

    move-object/from16 v4, p2

    move/from16 v2, v18

    goto/16 :goto_d

    :catch_3
    move-exception v0

    move-object/from16 v4, p1

    move-object/from16 v25, v6

    move-object/from16 v4, p2

    move/from16 v2, v18

    goto/16 :goto_d

    :cond_8
    move-object/from16 v4, p1

    move-object/from16 v23, v3

    move-object/from16 v25, v6

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v4, p1

    move-object/from16 v21, v5

    move-object/from16 v25, v6

    move-object/from16 v4, p2

    move/from16 v2, v18

    goto/16 :goto_d

    :catch_5
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v25, v6

    move-object/from16 v4, p1

    move-object/from16 v4, p2

    move/from16 v2, v18

    goto/16 :goto_d

    :catch_6
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v25, v6

    move-object/from16 v4, p1

    move-object/from16 v4, p2

    move/from16 v2, v18

    goto/16 :goto_d

    :cond_9
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v25, v6

    move-object/from16 v4, p1

    :goto_6
    const-string v3, "Y_VERTICES"

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v6, :cond_c

    aget-object v14, v5, v12

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    if-ltz v22, :cond_b

    move-object/from16 v22, v3

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_a

    goto :goto_8

    :cond_a
    move-object/from16 v23, v5

    goto :goto_9

    :cond_b
    move-object/from16 v22, v3

    const/16 v4, 0x3e8

    :goto_8
    iget-object v3, v1, Lcom/motorola/motocit/touchscreen/Touch_Config;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v5

    const-string v5, "Y_VERTICES MUST BE 0 <= Y <= 1000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v1, v3, v4, v5}, Lcom/motorola/motocit/touchscreen/Touch_Config;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const/4 v3, 0x0

    move/from16 v18, v3

    :goto_9
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    move-object/from16 v4, p2

    :try_start_c
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, p1

    move-object/from16 v3, v22

    move-object/from16 v5, v23

    goto :goto_7

    :cond_c
    move-object/from16 v4, p2

    move-object/from16 v22, v3

    move-object/from16 v23, v5

    goto :goto_a

    :cond_d
    move-object/from16 v4, p2

    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TOUCH_WIDTH_DIVISOR :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v5, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/motorola/motocit/touchscreen/Touch_Config;->mLineWidthDivisor:I

    if-ge v5, v3, :cond_f

    iget-object v5, v1, Lcom/motorola/motocit/touchscreen/Touch_Config;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TOUCH_WIDTH_DIVISOR MUST BE POSITIVE INTEGER"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v12, 0x64

    invoke-virtual {v1, v5, v6, v12}, Lcom/motorola/motocit/touchscreen/Touch_Config;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const/4 v5, 0x0

    move v2, v5

    goto :goto_b

    :cond_e
    const/4 v3, 0x1

    :cond_f
    move/from16 v2, v18

    :goto_b
    add-int/lit8 v15, v15, 0x1

    move v12, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move-object/from16 v6, v25

    const/16 v9, 0x64

    goto/16 :goto_2

    :catch_7
    move-exception v0

    move-object/from16 v4, p2

    move/from16 v2, v18

    goto/16 :goto_d

    :catch_8
    move-exception v0

    move/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v25, v6

    move-object/from16 v4, p2

    goto :goto_d

    :cond_10
    move/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v25, v6

    move-object/from16 v4, p2

    iget-object v2, v1, Lcom/motorola/motocit/touchscreen/Touch_Config;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsed: X_VERTICES="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Y_VERTICES="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", TOUCH_WIDTH_DIVISOR="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/motorola/motocit/touchscreen/Touch_Config;->mLineWidthDivisor:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x64

    invoke-virtual {v1, v2, v3, v5}, Lcom/motorola/motocit/touchscreen/Touch_Config;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    move/from16 v2, v18

    goto :goto_c

    :catch_9
    move-exception v0

    move/from16 v2, v18

    goto :goto_d

    :cond_11
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v25, v6

    move-object/from16 v4, p2

    :goto_c
    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_e

    :catch_a
    move-exception v0

    goto :goto_d

    :catch_b
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v25, v6

    move-object/from16 v4, p2

    :goto_d
    iget-object v3, v1, Lcom/motorola/motocit/touchscreen/Touch_Config;->TAG:Ljava/lang/String;

    const-string v5, "!!! Some exception in parsing touch config settings"

    const/16 v6, 0x64

    invoke-virtual {v1, v3, v5, v6}, Lcom/motorola/motocit/touchscreen/Touch_Config;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v3, v1, Lcom/motorola/motocit/touchscreen/Touch_Config;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!Exception="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5, v6}, Lcom/motorola/motocit/touchscreen/Touch_Config;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    goto :goto_e

    :cond_12
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v25, v6

    move-object/from16 v4, p2

    :goto_e
    return v2
.end method

.method protected handleTestSpecificActions()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/motocit/CmdFailException;,
            Lcom/motorola/motocit/CmdPassException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->strRxCmd:Ljava/lang/String;

    const-string v2, "GET_TOUCH_RESULT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_12

    iget-object v1, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->strRxCmd:Ljava/lang/String;

    const-string v3, "SET_TOUCH_SETTINGS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "%s help printed"

    const-string v4, ","

    const/4 v5, 0x1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->strRxCmdDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    iget-object v1, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->strRxCmdDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/motorola/motocit/touchscreen/Touch_Config;->splitKeyValuePair(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v8, v7, v2

    aget-object v9, v7, v5

    const-string v10, "X_VERTICES"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    const/16 v11, 0x3e8

    if-eqz v10, :cond_2

    iget-object v10, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->mXList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    invoke-virtual {v9, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v12, v10

    move v13, v2

    :goto_1
    if-ge v13, v12, :cond_1

    aget-object v14, v10, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_0

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-gt v15, v11, :cond_0

    iget-object v15, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->mXList:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "X_VERTICES MUST BE 0 <= X <= 1000"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->nRxSeqTag:I

    iget-object v4, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_1
    goto/16 :goto_3

    :cond_2
    const-string v5, "Y_VERTICES"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->mYList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    invoke-virtual {v9, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v10, v5

    move v12, v2

    :goto_2
    if-ge v12, v10, :cond_4

    aget-object v13, v5, v12

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_3

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-gt v14, v11, :cond_3

    iget-object v14, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->mYList:Ljava/util/List;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Y_VERTICES MUST BE 0 <= Y <= 1000"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->nRxSeqTag:I

    iget-object v4, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_4
    goto :goto_3

    :cond_5
    const-string v5, "TOUCH_WIDTH_DIVISOR"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->mLineWidthDivisor:I

    const/4 v10, 0x1

    if-lt v5, v10, :cond_6

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "TOUCH_WIDTH_DIVISOR MUST BE POSITIVE INTEGER"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->nRxSeqTag:I

    iget-object v4, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_7
    :goto_3
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_8
    iget-object v1, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->mXList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v4, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->mYList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v1, v4, :cond_9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "NUMBER OF X_VERTICES MUST EQUAL Y_VERTICES "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->nRxSeqTag:I

    iget-object v4, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->mDraw:Z

    new-instance v1, Lcom/motorola/motocit/touchscreen/Touch_Config$InvalidateWindow;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4}, Lcom/motorola/motocit/touchscreen/Touch_Config$InvalidateWindow;-><init>(Lcom/motorola/motocit/touchscreen/Touch_Config;Lcom/motorola/motocit/touchscreen/Touch_Config$1;)V

    invoke-virtual {v0, v1}, Lcom/motorola/motocit/touchscreen/Touch_Config;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->TAG:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CmdPassException;

    iget v3, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->nRxSeqTag:I

    iget-object v5, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v5, v4}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_a
    return-void

    :cond_b
    iget-object v1, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->strRxCmd:Ljava/lang/String;

    const-string v5, "GET_TOUCH_SETTINGS"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    :goto_4
    iget-object v5, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->mXList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_d

    iget-object v5, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->mXList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v3, 0x1

    iget-object v6, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->mXList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "X_VERTICES="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v5, 0x0

    :goto_5
    iget-object v6, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->mYList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_f

    iget-object v6, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->mYList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v5, 0x1

    iget-object v7, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->mYList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Y_VERTICES="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TOUCH_WIDTH_DIVISOR="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->mLineWidthDivisor:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/motocit/CommServerDataPacket;

    iget v5, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->nRxSeqTag:I

    iget-object v6, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->strRxCmd:Ljava/lang/String;

    iget-object v7, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->TAG:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7, v1}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v4}, Lcom/motorola/motocit/touchscreen/Touch_Config;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/motocit/CmdPassException;

    iget v7, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->nRxSeqTag:I

    iget-object v8, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->strRxCmd:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v5}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v6

    :cond_10
    iget-object v1, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->strRxCmd:Ljava/lang/String;

    const-string v4, "help"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/motocit/touchscreen/Touch_Config;->printHelp()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->TAG:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CmdPassException;

    iget v3, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->nRxSeqTag:I

    iget-object v4, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->TAG:Ljava/lang/String;

    aput-object v4, v3, v2

    iget-object v4, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->strRxCmd:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "Activity \'%s\' does not recognize command \'%s\'"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v4, 0x69

    invoke-virtual {v0, v3, v2, v4}, Lcom/motorola/motocit/touchscreen/Touch_Config;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->nRxSeqTag:I

    iget-object v4, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TOUCH_RESULT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->testStatus:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CommServerDataPacket;

    iget v3, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->nRxSeqTag:I

    iget-object v4, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->strRxCmd:Ljava/lang/String;

    iget-object v5, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->TAG:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/motorola/motocit/touchscreen/Touch_Config;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/motocit/CmdPassException;

    iget v5, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->nRxSeqTag:I

    iget-object v6, v0, Lcom/motorola/motocit/touchscreen/Touch_Config;->strRxCmd:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v3}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "Touch_Config"

    iput-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Config;->TAG:Ljava/lang/String;

    const-string v0, "Touch_Config Passed"

    iput-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Config;->passMessage:Ljava/lang/String;

    const-string v0, "Touch_Config Failed"

    iput-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Config;->failMessage:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/motorola/motocit/touchscreen/Touch_Base;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/motorola/motocit/touchscreen/Touch_Config$TS_Config_View;

    invoke-direct {v0, p0, p0}, Lcom/motorola/motocit/touchscreen/Touch_Config$TS_Config_View;-><init>(Lcom/motorola/motocit/touchscreen/Touch_Config;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/touchscreen/Touch_Config;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/motorola/motocit/touchscreen/Touch_Config;->wasActivityStartedByCommServer()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Config;->mXList:Ljava/util/List;

    iget-object v1, p0, Lcom/motorola/motocit/touchscreen/Touch_Config;->mYList:Ljava/util/List;

    iget v2, p0, Lcom/motorola/motocit/touchscreen/Touch_Config;->mLineWidthDivisor:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/touchscreen/Touch_Config;->getTouchConfigSettingsFromConfig(Ljava/util/List;Ljava/util/List;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Config;->mDraw:Z

    new-instance v0, Lcom/motorola/motocit/touchscreen/Touch_Config$InvalidateWindow;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/motocit/touchscreen/Touch_Config$InvalidateWindow;-><init>(Lcom/motorola/motocit/touchscreen/Touch_Config;Lcom/motorola/motocit/touchscreen/Touch_Config$1;)V

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/touchscreen/Touch_Config;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/motorola/motocit/touchscreen/Touch_Base;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/motorola/motocit/touchscreen/Touch_Config;->wasActivityStartedByCommServer()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/motorola/motocit/TestUtils;->getPassFailMethods()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VOLUME_KEYS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    const/16 v0, 0x18

    const-string v2, "Seq"

    const/4 v3, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    invoke-virtual {p0, v2}, Lcom/motorola/motocit/touchscreen/Touch_Config;->modeCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/touchscreen/Touch_Config;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v3

    :cond_2
    invoke-virtual {p0, v3}, Lcom/motorola/motocit/touchscreen/Touch_Config;->systemExitWrapper(I)V

    goto :goto_3

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/motocit/touchscreen/Touch_Config;->wasActivityStartedByCommServer()Z

    move-result v0

    const/16 v4, 0x69

    if-nez v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/motorola/motocit/touchscreen/Touch_Config;->modeCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Config;->TAG:Ljava/lang/String;

    const-string v2, "onKeyDown(): Running activity in sequential mode, logging results in database."

    invoke-virtual {p0, v0, v2, v4}, Lcom/motorola/motocit/touchscreen/Touch_Config;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const v0, 0x8000

    const-string v2, "testresult.txt"

    const-string v4, "Touch Screen - Touch_Config:  FAILED\r\n\r\n"

    invoke-virtual {p0, v2, v4, v0}, Lcom/motorola/motocit/touchscreen/Touch_Config;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Config;->TAG:Ljava/lang/String;

    const-string v2, "FAIL"

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v4, v4}, Lcom/motorola/motocit/touchscreen/Touch_Config;->logTestResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/motorola/motocit/touchscreen/Touch_Config;->TAG:Ljava/lang/String;

    const-string v2, "onKeyDown(): Running activity through CommServer or Menu Mode, skipping results logging in database."

    invoke-virtual {p0, v0, v2, v4}, Lcom/motorola/motocit/touchscreen/Touch_Config;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    :goto_1
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5, v3}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    invoke-virtual {p0, v3}, Lcom/motorola/motocit/touchscreen/Touch_Config;->systemExitWrapper(I)V

    :cond_5
    :goto_3
    return v1

    :cond_6
    :goto_4
    return v1
.end method

.method protected printHelp()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/motorola/motocit/touchscreen/Touch_Config;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "This activity tests a touchscreen on a phone by having the operator trace a line as it creates an"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "hourglass pattern on the screen.  Volume Down to fail the test.  The vertices and line width can be "

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "configured using SET_TOUCH_SETTINGS."

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/motorola/motocit/touchscreen/Touch_Config;->getBaseHelp()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v1, "Activity Specific Commands"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "GET_TOUCH_RESULT - returns the TOUCH_RESULT value"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "SET_TOUCH_SETTINGS - Sets values for all touch points"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "  X_VERTICES=X0,X1 - X Vertices for each touch point"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "  Y_VERTICES=Y0,Y1 - Y Vertices for each touch point"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "  TOUCH_WIDTH_DIVISOR - Sets the size of the touch points"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "GET_TOUCH_SETTINGS - Returns X_VERTICES=X0,X1,... Y_VERTICES=Y0,Y1,... TOUCH_WIDTH_DIVISOR=X)"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CommServerDataPacket;

    iget v2, p0, Lcom/motorola/motocit/touchscreen/Touch_Config;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/touchscreen/Touch_Config;->strRxCmd:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/motocit/touchscreen/Touch_Config;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/touchscreen/Touch_Config;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    return-void
.end method
