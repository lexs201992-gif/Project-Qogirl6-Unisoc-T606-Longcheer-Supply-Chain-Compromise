.class public Lcom/motorola/motocit/setupwizard/SetupWizard;
.super Lcom/motorola/motocit/Test_Base;
.source "SetupWizard.java"


# instance fields
.field private ret_value:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/motorola/motocit/Test_Base;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/motocit/setupwizard/SetupWizard;->ret_value:Z

    return-void
.end method


# virtual methods
.method protected checkSetupWizardStatus()Z
    .locals 9

    invoke-virtual {p0}, Lcom/motorola/motocit/setupwizard/SetupWizard;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/motocit/setupwizard/SetupWizard;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "task_name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x69

    invoke-virtual {p0, v6, v7, v8}, Lcom/motorola/motocit/setupwizard/SetupWizard;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const-string v6, "com.motorola.blur.startup.CpuIdleWaitActivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    iput-boolean v2, p0, Lcom/motorola/motocit/setupwizard/SetupWizard;->ret_value:Z

    goto :goto_0

    :cond_0
    iput-boolean v4, p0, Lcom/motorola/motocit/setupwizard/SetupWizard;->ret_value:Z

    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/motorola/motocit/setupwizard/SetupWizard;->ret_value:Z

    return v2
.end method

.method protected handleTestSpecificActions()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/motocit/CmdFailException;,
            Lcom/motorola/motocit/CmdPassException;
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/motocit/setupwizard/SetupWizard;->strRxCmd:Ljava/lang/String;

    const-string v1, "GET_SETUPWIZARD_STATUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/motorola/motocit/setupwizard/SetupWizard;->checkSetupWizardStatus()Z

    iget-boolean v3, p0, Lcom/motorola/motocit/setupwizard/SetupWizard;->ret_value:Z

    if-ne v3, v1, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "SETUPWIZARD_STATUS=RUNNING"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "SETUPWIZARD_STATUS=COMPLETED"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v1, Lcom/motorola/motocit/CommServerDataPacket;

    iget v2, p0, Lcom/motorola/motocit/setupwizard/SetupWizard;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/setupwizard/SetupWizard;->strRxCmd:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/motocit/setupwizard/SetupWizard;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/setupwizard/SetupWizard;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/motorola/motocit/CmdPassException;

    iget v4, p0, Lcom/motorola/motocit/setupwizard/SetupWizard;->nRxSeqTag:I

    iget-object v5, p0, Lcom/motorola/motocit/setupwizard/SetupWizard;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v2}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3

    :cond_1
    iget-object v0, p0, Lcom/motorola/motocit/setupwizard/SetupWizard;->strRxCmd:Ljava/lang/String;

    const-string v3, "help"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/motocit/setupwizard/SetupWizard;->printHelp()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/motorola/motocit/setupwizard/SetupWizard;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "%s help printed"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CmdPassException;

    iget v2, p0, Lcom/motorola/motocit/setupwizard/SetupWizard;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/setupwizard/SetupWizard;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/motorola/motocit/setupwizard/SetupWizard;->TAG:Ljava/lang/String;

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/motorola/motocit/setupwizard/SetupWizard;->strRxCmd:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v1, "Activity \'%s\' does not recognize command \'%s\'"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/motorola/motocit/setupwizard/SetupWizard;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x69

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/motocit/setupwizard/SetupWizard;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/setupwizard/SetupWizard;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/setupwizard/SetupWizard;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "SetupWizard"

    iput-object v0, p0, Lcom/motorola/motocit/setupwizard/SetupWizard;->TAG:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/motorola/motocit/Test_Base;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onResume()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/setupwizard/SetupWizard;->moveTaskToBack(Z)Z

    iget-object v0, p0, Lcom/motorola/motocit/setupwizard/SetupWizard;->TAG:Ljava/lang/String;

    const-string v1, "move activty to back"

    const/16 v2, 0x69

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/setupwizard/SetupWizard;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-virtual {p0}, Lcom/motorola/motocit/setupwizard/SetupWizard;->sendStartActivityPassed()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onStart()V

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

.method protected printHelp()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/motorola/motocit/setupwizard/SetupWizard;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "This function is to verify SetupWizard animation running status"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/motorola/motocit/setupwizard/SetupWizard;->getBaseHelp()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v1, "Activity Specific Commands"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "GET_SETUPWIZARD_STATUS - Get current setup wizard animation status."

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "    SETUPWIZARD_STATUS - returns RUNNING or COMPLETED"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CommServerDataPacket;

    iget v2, p0, Lcom/motorola/motocit/setupwizard/SetupWizard;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/setupwizard/SetupWizard;->strRxCmd:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/motocit/setupwizard/SetupWizard;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/setupwizard/SetupWizard;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    return-void
.end method
