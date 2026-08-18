.class public Lcom/motorola/motocit/AppMainActivity;
.super Lcom/motorola/motocit/Test_Base;
.source "AppMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/motocit/AppMainActivity$MyOnPageChangeListener;,
        Lcom/motorola/motocit/AppMainActivity$MyOnClickListener;,
        Lcom/motorola/motocit/AppMainActivity$MyPagerAdapter;
    }
.end annotation


# static fields
.field private static final mDisable_sound:Ljava/lang/String; = "sound_effects_enabled"

.field private static mSettingsClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static mSettingsGetInt:Ljava/lang/reflect/Method;

.field private static mSettingsPutInt:Ljava/lang/reflect/Method;


# instance fields
.field private bmpW:I

.field private context:Landroid/content/Context;

.field private currIndex:I

.field private cursor:Landroid/widget/ImageView;

.field private isPermissionAllowed:Z

.field private isPermissionAllowedForAccount:Z

.field private isPermissionAllowedForCamera:Z

.field private isWiFiOffDefault:Z

.field private listViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDefault_sound_effect:Ljava/lang/Integer;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private manager:Landroid/app/LocalActivityManager;

.field private offset:I

.field private permissions:[Ljava/lang/String;

.field private tabNameAlt:Landroid/widget/TextView;

.field private tabNameCQA:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/motocit/AppMainActivity;->mSettingsPutInt:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/motorola/motocit/AppMainActivity;->mSettingsGetInt:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/motorola/motocit/AppMainActivity;->mSettingsClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    invoke-direct {p0}, Lcom/motorola/motocit/Test_Base;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/motocit/AppMainActivity;->offset:I

    iput v0, p0, Lcom/motorola/motocit/AppMainActivity;->currIndex:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/motocit/AppMainActivity;->manager:Landroid/app/LocalActivityManager;

    iput-object v1, p0, Lcom/motorola/motocit/AppMainActivity;->context:Landroid/content/Context;

    iput-object v1, p0, Lcom/motorola/motocit/AppMainActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-boolean v0, p0, Lcom/motorola/motocit/AppMainActivity;->isWiFiOffDefault:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/motocit/AppMainActivity;->mDefault_sound_effect:Ljava/lang/Integer;

    iput-boolean v0, p0, Lcom/motorola/motocit/AppMainActivity;->isPermissionAllowed:Z

    iput-boolean v0, p0, Lcom/motorola/motocit/AppMainActivity;->isPermissionAllowedForCamera:Z

    iput-boolean v0, p0, Lcom/motorola/motocit/AppMainActivity;->isPermissionAllowedForAccount:Z

    const-string v2, "android.permission.CAMERA"

    const-string v3, "android.permission.RECORD_AUDIO"

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    const-string v5, "android.permission.READ_PHONE_STATE"

    const-string v6, "android.permission.BODY_SENSORS"

    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v8, "android.permission.BLUETOOTH_CONNECT"

    const-string v9, "android.permission.BLUETOOTH_SCAN"

    const-string v10, "android.permission.BLUETOOTH_ADVERTISE"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/motocit/AppMainActivity;->permissions:[Ljava/lang/String;

    return-void
.end method

.method private InitImageView()V
    .locals 5

    const v0, 0x7f060086

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/AppMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/motocit/AppMainActivity;->cursor:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/motorola/motocit/AppMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/motorola/motocit/AppMainActivity;->bmpW:I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/motorola/motocit/AppMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v1, 0x2

    iget v3, p0, Lcom/motorola/motocit/AppMainActivity;->bmpW:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/motorola/motocit/AppMainActivity;->offset:I

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iget v3, p0, Lcom/motorola/motocit/AppMainActivity;->offset:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v3, p0, Lcom/motorola/motocit/AppMainActivity;->cursor:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private InitTextView()V
    .locals 3

    const v0, 0x7f06016c

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/AppMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/AppMainActivity;->tabNameCQA:Landroid/widget/TextView;

    const v0, 0x7f06016b

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/AppMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/AppMainActivity;->tabNameAlt:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/motocit/AppMainActivity;->tabNameCQA:Landroid/widget/TextView;

    new-instance v1, Lcom/motorola/motocit/AppMainActivity$MyOnClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/motocit/AppMainActivity$MyOnClickListener;-><init>(Lcom/motorola/motocit/AppMainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/motorola/motocit/AppMainActivity;->tabNameAlt:Landroid/widget/TextView;

    new-instance v1, Lcom/motorola/motocit/AppMainActivity$MyOnClickListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/motocit/AppMainActivity$MyOnClickListener;-><init>(Lcom/motorola/motocit/AppMainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private InitViewPager()V
    .locals 7

    invoke-virtual {p0}, Lcom/motorola/motocit/AppMainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f060190

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/AppMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/motorola/motocit/AppMainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/motorola/motocit/AppMainActivity;->context:Landroid/content/Context;

    const-class v4, Lcom/motorola/motocit/Test_Main;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.motorola.motocit.R.layout.main_test"

    invoke-direct {p0, v3, v2}, Lcom/motorola/motocit/AppMainActivity;->getView(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v4, "com.motorola.motocit.R.layout.alt_main_layout"

    const/16 v5, 0x17

    if-lt v3, v5, :cond_0

    invoke-static {}, Lcom/motorola/motocit/TestUtils;->isUserdebugEngBuild()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/motorola/motocit/TestUtils;->isMotDevice()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/motorola/motocit/AppMainActivity;->context:Landroid/content/Context;

    const-class v6, Lcom/motorola/motocit/alt/altautocycle/AltMainActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, v4, v3}, Lcom/motorola/motocit/AppMainActivity;->getView(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/motorola/motocit/AppMainActivity;->context:Landroid/content/Context;

    const-class v6, Lcom/motorola/motocit/alt/altautocycle/AltMainActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, v4, v3}, Lcom/motorola/motocit/AppMainActivity;->getView(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v3, p0, Lcom/motorola/motocit/AppMainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/motorola/motocit/AppMainActivity$MyPagerAdapter;

    invoke-direct {v4, p0, v1}, Lcom/motorola/motocit/AppMainActivity$MyPagerAdapter;-><init>(Lcom/motorola/motocit/AppMainActivity;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v3, p0, Lcom/motorola/motocit/AppMainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v3, p0, Lcom/motorola/motocit/AppMainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/motorola/motocit/AppMainActivity$MyOnPageChangeListener;

    invoke-direct {v4, p0}, Lcom/motorola/motocit/AppMainActivity$MyOnPageChangeListener;-><init>(Lcom/motorola/motocit/AppMainActivity;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/motocit/AppMainActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/AppMainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/motocit/AppMainActivity;)I
    .locals 1

    iget v0, p0, Lcom/motorola/motocit/AppMainActivity;->offset:I

    return v0
.end method

.method static synthetic access$200(Lcom/motorola/motocit/AppMainActivity;)I
    .locals 1

    iget v0, p0, Lcom/motorola/motocit/AppMainActivity;->bmpW:I

    return v0
.end method

.method static synthetic access$300(Lcom/motorola/motocit/AppMainActivity;)I
    .locals 1

    iget v0, p0, Lcom/motorola/motocit/AppMainActivity;->currIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/motorola/motocit/AppMainActivity;I)I
    .locals 0

    iput p1, p0, Lcom/motorola/motocit/AppMainActivity;->currIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/motorola/motocit/AppMainActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/AppMainActivity;->cursor:Landroid/widget/ImageView;

    return-object v0
.end method

.method private checkPermission()V
    .locals 12

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/motorola/motocit/AppMainActivity;->isPermissionAllowed:Z

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/motorola/motocit/AppMainActivity;->TAG:Ljava/lang/String;

    const-string v2, "checking permission"

    const/16 v3, 0x69

    invoke-virtual {p0, v0, v2, v3}, Lcom/motorola/motocit/AppMainActivity;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/motorola/motocit/AppMainActivity;->permissions:[Ljava/lang/String;

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v2, v6

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/motocit/AppMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v7, v5}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    invoke-virtual {p0, v7}, Lcom/motorola/motocit/AppMainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v8

    iget-object v9, p0, Lcom/motorola/motocit/AppMainActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " does not exist"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10, v3}, Lcom/motorola/motocit/AppMainActivity;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/motocit/AppMainActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zhouxy requesting permissions requestPermissions:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4, v3}, Lcom/motorola/motocit/AppMainActivity;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const/16 v2, 0x3e9

    invoke-virtual {p0, v1, v2}, Lcom/motorola/motocit/AppMainActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :cond_3
    iput-boolean v1, p0, Lcom/motorola/motocit/AppMainActivity;->isPermissionAllowed:Z

    :goto_2
    return-void
.end method

.method private checkWiFiDefaultState()V
    .locals 1

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/AppMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/motorola/motocit/AppMainActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/motocit/AppMainActivity;->isWiFiOffDefault:Z

    :cond_0
    return-void
.end method

.method private disableTouchSound()V
    .locals 11

    const-string v0, "sound_effects_enabled"

    const-string v1, "android.provider.Settings$System"

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lcom/motorola/motocit/AppMainActivity;->mSettingsClass:Ljava/lang/Class;

    if-eqz v6, :cond_0

    const-string v7, "getInt"

    new-array v8, v3, [Ljava/lang/Class;

    const-class v9, Landroid/content/ContentResolver;

    aput-object v9, v8, v5

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/motorola/motocit/AppMainActivity;->mSettingsGetInt:Ljava/lang/reflect/Method;

    sget-object v6, Lcom/motorola/motocit/AppMainActivity;->mSettingsClass:Ljava/lang/Class;

    const-string v7, "putInt"

    new-array v8, v3, [Ljava/lang/Class;

    const-class v9, Landroid/content/ContentResolver;

    aput-object v9, v8, v5

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/motorola/motocit/AppMainActivity;->mSettingsPutInt:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    nop

    :goto_1
    const/16 v6, 0x69

    :try_start_1
    sget-object v7, Lcom/motorola/motocit/AppMainActivity;->mSettingsGetInt:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_1

    sget-object v8, Lcom/motorola/motocit/AppMainActivity;->mSettingsClass:Ljava/lang/Class;

    new-array v9, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/motorola/motocit/AppMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    aput-object v10, v9, v5

    aput-object v0, v9, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    iput-object v7, p0, Lcom/motorola/motocit/AppMainActivity;->mDefault_sound_effect:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/motorola/motocit/AppMainActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getInt for default sound effect value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/motorola/motocit/AppMainActivity;->mDefault_sound_effect:Ljava/lang/Integer;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8, v6}, Lcom/motorola/motocit/AppMainActivity;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    goto :goto_2

    :catch_2
    move-exception v7

    iget-object v8, p0, Lcom/motorola/motocit/AppMainActivity;->TAG:Ljava/lang/String;

    const-string v9, "fail to invoke getInt"

    invoke-virtual {p0, v8, v9, v6}, Lcom/motorola/motocit/AppMainActivity;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    :goto_2
    sget-object v7, Lcom/motorola/motocit/AppMainActivity;->mSettingsPutInt:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/motorola/motocit/AppMainActivity;->mDefault_sound_effect:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v4, :cond_2

    :try_start_2
    sget-object v7, Lcom/motorola/motocit/AppMainActivity;->mSettingsPutInt:Ljava/lang/reflect/Method;

    sget-object v8, Lcom/motorola/motocit/AppMainActivity;->mSettingsClass:Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/motorola/motocit/AppMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    aput-object v9, v3, v5

    aput-object v0, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-virtual {v7, v8, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    iget-object v2, p0, Lcom/motorola/motocit/AppMainActivity;->TAG:Ljava/lang/String;

    const-string v3, "fail to invoke putInt"

    invoke-virtual {p0, v2, v3, v6}, Lcom/motorola/motocit/AppMainActivity;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    :cond_2
    :goto_3
    return-void
.end method

.method private getView(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/AppMainActivity;->manager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private restoreTouchSound()V
    .locals 6

    iget-object v0, p0, Lcom/motorola/motocit/AppMainActivity;->mDefault_sound_effect:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    sget-object v0, Lcom/motorola/motocit/AppMainActivity;->mSettingsPutInt:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/motorola/motocit/AppMainActivity;->mSettingsClass:Ljava/lang/Class;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/motorola/motocit/AppMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "sound_effects_enabled"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/motorola/motocit/AppMainActivity;->TAG:Ljava/lang/String;

    const/16 v2, 0x69

    const-string v3, "fail to re-enable touch sound"

    invoke-virtual {p0, v1, v3, v2}, Lcom/motorola/motocit/AppMainActivity;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    :cond_0
    :goto_0
    return-void
.end method

.method private restoreWiFiState(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/motorola/motocit/AppMainActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/motocit/AppMainActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/motocit/AppMainActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/motocit/AppMainActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1
    :goto_0
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

    iget-object v0, p0, Lcom/motorola/motocit/AppMainActivity;->strRxCmd:Ljava/lang/String;

    const-string v1, "NO_VALID_COMMANDS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/motorola/motocit/AppMainActivity;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/motorola/motocit/AppMainActivity;->strRxCmd:Ljava/lang/String;

    aput-object v4, v1, v2

    const-string v2, "Activity \'%s\' does not recognize command \'%s\'"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/motorola/motocit/AppMainActivity;->TAG:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x69

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/motocit/AppMainActivity;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/AppMainActivity;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/AppMainActivity;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "App_Main_Activity"

    iput-object v0, p0, Lcom/motorola/motocit/AppMainActivity;->TAG:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/motorola/motocit/Test_Base;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/motorola/motocit/AppMainActivity;->checkWiFiDefaultState()V

    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/AppMainActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/motorola/motocit/AppMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/motocit/AppMainActivity;->context:Landroid/content/Context;

    new-instance v0, Landroid/app/LocalActivityManager;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/motorola/motocit/AppMainActivity;->manager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/motorola/motocit/AppMainActivity;->disableTouchSound()V

    invoke-direct {p0}, Lcom/motorola/motocit/AppMainActivity;->InitImageView()V

    invoke-direct {p0}, Lcom/motorola/motocit/AppMainActivity;->InitTextView()V

    invoke-direct {p0}, Lcom/motorola/motocit/AppMainActivity;->InitViewPager()V

    return-void
.end method

.method protected onDestroy()V
    .locals 8

    move-object v0, p0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/motorola/motocit/AppMainActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "ro.bootmode"

    const-string v4, "normal"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-static {}, Lcom/motorola/motocit/TestUtils;->isFactoryCableBoot()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "bp-tools"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/motorola/motocit/AppMainActivity;->TAG:Ljava/lang/String;

    const-string v7, "Neither factory mode nor bp-tools mode and current window is visible, will hide it."

    invoke-virtual {p0, v6, v7, v4}, Lcom/motorola/motocit/AppMainActivity;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    :cond_0
    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onDestroy()V

    iget-object v5, p0, Lcom/motorola/motocit/AppMainActivity;->TAG:Ljava/lang/String;

    const-string v6, "onDestroy"

    invoke-virtual {p0, v5, v6, v4}, Lcom/motorola/motocit/AppMainActivity;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-boolean v4, p0, Lcom/motorola/motocit/AppMainActivity;->isWiFiOffDefault:Z

    invoke-direct {p0, v4}, Lcom/motorola/motocit/AppMainActivity;->restoreWiFiState(Z)V

    invoke-direct {p0}, Lcom/motorola/motocit/AppMainActivity;->restoreTouchSound()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/motorola/motocit/AppMainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp() saw "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x69

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/AppMainActivity;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/AppMainActivity;->systemExitWrapper(I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/motorola/motocit/Test_Base;->onPostCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/AppMainActivity;->enableSystemUiHider(Z)Z

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const/16 v0, 0x3e9

    if-ne v0, p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/motorola/motocit/AppMainActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zhouxy onRequestPermissionsResult grantResults[i]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x69

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/motocit/AppMainActivity;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    aget v1, p3, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/motocit/AppMainActivity;->TAG:Ljava/lang/String;

    const-string v2, "permission denied"

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/motocit/AppMainActivity;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-virtual {p0}, Lcom/motorola/motocit/AppMainActivity;->finish()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onResume()V

    invoke-direct {p0}, Lcom/motorola/motocit/AppMainActivity;->checkPermission()V

    iget-boolean v0, p0, Lcom/motorola/motocit/AppMainActivity;->isPermissionAllowed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/motocit/AppMainActivity;->sendStartActivityPassed()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/motocit/AppMainActivity;->TAG:Ljava/lang/String;

    const/16 v1, 0x65

    const-string v2, "no permission granted to run test"

    invoke-virtual {p0, v0, v2, v1}, Lcom/motorola/motocit/AppMainActivity;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const-string v0, "No Permission Granted to Camera test"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/AppMainActivity;->sendStartActivityFailed(Ljava/lang/String;)V

    :goto_0
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

    const-string v1, "App Main Activity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "This activity brings up the Main Test menu"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/motorola/motocit/AppMainActivity;->getBaseHelp()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v1, "Activity Specific Commands"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CommServerDataPacket;

    iget v2, p0, Lcom/motorola/motocit/AppMainActivity;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/AppMainActivity;->strRxCmd:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/motocit/AppMainActivity;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/AppMainActivity;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    return-void
.end method
