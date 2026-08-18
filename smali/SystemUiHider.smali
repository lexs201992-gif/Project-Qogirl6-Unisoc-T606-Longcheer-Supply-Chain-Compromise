.class public Lcom/motorola/motocit/SystemUiHider;
.super Ljava/lang/Object;
.source "SystemUiHider.java"


# instance fields
.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHider:Ljava/lang/Runnable;

.field private mInvalidateScreenWhenHidden:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/motocit/SystemUiHider;->mEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/motocit/SystemUiHider;->mInvalidateScreenWhenHidden:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/motocit/SystemUiHider;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/motocit/SystemUiHider$1;

    invoke-direct {v0, p0}, Lcom/motorola/motocit/SystemUiHider$1;-><init>(Lcom/motorola/motocit/SystemUiHider;)V

    iput-object v0, p0, Lcom/motorola/motocit/SystemUiHider;->mHider:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/motorola/motocit/SystemUiHider;->mView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/motocit/SystemUiHider;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/SystemUiHider;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/motocit/SystemUiHider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/motocit/SystemUiHider;->mEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/motorola/motocit/SystemUiHider;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/SystemUiHider;->mHider:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/motocit/SystemUiHider;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/SystemUiHider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/motocit/SystemUiHider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/motocit/SystemUiHider;->mInvalidateScreenWhenHidden:Z

    return v0
.end method


# virtual methods
.method public enable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/motorola/motocit/SystemUiHider;->mEnabled:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/motorola/motocit/SystemUiHider;->mView:Landroid/view/View;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/motocit/SystemUiHider;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method public invalidateScreenWhenHidden(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/motocit/SystemUiHider;->mInvalidateScreenWhenHidden:Z

    return-void
.end method

.method public setup()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/motocit/SystemUiHider;->mView:Landroid/view/View;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/motorola/motocit/SystemUiHider;->mView:Landroid/view/View;

    new-instance v1, Lcom/motorola/motocit/SystemUiHider$2;

    invoke-direct {v1, p0}, Lcom/motorola/motocit/SystemUiHider$2;-><init>(Lcom/motorola/motocit/SystemUiHider;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method
