.class public Lcom/motorola/bach/modemstats/subsidylock/SubsidyLockStatusManager;
.super Ljava/lang/Object;
.source "SubsidyLockStatusManager.java"


# static fields
.field public static final ACTION_USER_TRY_UNLOCK:Ljava/lang/String; = "com.motorola.android.intent.action.ACTION_USER_TRY_UNLOCK"

.field public static final EXTRA_SUBSIDY_LOCK_UNLOCK_OPERATION:Ljava/lang/String; = "com.motorola.android.intent.extra.SUBSIDY_LOCK_UNLOCK_OPERATION"


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSubsidyLockStatsReport()V
    .locals 0

    return-void
.end method

.method public initAndLogSubsidyLockStats(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public isSubsidyLockCheckInEnabled(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
