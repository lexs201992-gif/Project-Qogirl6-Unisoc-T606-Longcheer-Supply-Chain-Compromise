.class public Lcom/motorola/motocit/display/DisplayUtils;
.super Ljava/lang/Object;
.source "DisplayUtils.java"


# static fields
.field private static final ANIMATOR_DURATION:Ljava/lang/String; = "AnimatorDuration"

.field private static final CQA_PREFERENCES:Ljava/lang/String; = "CQATest"

.field private static final DEFAULT_SCALE_SETTING:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "DisplayUtils"

.field private static final TRANSITION_ANIMATION:Ljava/lang/String; = "TransitionAnimation"

.field private static final WINDOW_ANIMATION:Ljava/lang/String; = "WindowAnimation"

.field private static final sFactoryBuild:Ljava/lang/String;


# instance fields
.field private mAnimatorDuration:F

.field private mContext:Landroid/content/Context;

.field private mTransitionAnimation:F

.field private mWindowAnimation:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.vendor.build.motfactory"

    const-string v1, "unknow"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/motocit/display/DisplayUtils;->sFactoryBuild:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/motorola/motocit/display/DisplayUtils;->mWindowAnimation:F

    iput v0, p0, Lcom/motorola/motocit/display/DisplayUtils;->mAnimatorDuration:F

    iput v0, p0, Lcom/motorola/motocit/display/DisplayUtils;->mTransitionAnimation:F

    iput-object p1, p0, Lcom/motorola/motocit/display/DisplayUtils;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public restoreAnimation()V
    .locals 6

    sget-object v0, Lcom/motorola/motocit/display/DisplayUtils;->sFactoryBuild:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "DisplayUtils"

    if-nez v0, :cond_0

    const/16 v0, 0x69

    const-string v2, "restoreAnimation() not moto factory build"

    invoke-static {v1, v2, v0}, Lcom/motorola/motocit/TestUtils;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void

    :cond_0
    iget v0, p0, Lcom/motorola/motocit/display/DisplayUtils;->mWindowAnimation:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    const/16 v3, 0x64

    if-lez v0, :cond_1

    iget v0, p0, Lcom/motorola/motocit/display/DisplayUtils;->mAnimatorDuration:F

    cmpg-float v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/motorola/motocit/display/DisplayUtils;->mTransitionAnimation:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    :cond_1
    const-string v0, "restoreAnimation() restore animation settings from preferences"

    invoke-static {v1, v0, v3}, Lcom/motorola/motocit/TestUtils;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v0, p0, Lcom/motorola/motocit/display/DisplayUtils;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const-string v5, "CQATest"

    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget v4, p0, Lcom/motorola/motocit/display/DisplayUtils;->mWindowAnimation:F

    const-string v5, "WindowAnimation"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    iput v4, p0, Lcom/motorola/motocit/display/DisplayUtils;->mWindowAnimation:F

    iget v4, p0, Lcom/motorola/motocit/display/DisplayUtils;->mAnimatorDuration:F

    const-string v5, "AnimatorDuration"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    iput v4, p0, Lcom/motorola/motocit/display/DisplayUtils;->mAnimatorDuration:F

    iget v4, p0, Lcom/motorola/motocit/display/DisplayUtils;->mTransitionAnimation:F

    const-string v5, "TransitionAnimation"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    iput v4, p0, Lcom/motorola/motocit/display/DisplayUtils;->mTransitionAnimation:F

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreAnimation() mWindowAnimation = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/motorola/motocit/display/DisplayUtils;->mWindowAnimation:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " mAnimatorDuration = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/motorola/motocit/display/DisplayUtils;->mAnimatorDuration:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " mTransitionAnimation = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/motorola/motocit/display/DisplayUtils;->mTransitionAnimation:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/motorola/motocit/TestUtils;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v0, p0, Lcom/motorola/motocit/display/DisplayUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/motorola/motocit/display/DisplayUtils;->mWindowAnimation:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_3

    const-string v3, "window_animation_scale"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    :cond_3
    iget v1, p0, Lcom/motorola/motocit/display/DisplayUtils;->mAnimatorDuration:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_4

    const-string v3, "animator_duration_scale"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    :cond_4
    iget v1, p0, Lcom/motorola/motocit/display/DisplayUtils;->mTransitionAnimation:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_5

    const-string v2, "transition_animation_scale"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    :cond_5
    return-void
.end method

.method public restoreAnimationInBoot()V
    .locals 12

    sget-object v0, Lcom/motorola/motocit/display/DisplayUtils;->sFactoryBuild:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/motocit/display/DisplayUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "window_animation_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    const-string v4, "animator_duration_scale"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v5

    const-string v6, "transition_animation_scale"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    const/4 v7, 0x0

    cmpl-float v8, v3, v7

    if-gtz v8, :cond_5

    cmpl-float v8, v5, v7

    if-gtz v8, :cond_5

    cmpl-float v8, v2, v7

    if-lez v8, :cond_1

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/motorola/motocit/display/DisplayUtils;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const-string v10, "CQATest"

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "WindowAnimation"

    const/high16 v10, -0x40800000    # -1.0f

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    const-string v9, "AnimatorDuration"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    const-string v9, "TransitionAnimation"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoreAnimationInBoot() windowAnimation = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " animatorDuration = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " transitionAnimation = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x64

    const-string v11, "DisplayUtils"

    invoke-static {v11, v9, v10}, Lcom/motorola/motocit/TestUtils;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    cmpl-float v9, v3, v7

    if-lez v9, :cond_2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    :cond_2
    cmpl-float v1, v5, v7

    if-lez v1, :cond_3

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    :cond_3
    cmpl-float v1, v2, v7

    if-lez v1, :cond_4

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    :cond_4
    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method public stopAnimation()V
    .locals 13

    sget-object v0, Lcom/motorola/motocit/display/DisplayUtils;->sFactoryBuild:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "DisplayUtils"

    if-nez v0, :cond_0

    const/16 v0, 0x69

    const-string v2, "stopAnimation() Not moto factory build"

    invoke-static {v1, v2, v0}, Lcom/motorola/motocit/TestUtils;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/motocit/display/DisplayUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "window_animation_scale"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    iput v4, p0, Lcom/motorola/motocit/display/DisplayUtils;->mWindowAnimation:F

    const-string v4, "animator_duration_scale"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v5

    iput v5, p0, Lcom/motorola/motocit/display/DisplayUtils;->mAnimatorDuration:F

    const-string v5, "transition_animation_scale"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/motorola/motocit/display/DisplayUtils;->mTransitionAnimation:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopAnimation() mWindowAnimation = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/motorola/motocit/display/DisplayUtils;->mWindowAnimation:F

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " mAnimatorDuration = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/motorola/motocit/display/DisplayUtils;->mAnimatorDuration:F

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " mTransitionAnimation = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/motorola/motocit/display/DisplayUtils;->mTransitionAnimation:F

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x64

    invoke-static {v1, v3, v6}, Lcom/motorola/motocit/TestUtils;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/motorola/motocit/display/DisplayUtils;->mContext:Landroid/content/Context;

    const-string v4, "CQATest"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "WindowAnimation"

    const/high16 v5, -0x40800000    # -1.0f

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    const-string v8, "AnimatorDuration"

    invoke-interface {v2, v8, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v9

    const-string v10, "TransitionAnimation"

    invoke-interface {v2, v10, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    const/4 v11, 0x0

    cmpl-float v12, v7, v11

    if-lez v12, :cond_1

    cmpl-float v12, v9, v11

    if-lez v12, :cond_1

    cmpl-float v12, v5, v11

    if-lez v12, :cond_1

    return-void

    :cond_1
    iget v12, p0, Lcom/motorola/motocit/display/DisplayUtils;->mWindowAnimation:F

    cmpl-float v12, v12, v11

    if-lez v12, :cond_2

    iget v12, p0, Lcom/motorola/motocit/display/DisplayUtils;->mAnimatorDuration:F

    cmpl-float v12, v12, v11

    if-lez v12, :cond_2

    iget v12, p0, Lcom/motorola/motocit/display/DisplayUtils;->mTransitionAnimation:F

    cmpl-float v11, v12, v11

    if-lez v11, :cond_2

    const-string v11, "stopAnimation() save animation settings"

    invoke-static {v1, v11, v6}, Lcom/motorola/motocit/TestUtils;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget v1, p0, Lcom/motorola/motocit/display/DisplayUtils;->mWindowAnimation:F

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    iget v1, p0, Lcom/motorola/motocit/display/DisplayUtils;->mAnimatorDuration:F

    invoke-interface {v3, v8, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    iget v1, p0, Lcom/motorola/motocit/display/DisplayUtils;->mTransitionAnimation:F

    invoke-interface {v3, v10, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    return-void
.end method
