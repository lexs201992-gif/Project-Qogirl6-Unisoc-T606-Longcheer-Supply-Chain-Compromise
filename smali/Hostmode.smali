.class public Lcom/motorola/motocit/hostmode/Hostmode;
.super Lcom/motorola/motocit/Test_Base;
.source "Hostmode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/motocit/hostmode/Hostmode$USBHandler;
    }
.end annotation


# static fields
.field public static final DELAY_MILLIS:I = 0x1f4

.field public static final MESSAGE_REFRESH:I


# instance fields
.field private mDetailSlaveInfo:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHostMode:Ljava/lang/String;

.field private mHostModeReminder:Landroid/widget/TextView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsHostMode:Z

.field private mIsRecorded:Z

.field private mIsTestPassed:Z

.field private mMouseEvent:I

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/motorola/motocit/Test_Base;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mHostMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mHostModeReminder:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mDetailSlaveInfo:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mIsHostMode:Z

    iput-boolean v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mIsTestPassed:Z

    iput-boolean v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mIsRecorded:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mMouseEvent:I

    new-instance v0, Lcom/motorola/motocit/hostmode/Hostmode$1;

    invoke-direct {v0, p0}, Lcom/motorola/motocit/hostmode/Hostmode$1;-><init>(Lcom/motorola/motocit/hostmode/Hostmode;)V

    iput-object v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/motocit/hostmode/Hostmode;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/motocit/hostmode/Hostmode;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/hostmode/Hostmode;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/motocit/hostmode/Hostmode;Landroid/hardware/usb/UsbDevice;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/motorola/motocit/hostmode/Hostmode;->checkDeviceInUithread(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/motorola/motocit/hostmode/Hostmode;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mIsHostMode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/motorola/motocit/hostmode/Hostmode;)V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/motocit/hostmode/Hostmode;->refresh()V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/motocit/hostmode/Hostmode;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/motorola/motocit/hostmode/Hostmode;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/hostmode/Hostmode;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$802(Lcom/motorola/motocit/hostmode/Hostmode;I)I
    .locals 0

    iput p1, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mMouseEvent:I

    return p1
.end method

.method private checkDeviceInUithread(Landroid/hardware/usb/UsbDevice;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v2

    const/4 v3, 0x3

    if-eq v3, v2, :cond_1

    const/16 v3, 0x8

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/motorola/motocit/hostmode/Hostmode;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {p0, v3, v4, v5}, Lcom/motorola/motocit/hostmode/Hostmode;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private logResults(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "USBHOSTMODE"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mIsHostMode:Z

    if-eqz v2, :cond_0

    const-string v2, "YES"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, "NO"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v2, p0, Lcom/motorola/motocit/hostmode/Hostmode;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/motorola/motocit/hostmode/Hostmode;->logTestResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private refresh()V
    .locals 15

    iget-object v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[refresh] mIsHostMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mIsHostMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x69

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/hostmode/Hostmode;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[refresh] mIsTestPassed="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mIsTestPassed:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/hostmode/Hostmode;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-boolean v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mIsHostMode:Z

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v4

    const-string v5, ""

    if-lez v4, :cond_4

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/usb/UsbDevice;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ManufacturerName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\nProductName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\nPID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "\nVID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "\nDeviceVersion: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v11

    if-lez v11, :cond_0

    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v10}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v12

    if-ge v11, v12, :cond_0

    invoke-virtual {v10, v11}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EndpointCount: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "\nInterfaceClass: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " <8-Mass storage device>"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    nop

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_1
    if-eqz v6, :cond_3

    if-eqz v7, :cond_2

    iget-object v5, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mDetailSlaveInfo:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mDetailSlaveInfo:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mDetailSlaveInfo:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    goto :goto_4

    :cond_4
    iget v4, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mMouseEvent:I

    const/16 v6, 0x9

    if-ne v4, v6, :cond_5

    iput-boolean v3, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mIsHostMode:Z

    iget-object v4, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mDetailSlaveInfo:Landroid/widget/TextView;

    const-string v5, "Mouse enter"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    const/4 v6, 0x7

    if-ne v4, v6, :cond_6

    iput-boolean v3, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mIsHostMode:Z

    iget-object v4, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mDetailSlaveInfo:Landroid/widget/TextView;

    const-string v5, "Mouse move"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    const/16 v6, 0xa

    if-ne v4, v6, :cond_7

    iput-boolean v1, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mIsHostMode:Z

    iget-object v4, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mDetailSlaveInfo:Landroid/widget/TextView;

    const-string v5, "Mouse exit"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, -0x1

    iput v4, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mMouseEvent:I

    goto :goto_3

    :cond_7
    iput-boolean v1, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mIsHostMode:Z

    iget-object v4, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mDetailSlaveInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v4, p0, Lcom/motorola/motocit/hostmode/Hostmode;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMouseEvent ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mMouseEvent:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v2}, Lcom/motorola/motocit/hostmode/Hostmode;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    :cond_8
    :goto_4
    iget-boolean v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mIsHostMode:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mIsTestPassed:Z

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    const-string v0, "Fail"

    iput-object v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mHostMode:Ljava/lang/String;

    iget-object v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mHostModeReminder:Landroid/widget/TextView;

    const/high16 v4, -0x10000

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mDetailSlaveInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    :cond_a
    :goto_5
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mHostMode:Ljava/lang/String;

    iget-object v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mHostModeReminder:Landroid/widget/TextView;

    const v4, -0xff0100

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mDetailSlaveInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iput-boolean v3, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mIsTestPassed:Z

    :goto_6
    iget-object v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mHostModeReminder:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mHostMode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modeCheck(Seq)= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Seq"

    invoke-virtual {p0, v5}, Lcom/motorola/motocit/hostmode/Hostmode;->modeCheck(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",isGeneralSeqMode()="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/motocit/hostmode/Hostmode;->isGeneralSeqMode()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",mIsTestPassed ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mIsTestPassed:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",mIsRecorded = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mIsRecorded:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4, v2}, Lcom/motorola/motocit/hostmode/Hostmode;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-virtual {p0, v5}, Lcom/motorola/motocit/hostmode/Hostmode;->modeCheck(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/motorola/motocit/hostmode/Hostmode;->isGeneralSeqMode()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    iget-boolean v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mIsTestPassed:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mIsRecorded:Z

    if-nez v0, :cond_c

    const-string v0, "testresult.txt"

    const-string v2, "USB Host Mode: PASS\r\n"

    const v4, 0x8000

    invoke-virtual {p0, v0, v2, v4}, Lcom/motorola/motocit/hostmode/Hostmode;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "PASS"

    invoke-direct {p0, v2}, Lcom/motorola/motocit/hostmode/Hostmode;->logResults(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mHostMode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v4}, Lcom/motorola/motocit/hostmode/Hostmode;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    iput-boolean v3, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mIsRecorded:Z

    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3, v1}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_7
    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hostmode/Hostmode;->systemExitWrapper(I)V

    :cond_c
    iget-object v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method protected handleTestSpecificActions()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/motocit/CmdFailException;,
            Lcom/motorola/motocit/CmdPassException;
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->strRxCmd:Ljava/lang/String;

    const-string v1, "GET_USBHOSTMODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x69

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/motorola/motocit/hostmode/Hostmode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleTestSpecificActions] mIsHostMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mIsHostMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1}, Lcom/motorola/motocit/hostmode/Hostmode;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-boolean v1, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mIsHostMode:Z

    if-eqz v1, :cond_0

    const-string v1, "USBHOSTMODE=YES"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "USBHOSTMODE=NO"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v1, Lcom/motorola/motocit/CommServerDataPacket;

    iget v2, p0, Lcom/motorola/motocit/hostmode/Hostmode;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/hostmode/Hostmode;->strRxCmd:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/motocit/hostmode/Hostmode;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hostmode/Hostmode;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/motorola/motocit/CmdPassException;

    iget v4, p0, Lcom/motorola/motocit/hostmode/Hostmode;->nRxSeqTag:I

    iget-object v5, p0, Lcom/motorola/motocit/hostmode/Hostmode;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v2}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3

    :cond_1
    iget-object v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->strRxCmd:Ljava/lang/String;

    const-string v2, "GET_USB_DEVICE_INFO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NUMBER_USB_ACCESSORIES="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbDevice;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USB_DEVICE_NAME_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USB_DEVICE_MANUFACTURER_NAME_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USB_DEVICE_ID_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USB_DEVICE_PRODUCT_ID_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USB_DEVICE_PRODUCT_NAME_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USB_DEVICE_SERIAL_NUMBER_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USB_DEVICE_VENDOR_ID_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USB_DEVICE_VERSION_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USB_DEVICE_CLASS_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USB_DEVICE_PROTOCOL_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USB_DEVICE_SUBCLASS_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USB_DEVICE_INTERFACE_COUNT_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v6

    if-lez v6, :cond_2

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v8

    if-ge v6, v8, :cond_2

    invoke-virtual {v5, v6}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ALTERNATE_SETTING_INTERFACE_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_USB_DEVICE_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getAlternateSetting()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ENDPOINT_COUNT_INTERFACE_"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ID_INTERFACE_"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "INTERFACE_CLASS_INTERFACE_"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "INTERFACE_PROTOCOL_INTERFACE_"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "INTERFACE_SUBCLASS_INTERFACE_"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NAME_INTERFACE_"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_2
    nop

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_3
    new-instance v2, Lcom/motorola/motocit/CommServerDataPacket;

    iget v3, p0, Lcom/motorola/motocit/hostmode/Hostmode;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/hostmode/Hostmode;->strRxCmd:Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/motocit/hostmode/Hostmode;->TAG:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/motorola/motocit/hostmode/Hostmode;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/motocit/CmdPassException;

    iget v5, p0, Lcom/motorola/motocit/hostmode/Hostmode;->nRxSeqTag:I

    iget-object v6, p0, Lcom/motorola/motocit/hostmode/Hostmode;->strRxCmd:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v3}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v4

    :cond_4
    iget-object v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->strRxCmd:Ljava/lang/String;

    const-string v2, "help"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/motorola/motocit/hostmode/Hostmode;->printHelp()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/motorola/motocit/hostmode/Hostmode;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "%s help printed"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CmdPassException;

    iget v2, p0, Lcom/motorola/motocit/hostmode/Hostmode;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/hostmode/Hostmode;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/motorola/motocit/hostmode/Hostmode;->TAG:Ljava/lang/String;

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/motorola/motocit/hostmode/Hostmode;->strRxCmd:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v3, "Activity \'%s\' does not recognize command \'%s\'"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/motorola/motocit/hostmode/Hostmode;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1}, Lcom/motorola/motocit/hostmode/Hostmode;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/hostmode/Hostmode;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/hostmode/Hostmode;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "USB_Hostmode"

    iput-object v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->TAG:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/motorola/motocit/Test_Base;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/hostmode/Hostmode;->adjustViewDisplayArea(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mGestureListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mGestureListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    const v1, 0x7f0600b3

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hostmode/Hostmode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mHostModeReminder:Landroid/widget/TextView;

    const v1, 0x7f060088

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hostmode/Hostmode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mDetailSlaveInfo:Landroid/widget/TextView;

    const-string v1, "usb"

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hostmode/Hostmode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    iput-object v1, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mUsbManager:Landroid/hardware/usb/UsbManager;

    new-instance v1, Lcom/motorola/motocit/hostmode/Hostmode$USBHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/motocit/hostmode/Hostmode$USBHandler;-><init>(Lcom/motorola/motocit/hostmode/Hostmode;Lcom/motorola/motocit/hostmode/Hostmode$1;)V

    iput-object v1, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mIsHostMode:Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mIsHostMode:Z

    :goto_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/motorola/motocit/hostmode/Hostmode;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Lcom/motorola/motocit/hostmode/Hostmode$2;

    invoke-direct {v3, p0}, Lcom/motorola/motocit/hostmode/Hostmode$2;-><init>(Lcom/motorola/motocit/hostmode/Hostmode;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/hostmode/Hostmode;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/motorola/motocit/hostmode/Hostmode;->wasActivityStartedByCommServer()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    invoke-static {}, Lcom/motorola/motocit/TestUtils;->getPassFailMethods()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VOLUME_KEYS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/16 v0, 0x18

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    const-string v0, "testresult.txt"

    const-string v3, "USB Host Mode: FAILED\r\n"

    const v4, 0x8000

    invoke-virtual {p0, v0, v3, v4}, Lcom/motorola/motocit/hostmode/Hostmode;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "FAIL"

    invoke-direct {p0, v3}, Lcom/motorola/motocit/hostmode/Hostmode;->logResults(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mHostMode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3, v4}, Lcom/motorola/motocit/hostmode/Hostmode;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4, v2}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    invoke-virtual {p0, v2}, Lcom/motorola/motocit/hostmode/Hostmode;->systemExitWrapper(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const-string v0, "Seq"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/hostmode/Hostmode;->modeCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/hostmode/Hostmode;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v2

    :cond_2
    invoke-virtual {p0, v2}, Lcom/motorola/motocit/hostmode/Hostmode;->systemExitWrapper(I)V

    :cond_3
    :goto_1
    return v1

    :cond_4
    :goto_2
    return v1
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onPause()V

    iget-object v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->TAG:Ljava/lang/String;

    const-string v1, "Remove USBHandler Messages"

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/hostmode/Hostmode;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onResume()V

    invoke-direct {p0}, Lcom/motorola/motocit/hostmode/Hostmode;->refresh()V

    invoke-virtual {p0}, Lcom/motorola/motocit/hostmode/Hostmode;->sendStartActivityPassed()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mIsTestPassed:Z

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onStop()V

    return-void
.end method

.method public onSwipeDown()Z
    .locals 2

    const-string v0, "Seq"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/hostmode/Hostmode;->modeCheck(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/hostmode/Hostmode;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hostmode/Hostmode;->systemExitWrapper(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSwipeLeft()Z
    .locals 4

    const-string v0, "testresult.txt"

    const-string v1, "USB Host Mode: PASS\r\n"

    const v2, 0x8000

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/hostmode/Hostmode;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATE: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mHostMode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/hostmode/Hostmode;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "PASS"

    invoke-direct {p0, v0}, Lcom/motorola/motocit/hostmode/Hostmode;->logResults(Ljava/lang/String;)V

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
    invoke-virtual {p0, v2}, Lcom/motorola/motocit/hostmode/Hostmode;->systemExitWrapper(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSwipeRight()Z
    .locals 4

    const-string v0, "testresult.txt"

    const-string v1, "USB Host Mode: FAILED\r\n"

    const v2, 0x8000

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/hostmode/Hostmode;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATE: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/motorola/motocit/hostmode/Hostmode;->mHostMode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/hostmode/Hostmode;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "FAIL"

    invoke-direct {p0, v0}, Lcom/motorola/motocit/hostmode/Hostmode;->logResults(Ljava/lang/String;)V

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
    invoke-virtual {p0, v2}, Lcom/motorola/motocit/hostmode/Hostmode;->systemExitWrapper(I)V

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

    iget-object v1, p0, Lcom/motorola/motocit/hostmode/Hostmode;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "This function is to check device usb host mode"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/motorola/motocit/hostmode/Hostmode;->getBaseHelp()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v1, "Activity Specific Commands"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "GET_USBHOSTMODE"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "  USBHOSTMODE=YES or USBHOSTMODE=NO"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "  GET_USB_DEVICE_INFO - Gets information on any USB Host Mode devices"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    NUMBER_USB_ACCESSORIES - Number of USB Host Mode accessories"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    USB_DEVICE_NAME_XX - Device Name of accessory XX"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    USB_DEVICE_MANUFACTURER_NAME_XX - Manufacturer Name of accessory XX"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    USB_DEVICE_ID_XX - ID of accessory XX"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    USB_DEVICE_PRODUCT_ID_XX - Product ID Name of accessory XX"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    USB_DEVICE_PRODUCT_NAME_XX - Product Name of accessory XX"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    USB_DEVICE_SERIAL_NUMBER_XX - Serial Number of accessory XX"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    USB_DEVICE_VENDOR_ID_XX - Vendor ID of accessory XX"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    USB_DEVICE_VERSION_XX - Version of accessory XX"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    USB_DEVICE_CLASS_XX - Class of accessory XX"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    USB_DEVICE_PROTOCOL_XX - Protocol of accessory XX"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    USB_DEVICE_SUBCLASS_XX - Subclass of accessory XX"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    USB_DEVICE_INTERFACE_COUNT_XX -Number of interfaces for accessory XX"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    ALTERNATE_SETTING_INTERFACE_YY_USB_DEVICE_XX - Alternate Setting of interface YY for accessory XX"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    ENDPOINT_COUNT_INTERFACE_YY_USB_DEVICE_XX - Endpoint Count of interface YY for accessory XX"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    ID_INTERFACE_YY_USB_DEVICE_XX - ID of interface YY for accessory XX"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    INTERFACE_CLASS_INTERFACE_YY_USB_DEVICE_XX - Interface Class of interface YY for accessory XX"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    INTERFACE_PROTOCOL_INTERFACE_YY_USB_DEVICE_XX - Interface Protocol of interface YY for accessory XX"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    INTERFACE_SUBCLASS_INTERFACE_YY_USB_DEVICE_XX - Interface Subclass of interface YY for accessory XX"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "    NAME_INTERFACE_YY_USB_DEVICE_XX - Name of interface YY for accessory XX"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CommServerDataPacket;

    iget v2, p0, Lcom/motorola/motocit/hostmode/Hostmode;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/hostmode/Hostmode;->strRxCmd:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/motocit/hostmode/Hostmode;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hostmode/Hostmode;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    return-void
.end method
