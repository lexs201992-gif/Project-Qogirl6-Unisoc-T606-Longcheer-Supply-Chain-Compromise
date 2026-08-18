.class public Lcom/motorola/motocit/hostmode/PatHostmode;
.super Lcom/motorola/motocit/Test_Base;
.source "PatHostmode.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field private isTestPassed:Z

.field private mDeviceId:I

.field private mHostmode:Ljava/lang/String;

.field private mIm:Landroid/hardware/input/InputManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsHostMode:Z

.field private mTextView:Landroid/widget/TextView;

.field private testNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/motorola/motocit/Test_Base;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mIsHostMode:Z

    iput-boolean v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->isTestPassed:Z

    iput v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->testNum:I

    new-instance v0, Lcom/motorola/motocit/hostmode/PatHostmode$1;

    invoke-direct {v0, p0}, Lcom/motorola/motocit/hostmode/PatHostmode$1;-><init>(Lcom/motorola/motocit/hostmode/PatHostmode;)V

    iput-object v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/motocit/hostmode/PatHostmode;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/motocit/hostmode/PatHostmode;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/hostmode/PatHostmode;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/motocit/hostmode/PatHostmode;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/motorola/motocit/hostmode/PatHostmode;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/hostmode/PatHostmode;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$1200(Lcom/motorola/motocit/hostmode/PatHostmode;)V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/motocit/hostmode/PatHostmode;->setFailState()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/motocit/hostmode/PatHostmode;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/motocit/hostmode/PatHostmode;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/hostmode/PatHostmode;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/motocit/hostmode/PatHostmode;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/motocit/hostmode/PatHostmode;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/hostmode/PatHostmode;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/motocit/hostmode/PatHostmode;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/motorola/motocit/hostmode/PatHostmode;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/hostmode/PatHostmode;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$800(Lcom/motorola/motocit/hostmode/PatHostmode;)I
    .locals 1

    iget v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->testNum:I

    return v0
.end method

.method static synthetic access$808(Lcom/motorola/motocit/hostmode/PatHostmode;)I
    .locals 2

    iget v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->testNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->testNum:I

    return v0
.end method

.method static synthetic access$900(Lcom/motorola/motocit/hostmode/PatHostmode;)V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/motocit/hostmode/PatHostmode;->setPassState()V

    return-void
.end method

.method private logResults(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "USBHOSTMODE"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mIsHostMode:Z

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
    iget-object v2, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/motorola/motocit/hostmode/PatHostmode;->logTestResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private setFailState()V
    .locals 2

    const-string v0, "Device is NOT in USB HOST MODE"

    iput-object v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mHostmode:Ljava/lang/String;

    iget-object v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mTextView:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mIsHostMode:Z

    iget-object v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mHostmode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setPassState()V
    .locals 2

    const-string v0, "Device is in USB HOST MODE"

    iput-object v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mHostmode:Ljava/lang/String;

    iget-object v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mTextView:Landroid/widget/TextView;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->isTestPassed:Z

    iput-boolean v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mIsHostMode:Z

    iget-object v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mHostmode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected handleTestSpecificActions()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/motocit/CmdFailException;,
            Lcom/motorola/motocit/CmdPassException;
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->strRxCmd:Ljava/lang/String;

    const-string v1, "GET_USBHOSTMODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x69

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleTestSpecificActions] mIsHostMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mIsHostMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1}, Lcom/motorola/motocit/hostmode/PatHostmode;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-boolean v1, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mIsHostMode:Z

    if-eqz v1, :cond_0

    const-string v1, "USBHOSTMODE=YES"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "USBHOSTMODE=NO"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v1, Lcom/motorola/motocit/CommServerDataPacket;

    iget v2, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->strRxCmd:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hostmode/PatHostmode;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/motorola/motocit/CmdPassException;

    iget v4, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->nRxSeqTag:I

    iget-object v5, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v2}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3

    :cond_1
    iget-object v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->strRxCmd:Ljava/lang/String;

    const-string v2, "GET_USB_DEVICE_INFO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "usb"

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hostmode/PatHostmode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NUMBER_USB_ACCESSORIES="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/usb/UsbDevice;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USB_DEVICE_NAME_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USB_DEVICE_MANUFACTURER_NAME_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USB_DEVICE_ID_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USB_DEVICE_PRODUCT_ID_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USB_DEVICE_PRODUCT_NAME_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USB_DEVICE_SERIAL_NUMBER_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USB_DEVICE_VENDOR_ID_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USB_DEVICE_VERSION_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USB_DEVICE_CLASS_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USB_DEVICE_PROTOCOL_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USB_DEVICE_SUBCLASS_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USB_DEVICE_INTERFACE_COUNT_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v7

    if-lez v7, :cond_2

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v9

    if-ge v7, v9, :cond_2

    invoke-virtual {v6, v7}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ALTERNATE_SETTING_INTERFACE_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "_USB_DEVICE_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/hardware/usb/UsbInterface;->getAlternateSetting()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ENDPOINT_COUNT_INTERFACE_"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ID_INTERFACE_"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "INTERFACE_CLASS_INTERFACE_"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "INTERFACE_PROTOCOL_INTERFACE_"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "INTERFACE_SUBCLASS_INTERFACE_"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NAME_INTERFACE_"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_2
    nop

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_3
    new-instance v3, Lcom/motorola/motocit/CommServerDataPacket;

    iget v4, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->nRxSeqTag:I

    iget-object v5, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->strRxCmd:Ljava/lang/String;

    iget-object v6, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->TAG:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v3}, Lcom/motorola/motocit/hostmode/PatHostmode;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/motocit/CmdPassException;

    iget v6, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->nRxSeqTag:I

    iget-object v7, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->strRxCmd:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v4}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v5

    :cond_4
    iget-object v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->strRxCmd:Ljava/lang/String;

    const-string v2, "help"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/motorola/motocit/hostmode/PatHostmode;->printHelp()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "%s help printed"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CmdPassException;

    iget v2, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->TAG:Ljava/lang/String;

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->strRxCmd:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v3, "Activity \'%s\' does not recognize command \'%s\'"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1}, Lcom/motorola/motocit/hostmode/PatHostmode;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "USB_Hostmode"

    iput-object v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->TAG:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/motorola/motocit/Test_Base;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/hostmode/PatHostmode;->adjustViewDisplayArea(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mGestureListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mGestureListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    const-string v1, "input"

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hostmode/PatHostmode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    iput-object v1, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mIm:Landroid/hardware/input/InputManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    const v1, 0x7f0600b3

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hostmode/PatHostmode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mTextView:Landroid/widget/TextView;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v1, "Device is NOT in USB HOST MODE"

    iput-object v1, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mHostmode:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/motorola/motocit/hostmode/PatHostmode;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/hostmode/PatHostmode;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onDestroy()V

    return-void
.end method

.method public onInputDeviceAdded(I)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInputDeviceAdded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mDeviceId:I

    invoke-direct {p0}, Lcom/motorola/motocit/hostmode/PatHostmode;->setPassState()V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInputDeviceChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/motorola/motocit/hostmode/PatHostmode;->setFailState()V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInputDeviceRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/motorola/motocit/hostmode/PatHostmode;->setFailState()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10

    invoke-virtual {p0}, Lcom/motorola/motocit/hostmode/PatHostmode;->wasActivityStartedByCommServer()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    invoke-static {}, Lcom/motorola/motocit/TestUtils;->getPassFailMethods()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VOLUME_KEYS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 v0, 0x18

    const/16 v2, 0x19

    const/4 v3, 0x0

    if-eq p1, v2, :cond_3

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    const-string v0, "Seq"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/hostmode/PatHostmode;->modeCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/hostmode/PatHostmode;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v3

    :cond_2
    invoke-virtual {p0, v3}, Lcom/motorola/motocit/hostmode/PatHostmode;->systemExitWrapper(I)V

    goto/16 :goto_3

    :cond_3
    :goto_0
    const-wide/16 v4, 0x3e8

    const-string v6, "\r\n"

    const-string v7, "STATE: "

    const v8, 0x8000

    const-string v9, "testresult.txt"

    if-ne p1, v2, :cond_5

    iget-boolean v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->isTestPassed:Z

    if-eqz v0, :cond_4

    const-string v0, "USB Host Mode: PASS\r\n"

    invoke-virtual {p0, v9, v0, v8}, Lcom/motorola/motocit/hostmode/PatHostmode;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "PASS"

    invoke-direct {p0, v0}, Lcom/motorola/motocit/hostmode/PatHostmode;->logResults(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mHostmode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v9, v0, v8}, Lcom/motorola/motocit/hostmode/PatHostmode;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    :try_start_0
    invoke-static {v4, v5, v3}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    invoke-virtual {p0, v3}, Lcom/motorola/motocit/hostmode/PatHostmode;->systemExitWrapper(I)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->TAG:Ljava/lang/String;

    const/16 v2, 0x69

    const-string v4, "onKeyDown, but not pass the test"

    invoke-virtual {p0, v0, v4, v2}, Lcom/motorola/motocit/hostmode/PatHostmode;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const-string v0, "Please plugin OTG before approving"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_5
    if-ne p1, v0, :cond_6

    const-string v0, "USB Host Mode: FAILED\r\n"

    invoke-virtual {p0, v9, v0, v8}, Lcom/motorola/motocit/hostmode/PatHostmode;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "FAIL"

    invoke-direct {p0, v0}, Lcom/motorola/motocit/hostmode/PatHostmode;->logResults(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mHostmode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v9, v0, v8}, Lcom/motorola/motocit/hostmode/PatHostmode;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    :try_start_1
    invoke-static {v4, v5, v3}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    invoke-virtual {p0, v3}, Lcom/motorola/motocit/hostmode/PatHostmode;->systemExitWrapper(I)V

    :cond_6
    :goto_3
    return v1

    :cond_7
    :goto_4
    return v1
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onResume()V

    invoke-virtual {p0}, Lcom/motorola/motocit/hostmode/PatHostmode;->sendStartActivityPassed()V

    return-void
.end method

.method public onSwipeDown()Z
    .locals 2

    const-string v0, "Seq"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/hostmode/PatHostmode;->modeCheck(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/hostmode/PatHostmode;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hostmode/PatHostmode;->systemExitWrapper(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSwipeLeft()Z
    .locals 4

    const-string v0, "testresult.txt"

    const-string v1, "USB Host Mode: PASS\r\n"

    const v2, 0x8000

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/hostmode/PatHostmode;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATE: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mHostmode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/hostmode/PatHostmode;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "PASS"

    invoke-direct {p0, v0}, Lcom/motorola/motocit/hostmode/PatHostmode;->logResults(Ljava/lang/String;)V

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
    invoke-virtual {p0, v2}, Lcom/motorola/motocit/hostmode/PatHostmode;->systemExitWrapper(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSwipeRight()Z
    .locals 4

    const-string v0, "testresult.txt"

    const-string v1, "USB Host Mode: FAILED\r\n"

    const v2, 0x8000

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/hostmode/PatHostmode;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATE: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->mHostmode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/hostmode/PatHostmode;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "FAIL"

    invoke-direct {p0, v0}, Lcom/motorola/motocit/hostmode/PatHostmode;->logResults(Ljava/lang/String;)V

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
    invoke-virtual {p0, v2}, Lcom/motorola/motocit/hostmode/PatHostmode;->systemExitWrapper(I)V

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

    iget-object v1, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "This function is to check device usb host mode"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/motorola/motocit/hostmode/PatHostmode;->getBaseHelp()Ljava/util/List;

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

    iget v2, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->strRxCmd:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/motocit/hostmode/PatHostmode;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hostmode/PatHostmode;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    return-void
.end method
