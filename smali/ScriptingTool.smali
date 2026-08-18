.class public Lcom/motorola/motocit/scripting/ScriptingTool;
.super Lcom/motorola/motocit/Test_Base;
.source "ScriptingTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/motocit/scripting/ScriptingTool$USBCommand;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/motocit/Test_Base;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleTestSpecificActions()V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/motocit/CmdFailException;,
            Lcom/motorola/motocit/CmdPassException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/motorola/motocit/scripting/ScriptingTool;->strRxCmd:Ljava/lang/String;

    const-string v2, "RUN_COMMANDS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_15

    iget-object v0, v1, Lcom/motorola/motocit/scripting/ScriptingTool;->strRxCmdDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    const/4 v8, 0x0

    const-string v9, ""

    const-string v0, ""

    iget-object v10, v1, Lcom/motorola/motocit/scripting/ScriptingTool;->strRxCmdDataList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v11, v0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v12, ""

    if-eqz v0, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/motorola/motocit/scripting/ScriptingTool;->splitKeyValuePair(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    aget-object v14, v13, v5

    aget-object v15, v13, v4

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "COMMAND_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "TIMEOUT_"

    const-string v5, "EXPECTED_RESPONSE_TYPE_"

    move-object/from16 v19, v0

    const-string v0, "EXPECTED_RESPONSE_"

    move-object/from16 v20, v8

    const-string v8, "TYPE_"

    if-eqz v2, :cond_5

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/motorola/motocit/scripting/ScriptingTool$USBCommand;

    invoke-direct {v3, v1}, Lcom/motorola/motocit/scripting/ScriptingTool$USBCommand;-><init>(Lcom/motorola/motocit/scripting/ScriptingTool;)V

    iput-object v15, v3, Lcom/motorola/motocit/scripting/ScriptingTool$USBCommand;->command:Ljava/lang/String;

    iget-object v12, v1, Lcom/motorola/motocit/scripting/ScriptingTool;->strRxCmdDataList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v9

    move-object/from16 v9, v21

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v9}, Lcom/motorola/motocit/scripting/ScriptingTool;->splitKeyValuePair(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v23, v9

    const/16 v18, 0x0

    aget-object v9, v21, v18

    move-object/from16 v24, v10

    const/16 v17, 0x1

    aget-object v10, v21, v17

    move-object/from16 v25, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    iput-object v10, v3, Lcom/motorola/motocit/scripting/ScriptingTool$USBCommand;->commandType:Ljava/lang/String;

    move-object/from16 v26, v13

    goto :goto_2

    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    iput-object v10, v3, Lcom/motorola/motocit/scripting/ScriptingTool$USBCommand;->expectedResponse:Ljava/lang/String;

    move-object/from16 v26, v13

    goto :goto_2

    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    iput-object v10, v3, Lcom/motorola/motocit/scripting/ScriptingTool$USBCommand;->expectedResponseType:Ljava/lang/String;

    move-object/from16 v26, v13

    goto :goto_2

    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v26, v13

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v3, Lcom/motorola/motocit/scripting/ScriptingTool$USBCommand;->timeout:J

    goto :goto_2

    :cond_3
    move-object/from16 v26, v13

    :goto_2
    move-object/from16 v9, v22

    move-object/from16 v10, v24

    move-object/from16 v12, v25

    move-object/from16 v13, v26

    goto/16 :goto_1

    :cond_4
    move-object/from16 v22, v9

    move-object/from16 v24, v10

    move-object/from16 v26, v13

    invoke-interface {v7, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    move-object/from16 v22, v9

    move-object/from16 v24, v10

    move-object/from16 v26, v13

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RESULTS_DATABASE_NAME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v15

    move-object v11, v0

    :goto_3
    move-object/from16 v8, v20

    move-object/from16 v9, v22

    move-object/from16 v10, v24

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN KEY: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/motocit/CmdFailException;

    iget v2, v1, Lcom/motorola/motocit/scripting/ScriptingTool;->nRxSeqTag:I

    iget-object v3, v1, Lcom/motorola/motocit/scripting/ScriptingTool;->strRxCmd:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v6}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v0

    :cond_b
    move-object/from16 v20, v8

    move-object/from16 v22, v9

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/motocit/scripting/ScriptingTool;->sendCmdPassed()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    new-instance v0, Lcom/motorola/motocit/database/DatabaseHandler;

    invoke-direct {v0, v1}, Lcom/motorola/motocit/database/DatabaseHandler;-><init>(Landroid/content/Context;)V

    move-object v4, v0

    const-string v0, "COMMAND"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "TYPE"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "EXPECTED_RESPONSE"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "EXPECTED_RESPONSE_TYPE"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "TIMEOUT"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "COMMAND_RESPONSE"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v11}, Lcom/motorola/motocit/database/DatabaseHandler;->deleteTable(Ljava/lang/String;)V

    invoke-virtual {v4, v11, v2}, Lcom/motorola/motocit/database/DatabaseHandler;->addTable(Ljava/lang/String;Ljava/util/List;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d

    move-object/from16 v8, v20

    move-object/from16 v9, v22

    :goto_4
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/motocit/scripting/ScriptingTool$USBCommand;

    move-object v9, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c

    const/4 v15, 0x0

    :goto_5
    move-object/from16 v19, v5

    :try_start_2
    iget-object v5, v1, Lcom/motorola/motocit/scripting/ScriptingTool;->TAG:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    move-object/from16 v21, v7

    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    move-object/from16 v20, v8

    :try_start_4
    const-string v8, "Send Command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v10, Lcom/motorola/motocit/scripting/ScriptingTool$USBCommand;->command:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x69

    invoke-virtual {v1, v5, v7, v8}, Lcom/motorola/motocit/scripting/ScriptingTool;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v5, v10, Lcom/motorola/motocit/scripting/ScriptingTool$USBCommand;->commandType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    sparse-switch v7, :sswitch_data_0

    :cond_c
    goto :goto_6

    :sswitch_0
    :try_start_5
    const-string v7, "SLEEP"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    goto :goto_7

    :sswitch_1
    const-string v7, "WAIT"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x2

    goto :goto_7

    :sswitch_2
    const-string v7, "ADB"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v5, :cond_c

    const/4 v5, 0x0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object/from16 v8, v20

    goto/16 :goto_10

    :goto_6
    const/4 v5, -0x1

    :goto_7
    packed-switch v5, :pswitch_data_0

    move-object/from16 v23, v9

    :try_start_6
    new-instance v5, Ljava/util/ArrayList;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    goto/16 :goto_f

    :pswitch_0
    :try_start_7
    iget-object v5, v10, Lcom/motorola/motocit/scripting/ScriptingTool$USBCommand;->command:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-object/from16 v8, v20

    goto/16 :goto_a

    :pswitch_1
    :try_start_8
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const-string v22, "/system/bin/sh"

    const/16 v18, 0x0

    aput-object v22, v7, v18

    const-string v22, "-c"

    const/16 v17, 0x1

    aput-object v22, v7, v17

    iget-object v8, v10, Lcom/motorola/motocit/scripting/ScriptingTool$USBCommand;->command:Ljava/lang/String;

    const/16 v16, 0x2

    aput-object v8, v7, v16

    invoke-virtual {v5, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    move-object/from16 v23, v9

    :try_start_9
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    move-object/from16 v8, v20

    move-object/from16 v9, v23

    :goto_8
    :try_start_a
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v8, v20

    if-eqz v8, :cond_d

    move-object/from16 v24, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v25, v7

    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    move-object v9, v5

    :try_start_b
    iget-object v5, v1, Lcom/motorola/motocit/scripting/ScriptingTool;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    move-object/from16 v20, v9

    :try_start_c
    const-string v9, "Process Output: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x69

    invoke-virtual {v1, v5, v7, v9}, Lcom/motorola/motocit/scripting/ScriptingTool;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    move-object/from16 v9, v20

    goto :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v9, v20

    goto/16 :goto_10

    :catch_2
    move-exception v0

    move-object/from16 v20, v9

    goto/16 :goto_10

    :cond_d
    move-object/from16 v24, v5

    move-object/from16 v25, v7

    :goto_9
    if-nez v8, :cond_12

    :try_start_d
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    move-object v9, v5

    :goto_a
    :try_start_e
    iget-object v5, v10, Lcom/motorola/motocit/scripting/ScriptingTool$USBCommand;->expectedResponseType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    sparse-switch v7, :sswitch_data_1

    :cond_e
    goto :goto_b

    :sswitch_3
    :try_start_f
    const-string v7, "CONTAINS"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/16 v22, 0x0

    goto :goto_c

    :sswitch_4
    const-string v7, "EXACT_MATCH"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/16 v22, 0x1

    goto :goto_c

    :catch_3
    move-exception v0

    goto/16 :goto_10

    :goto_b
    const/16 v22, -0x1

    :goto_c
    packed-switch v22, :pswitch_data_1

    const/4 v5, 0x1

    move v15, v5

    goto :goto_d

    :pswitch_2
    iget-object v5, v10, Lcom/motorola/motocit/scripting/ScriptingTool$USBCommand;->expectedResponse:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    move v15, v5

    goto :goto_d

    :pswitch_3
    iget-object v5, v10, Lcom/motorola/motocit/scripting/ScriptingTool$USBCommand;->expectedResponse:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    move v15, v5

    :cond_f
    :goto_d
    if-nez v15, :cond_11

    :try_start_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    sub-long v22, v22, v13

    move-object v5, v8

    :try_start_11
    iget-wide v7, v10, Lcom/motorola/motocit/scripting/ScriptingTool$USBCommand;->timeout:J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    cmp-long v7, v22, v7

    if-ltz v7, :cond_10

    goto :goto_e

    :cond_10
    move-object v8, v5

    move-object/from16 v5, v19

    move-object/from16 v7, v21

    goto/16 :goto_5

    :catch_4
    move-exception v0

    move-object v8, v5

    goto/16 :goto_10

    :catch_5
    move-exception v0

    move-object v5, v8

    goto/16 :goto_10

    :cond_11
    move-object v5, v8

    :goto_e
    :try_start_12
    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v7, v10, Lcom/motorola/motocit/scripting/ScriptingTool$USBCommand;->command:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v10, Lcom/motorola/motocit/scripting/ScriptingTool$USBCommand;->commandType:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v10, Lcom/motorola/motocit/scripting/ScriptingTool$USBCommand;->expectedResponse:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v10, Lcom/motorola/motocit/scripting/ScriptingTool$USBCommand;->expectedResponseType:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v7, v10, Lcom/motorola/motocit/scripting/ScriptingTool$USBCommand;->timeout:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/motocit/database/DatabaseRecord;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    move-object/from16 v20, v5

    :try_start_13
    const-string v5, "Command_"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v11, v0, v2, v3}, Lcom/motorola/motocit/database/DatabaseRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v4, v7}, Lcom/motorola/motocit/database/DatabaseHandler;->addRecord(Lcom/motorola/motocit/database/DatabaseRecord;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    move v0, v5

    move-object/from16 v5, v19

    move-object/from16 v8, v20

    move-object/from16 v7, v21

    goto/16 :goto_4

    :catch_6
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v8, v20

    goto/16 :goto_10

    :catch_7
    move-exception v0

    move-object/from16 v20, v8

    goto/16 :goto_10

    :cond_12
    move-object/from16 v5, v24

    move-object/from16 v7, v25

    goto/16 :goto_8

    :goto_f
    :try_start_14
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "Activity \'%s\' does not recognize command type \'%s\'"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/motorola/motocit/scripting/ScriptingTool;->TAG:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v8, v9, v12

    iget-object v8, v10, Lcom/motorola/motocit/scripting/ScriptingTool$USBCommand;->commandType:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v9, v12

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v1, Lcom/motorola/motocit/scripting/ScriptingTool;->TAG:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/16 v8, 0x69

    invoke-virtual {v1, v7, v9, v8}, Lcom/motorola/motocit/scripting/ScriptingTool;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v7, Lcom/motorola/motocit/CmdFailException;

    iget v8, v1, Lcom/motorola/motocit/scripting/ScriptingTool;->nRxSeqTag:I

    iget-object v9, v1, Lcom/motorola/motocit/scripting/ScriptingTool;->strRxCmd:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v5}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v7
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8

    :catch_8
    move-exception v0

    move-object/from16 v8, v20

    move-object/from16 v9, v23

    goto :goto_10

    :catch_9
    move-exception v0

    move-object/from16 v23, v9

    move-object/from16 v8, v20

    goto :goto_10

    :catch_a
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v23, v9

    goto :goto_10

    :catch_b
    move-exception v0

    move-object/from16 v21, v7

    move-object/from16 v20, v8

    move-object/from16 v23, v9

    goto :goto_10

    :cond_13
    move-object/from16 v21, v7

    goto :goto_11

    :catch_c
    move-exception v0

    move-object/from16 v21, v7

    goto :goto_10

    :catch_d
    move-exception v0

    move-object/from16 v21, v7

    move-object/from16 v8, v20

    move-object/from16 v9, v22

    :goto_10
    iget-object v5, v1, Lcom/motorola/motocit/scripting/ScriptingTool;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception occurred: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x69

    invoke-virtual {v1, v5, v7, v10}, Lcom/motorola/motocit/scripting/ScriptingTool;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    :goto_11
    goto :goto_12

    :cond_14
    const-string v0, "RESULTS_DATABASE_NAME MUST BE SET"

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/motocit/CmdFailException;

    iget v2, v1, Lcom/motorola/motocit/scripting/ScriptingTool;->nRxSeqTag:I

    iget-object v3, v1, Lcom/motorola/motocit/scripting/ScriptingTool;->strRxCmd:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v6}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v0

    :cond_15
    iget-object v0, v1, Lcom/motorola/motocit/scripting/ScriptingTool;->strRxCmd:Ljava/lang/String;

    const-string v2, "help"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/motocit/scripting/ScriptingTool;->printHelp()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v1, Lcom/motorola/motocit/scripting/ScriptingTool;->TAG:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s help printed"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CmdPassException;

    iget v3, v1, Lcom/motorola/motocit/scripting/ScriptingTool;->nRxSeqTag:I

    iget-object v4, v1, Lcom/motorola/motocit/scripting/ScriptingTool;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_16
    :goto_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v1, Lcom/motorola/motocit/scripting/ScriptingTool;->TAG:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v1, Lcom/motorola/motocit/scripting/ScriptingTool;->strRxCmd:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "Activity \'%s\' does not recognize command \'%s\'"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/motorola/motocit/scripting/ScriptingTool;->TAG:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x69

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/motocit/scripting/ScriptingTool;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, v1, Lcom/motorola/motocit/scripting/ScriptingTool;->nRxSeqTag:I

    iget-object v4, v1, Lcom/motorola/motocit/scripting/ScriptingTool;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0xfc7f -> :sswitch_2
        0x288975 -> :sswitch_1
        0x4b536b7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0xdca4bbb -> :sswitch_4
        0xcd3661f -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "ScriptingTool"

    iput-object v0, p0, Lcom/motorola/motocit/scripting/ScriptingTool;->TAG:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/motorola/motocit/Test_Base;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onResume()V

    invoke-virtual {p0}, Lcom/motorola/motocit/scripting/ScriptingTool;->sendStartActivityPassed()V

    return-void
.end method

.method public onSwipeDown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSwipeLeft()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSwipeRight()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSwipeUp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected printHelp()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/motorola/motocit/scripting/ScriptingTool;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "This function will control the Scripting Tool"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/motorola/motocit/scripting/ScriptingTool;->getBaseHelp()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v1, "Activity Specific Commands"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "  RUN_COMMANDS - Run a set of commands"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    COMMAND_XX - Command to run. XX should be incremented for every command and will be run in order from 0 - Nth command"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    TYPE_XX - Type of command to run for COMMAND_XX. ADB, SLEEP, or WAIT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    EXPECTED_RESPONSE_XX - Option Expected response for COMMAND_XX"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    EXPECTED_RESPONSE_TYPE_XX - Option Expected response type for COMMAND_XX: CONTAINS or EXACT_MATCH"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    TIMEOUT_XX - Timeout for COMMAND_XX"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "All command results are recorded in the database table named SCRIPTING_TOOL_RUN_COMMAND_RESULTS."

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "RUN_COMMANDS results can be obtained using the database Activity."

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "SCRIPTING_TOOL_RUN_COMMAND_RESULTS has the following columns:"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    COMMAND - Command run"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    TYPE - Command type"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    EXPECTED_RESPONSE - Expected response used during the command"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    EXPECTED_RESPONSE_TYPE - Expected Response type used for the command"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    TIMEOUT - Timeout used for command response"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    COMMAND_RESPONSE - Response of command"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CommServerDataPacket;

    iget v2, p0, Lcom/motorola/motocit/scripting/ScriptingTool;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/scripting/ScriptingTool;->strRxCmd:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/motocit/scripting/ScriptingTool;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/scripting/ScriptingTool;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    return-void
.end method
