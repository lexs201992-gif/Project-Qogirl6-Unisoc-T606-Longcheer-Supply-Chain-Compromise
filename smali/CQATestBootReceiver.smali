.class public Lcom/motorola/motocit/CQATestBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CQATestBootReceiver.java"


# instance fields
.field private contextALT:Landroid/content/Context;

.field private isSetAlarm:Z

.field private settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private initApplication()V
    .locals 3

    const-string v0, "CQATest:CQATestBootReceiver"

    const-string v1, "init app"

    const/16 v2, 0x69

    invoke-static {v0, v1, v2}, Lcom/motorola/motocit/TestUtils;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v0, p0, Lcom/motorola/motocit/CQATestBootReceiver;->contextALT:Landroid/content/Context;

    const-string v1, "altautocycle"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/motocit/CQATestBootReceiver;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "current_step"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setAlarm(I)V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/motocit/CQATestBootReceiver;->isSetAlarm:Z

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/motorola/motocit/CQATestBootReceiver;->contextALT:Landroid/content/Context;

    const-class v3, Lcom/motorola/motocit/alt/altautocycle/AlarmReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "waitTime"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/motorola/motocit/CQATestBootReceiver;->contextALT:Landroid/content/Context;

    const/high16 v3, 0x2000000

    invoke-static {v2, v0, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/motorola/motocit/CQATestBootReceiver;->contextALT:Landroid/content/Context;

    invoke-static {v2, v0, v1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/motorola/motocit/CQATestBootReceiver;->contextALT:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/motorola/motocit/CQATestBootReceiver;->isSetAlarm:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-wide/16 v1, 0x3e8

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    invoke-direct {p0}, Lcom/motorola/motocit/CQATestBootReceiver;->startTest()V

    :goto_2
    return-void
.end method

.method private startTest()V
    .locals 1

    sget v0, Lcom/motorola/motocit/alt/altautocycle/util/Constant;->CYCLE_INTERVAL_TIME:I

    add-int/lit16 v0, v0, 0x7530

    invoke-direct {p0, v0}, Lcom/motorola/motocit/CQATestBootReceiver;->setAlarm(I)V

    iget-boolean v0, p0, Lcom/motorola/motocit/CQATestBootReceiver;->isSetAlarm:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/motorola/motocit/CQATestBootReceiver;->initApplication()V

    :cond_0
    return-void
.end method


# virtual methods
.method cancelAlarm()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/motorola/motocit/CQATestBootReceiver;->contextALT:Landroid/content/Context;

    const-class v2, Lcom/motorola/motocit/alt/altautocycle/AlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/motorola/motocit/CQATestBootReceiver;->contextALT:Landroid/content/Context;

    const/high16 v2, 0x2000000

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/motorola/motocit/CQATestBootReceiver;->contextALT:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/motorola/motocit/CQATestBootReceiver;->contextALT:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object p1, p0, Lcom/motorola/motocit/CQATestBootReceiver;->contextALT:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CQATest:CQATestBootReceiver"

    const/16 v3, 0x69

    invoke-static {v2, v1, v3}, Lcom/motorola/motocit/TestUtils;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/motorola/motocit/AppMainActivity;

    invoke-direct {v4, p1, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v5, 0x0

    const-string v6, "YES"

    const/4 v7, 0x1

    if-eqz v1, :cond_6

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v8

    const-string v9, "ro.bootmode"

    const-string v10, "normal"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v10

    new-instance v11, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v11, v10}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v11}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v11

    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-static {}, Lcom/motorola/motocit/TestUtils;->isFactoryCableBoot()Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "bp-tools"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/motorola/motocit/TestUtils;->isUserdebugEngBuild()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-static {}, Lcom/motorola/motocit/TestUtils;->isOdmDevice()Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    invoke-static {}, Lcom/motorola/motocit/TestUtils;->getAutoStartCommServer()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {}, Lcom/motorola/motocit/TestUtils;->getAutoCQAStart()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_0

    :cond_2
    if-ne v8, v7, :cond_5

    invoke-virtual {v1, v4, v5, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_2

    :cond_3
    :goto_0
    if-eq v8, v7, :cond_5

    invoke-virtual {v1, v4, v7, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_2

    :cond_4
    :goto_1
    if-eq v8, v7, :cond_5

    invoke-virtual {v1, v4, v7, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_5
    :goto_2
    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_6
    invoke-static {}, Lcom/motorola/motocit/TestUtils;->isFactoryCableBoot()Z

    move-result v8

    const/high16 v9, 0x10000000

    if-eq v8, v7, :cond_a

    invoke-static {}, Lcom/motorola/motocit/TestUtils;->isUserdebugEngBuild()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {}, Lcom/motorola/motocit/TestUtils;->isOdmDevice()Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    invoke-static {}, Lcom/motorola/motocit/TestUtils;->getAutoStartCommServer()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/motorola/motocit/TestUtils;->isUserdebugEngBuild()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {}, Lcom/motorola/motocit/TestUtils;->isOdmDevice()Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_9
    invoke-static {}, Lcom/motorola/motocit/TestUtils;->getAutoCQAStart()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "Auto Starting CQA Menu Mode"

    invoke-static {v2, v6, v3}, Lcom/motorola/motocit/TestUtils;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-class v7, Lcom/motorola/motocit/AppMainActivity;

    invoke-virtual {v6, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :cond_a
    :goto_3
    invoke-static {p1}, Lcom/motorola/motocit/TestUtils;->isCommServerRunning(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "Starting CommServer"

    invoke-static {v2, v7, v3}, Lcom/motorola/motocit/TestUtils;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-class v8, Lcom/motorola/motocit/CommServer;

    invoke-virtual {v7, p1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, v7}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {}, Lcom/motorola/motocit/TestUtils;->getAutoCQAStartFactory()Ljava/lang/String;

    move-result-object v8

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "Auto Starting CQA Menu Mode Factory"

    invoke-static {v2, v6, v3}, Lcom/motorola/motocit/TestUtils;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    :try_start_0
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-class v8, Lcom/motorola/motocit/AppMainActivity;

    invoke-virtual {v6, p1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8, v3}, Lcom/motorola/motocit/TestUtils;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    :cond_b
    :goto_4
    nop

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    new-instance v6, Ljava/io/File;

    const-string v7, "/sdcard/alt_autocycle/"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "create folder for alt test"

    invoke-static {v2, v7, v3}, Lcom/motorola/motocit/TestUtils;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    :cond_c
    const-string v6, "device boot completed"

    invoke-static {v2, v6, v3}, Lcom/motorola/motocit/TestUtils;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const/4 v6, 0x0

    :try_start_1
    const-string v7, "altautocycle"

    invoke-virtual {p1, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/motocit/CQATestBootReceiver;->settings:Landroid/content/SharedPreferences;

    const-string v8, "start_flag"

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    move v6, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In CQATestBootReceiver, startFlag = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v3}, Lcom/motorola/motocit/TestUtils;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v5

    const/4 v6, 0x0

    :goto_5
    if-nez v6, :cond_d

    const-string v5, "no need to start test, start_flag=false"

    invoke-static {v2, v5, v3}, Lcom/motorola/motocit/TestUtils;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void

    :cond_d
    const-string v5, "start the test, start_flag=true"

    invoke-static {v2, v5, v3}, Lcom/motorola/motocit/TestUtils;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-static {}, Lcom/motorola/motocit/TestUtils;->isFactoryCableBoot()Z

    move-result v5

    if-nez v5, :cond_e

    return-void

    :cond_e
    const-string v5, "autocycle restart"

    invoke-static {v2, v5, v3}, Lcom/motorola/motocit/TestUtils;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-virtual {p0}, Lcom/motorola/motocit/CQATestBootReceiver;->cancelAlarm()V

    invoke-direct {p0}, Lcom/motorola/motocit/CQATestBootReceiver;->startTest()V

    return-void
.end method
