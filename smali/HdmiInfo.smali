.class public Lcom/motorola/motocit/hdmi/HdmiInfo;
.super Lcom/motorola/motocit/Test_Base;
.source "HdmiInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/motocit/hdmi/HdmiInfo$HDMIAppStatusReceiver;
    }
.end annotation


# static fields
.field private static final CHECKSUM_START_POS:I = 0xfc

.field private static final DETAILED_TIMING_DESCRIPTION_1_START_POS:I = 0x6c

.field private static final DETAILED_TIMING_DESCRIPTION_2_START_POS:I = 0x90

.field private static final DETAILED_TIMING_DESCRIPTION_3_START_POS:I = 0xb4

.field private static final DETAILED_TIMING_DESCRIPTION_4_START_POS:I = 0xd8

.field private static final EDID_BASIC_DISPLAY_PARAMETERS_START_POS:I = 0x28

.field private static final EDID_CHROMATICITY_COORDINATES_START_POS:I = 0x32

.field private static final EDID_ESTABLISHED_TIMING_START_POS:I = 0x46

.field private static final EDID_HEADER_START_POS:I = 0x0

.field private static final EDID_MANUFACTURER_START_POS:I = 0x10

.field private static final EDID_MINIMUM_LENGTH:I = 0x200

.field private static final EDID_STANDARD_TIMING_START_POS:I = 0x4c

.field private static final EXTDISP_PUBLIC_STATE:Ljava/lang/String; = "com.motorola.intent.action.externaldisplaystate"

.field private static final EXTENDED_DATA_START_POS:I = 0x100

.field private static final EXTRA_HDCP:Ljava/lang/String; = "hdcp"

.field private static final EXTRA_HDMI:Ljava/lang/String; = "hdmi"

.field private static final HDMI_AUDIO_SUPPORT:Ljava/lang/String; = "audio"

.field private static final HDMI_HEIGHT:Ljava/lang/String; = "height"

.field private static final HDMI_SETTING_INTENT:Ljava/lang/String; = "com.motorola.intent.action.EXTDISP_CONTROL_SETTING"

.field private static final HDMI_WIDTH:Ljava/lang/String; = "width"


# instance fields
.field private AudioSupportText:Landroid/widget/TextView;

.field private CableStatusText:Landroid/widget/TextView;

.field private ChecksumText:Landroid/widget/TextView;

.field private DetailedTimingDescription1Text:Landroid/widget/TextView;

.field private DetailedTimingDescription2Text:Landroid/widget/TextView;

.field private DetailedTimingDescription3Text:Landroid/widget/TextView;

.field private DetailedTimingDescription4Text:Landroid/widget/TextView;

.field private EdidBasicDisplayParametersText:Landroid/widget/TextView;

.field private EdidChromaticityCoordinatesText:Landroid/widget/TextView;

.field private EdidEstablishedTimingText:Landroid/widget/TextView;

.field private EdidHeaderText:Landroid/widget/TextView;

.field private EdidManufacturerText:Landroid/widget/TextView;

.field private EdidStandardTimingText:Landroid/widget/TextView;

.field private EdidText:Landroid/widget/TextView;

.field private ExtendedDataText:Landroid/widget/TextView;

.field private HdcpStatusText:Landroid/widget/TextView;

.field private HdmiHeightText:Landroid/widget/TextView;

.field private HdmiWidthText:Landroid/widget/TextView;

.field private audioSupport:I

.field private cableStatus:I

.field private edid:Ljava/lang/String;

.field private hdcpStatus:I

.field private hdmiConnectionState:I

.field private hdmiHeight:I

.field private hdmiWidth:I

.field private mHDMIAppStatusReceiver:Lcom/motorola/motocit/hdmi/HdmiInfo$HDMIAppStatusReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/motorola/motocit/Test_Base;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->cableStatus:I

    iput v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->hdcpStatus:I

    iput v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->audioSupport:I

    iput v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->hdmiWidth:I

    iput v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->hdmiHeight:I

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->hdmiConnectionState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->edid:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->mHDMIAppStatusReceiver:Lcom/motorola/motocit/hdmi/HdmiInfo$HDMIAppStatusReceiver;

    iput-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->CableStatusText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->HdcpStatusText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->AudioSupportText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->HdmiWidthText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->HdmiHeightText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->EdidText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->EdidHeaderText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->EdidManufacturerText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->EdidBasicDisplayParametersText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->EdidChromaticityCoordinatesText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->EdidEstablishedTimingText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->EdidStandardTimingText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->DetailedTimingDescription1Text:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->DetailedTimingDescription2Text:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->DetailedTimingDescription3Text:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->DetailedTimingDescription4Text:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->ChecksumText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->ExtendedDataText:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/motocit/hdmi/HdmiInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->CableStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/motocit/hdmi/HdmiInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->HdcpStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/motorola/motocit/hdmi/HdmiInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->EdidEstablishedTimingText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/motorola/motocit/hdmi/HdmiInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->EdidStandardTimingText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/motorola/motocit/hdmi/HdmiInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->DetailedTimingDescription1Text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/motorola/motocit/hdmi/HdmiInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->DetailedTimingDescription2Text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/motorola/motocit/hdmi/HdmiInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->DetailedTimingDescription3Text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/motorola/motocit/hdmi/HdmiInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->DetailedTimingDescription4Text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/motorola/motocit/hdmi/HdmiInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->ChecksumText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/motorola/motocit/hdmi/HdmiInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->ExtendedDataText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/motorola/motocit/hdmi/HdmiInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/motorola/motocit/hdmi/HdmiInfo;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/hdmi/HdmiInfo;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/motocit/hdmi/HdmiInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->AudioSupportText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/motorola/motocit/hdmi/HdmiInfo;)I
    .locals 1

    iget v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->cableStatus:I

    return v0
.end method

.method static synthetic access$2002(Lcom/motorola/motocit/hdmi/HdmiInfo;I)I
    .locals 0

    iput p1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->cableStatus:I

    return p1
.end method

.method static synthetic access$2100(Lcom/motorola/motocit/hdmi/HdmiInfo;)I
    .locals 1

    iget v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->hdcpStatus:I

    return v0
.end method

.method static synthetic access$2102(Lcom/motorola/motocit/hdmi/HdmiInfo;I)I
    .locals 0

    iput p1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->hdcpStatus:I

    return p1
.end method

.method static synthetic access$2200(Lcom/motorola/motocit/hdmi/HdmiInfo;)I
    .locals 1

    iget v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->audioSupport:I

    return v0
.end method

.method static synthetic access$2202(Lcom/motorola/motocit/hdmi/HdmiInfo;I)I
    .locals 0

    iput p1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->audioSupport:I

    return p1
.end method

.method static synthetic access$2300(Lcom/motorola/motocit/hdmi/HdmiInfo;)I
    .locals 1

    iget v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->hdmiWidth:I

    return v0
.end method

.method static synthetic access$2302(Lcom/motorola/motocit/hdmi/HdmiInfo;I)I
    .locals 0

    iput p1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->hdmiWidth:I

    return p1
.end method

.method static synthetic access$2400(Lcom/motorola/motocit/hdmi/HdmiInfo;)I
    .locals 1

    iget v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->hdmiHeight:I

    return v0
.end method

.method static synthetic access$2402(Lcom/motorola/motocit/hdmi/HdmiInfo;I)I
    .locals 0

    iput p1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->hdmiHeight:I

    return p1
.end method

.method static synthetic access$2500(Lcom/motorola/motocit/hdmi/HdmiInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/motorola/motocit/hdmi/HdmiInfo;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/hdmi/HdmiInfo;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$2700(Lcom/motorola/motocit/hdmi/HdmiInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->edid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/motorola/motocit/hdmi/HdmiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->edid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/motorola/motocit/hdmi/HdmiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/motorola/motocit/hdmi/HdmiInfo;->genericReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/motorola/motocit/hdmi/HdmiInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/motocit/hdmi/HdmiInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->HdmiWidthText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/motorola/motocit/hdmi/HdmiInfo;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/hdmi/HdmiInfo;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/motocit/hdmi/HdmiInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->HdmiHeightText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/motocit/hdmi/HdmiInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->EdidText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/motocit/hdmi/HdmiInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->EdidHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/motorola/motocit/hdmi/HdmiInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->EdidManufacturerText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/motorola/motocit/hdmi/HdmiInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->EdidBasicDisplayParametersText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/motorola/motocit/hdmi/HdmiInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->EdidChromaticityCoordinatesText:Landroid/widget/TextView;

    return-object v0
.end method

.method private getHdmiExtra(Landroid/content/Intent;Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "com.motorola.intent.action.externaldisplaystate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method private getHdmiMenuSetting(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/motocit/hdmi/HdmiInfo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hdmi_autodetection"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/motorola/motocit/TestUtils;->getMotoSettingInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->hdmiConnectionState:I
    :try_end_0
    .catch Lcom/motorola/motocit/MotoSettingsNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/motorola/motocit/MotoSettingsNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x69

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/motocit/hdmi/HdmiInfo;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private logResults(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "CABLE_STATUS"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "HDCP_STATUS"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "AUDIO_SUPPORT"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "HDMI_OUTPUT_WIDTH"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "HDMI_OUTPUT_HEIGHT"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "EDID"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->cableStatus:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->hdcpStatus:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->audioSupport:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->hdmiWidth:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->hdmiHeight:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->edid:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/motorola/motocit/hdmi/HdmiInfo;->logTestResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private sendInfoData(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CommServerDataPacket;

    iget v2, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->strRxCmd:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hdmi/HdmiInfo;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    return-void
.end method

.method private setHdmiMenuSetting(ILjava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x69

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    if-ne v3, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "Invalid Set Hdmi Menu Setting Value"

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->TAG:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1}, Lcom/motorola/motocit/hdmi/HdmiInfo;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const/4 v0, -0x1

    goto :goto_2

    :cond_1
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.intent.action.EXTDISP_CONTROL_SETTING"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "setting"

    const-string v5, "autodetect"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/motorola/motocit/hdmi/HdmiInfo;->sendBroadcast(Landroid/content/Intent;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/motocit/hdmi/HdmiInfo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hdmi_autodetection"

    invoke-static {v4, v5, p1}, Lcom/motorola/motocit/TestUtils;->putMotoSettingInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "Could not set hdmi_autodetection"

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->TAG:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v1}, Lcom/motorola/motocit/hdmi/HdmiInfo;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V
    :try_end_0
    .catch Lcom/motorola/motocit/MotoSettingsNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, -0x1

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lcom/motorola/motocit/MotoSettingsNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->TAG:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v5, v2, v1}, Lcom/motorola/motocit/hdmi/HdmiInfo;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const/4 v0, -0x1

    :goto_1
    nop

    :goto_2
    return v0
.end method


# virtual methods
.method protected handleTestSpecificActions()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/motocit/CmdFailException;,
            Lcom/motorola/motocit/CmdPassException;
        }
    .end annotation

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.motorola.intent.action.externaldisplaystate"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/motorola/motocit/hdmi/HdmiInfo;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->strRxCmd:Ljava/lang/String;

    const-string v3, "GET_CABLE_STATUS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "hdmi"

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->strRxCmd:Ljava/lang/String;

    const-string v4, "GET_HDCP_STATUS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->strRxCmd:Ljava/lang/String;

    const-string v4, "GET_AUDIO_SUPPORT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->strRxCmd:Ljava/lang/String;

    const-string v4, "GET_HDMI_OUTPUT_DIMENSIONS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->strRxCmd:Ljava/lang/String;

    const-string v4, "GET_EDID"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v3}, Lcom/motorola/motocit/hdmi/HdmiInfo;->getHdmiExtra(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_0

    const-string v3, "/sys/class/graphics/fb1/edid_data"

    invoke-virtual {p0, v3}, Lcom/motorola/motocit/hdmi/HdmiInfo;->genericReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    const-string v2, "Not Found"

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EDID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/motorola/motocit/hdmi/HdmiInfo;->sendInfoData(Ljava/lang/String;)V

    new-instance v3, Lcom/motorola/motocit/CmdPassException;

    iget v4, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->nRxSeqTag:I

    iget-object v5, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v1}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3

    :cond_2
    iget-object v2, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->strRxCmd:Ljava/lang/String;

    const-string v3, "GET_HDMI_MENU_SETTING"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v2}, Lcom/motorola/motocit/hdmi/HdmiInfo;->getHdmiMenuSetting(Ljava/util/List;)I

    move-result v3

    if-eqz v3, :cond_3

    new-instance v4, Lcom/motorola/motocit/CmdFailException;

    iget v5, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->nRxSeqTag:I

    iget-object v6, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->strRxCmd:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v2}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v4

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HDMI_MENU_SETTING="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->hdmiConnectionState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/motocit/CommServerDataPacket;

    iget v6, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->nRxSeqTag:I

    iget-object v7, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->strRxCmd:Ljava/lang/String;

    iget-object v8, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->TAG:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v4}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v5}, Lcom/motorola/motocit/hdmi/HdmiInfo;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    new-instance v6, Lcom/motorola/motocit/CmdPassException;

    iget v7, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->nRxSeqTag:I

    iget-object v8, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->strRxCmd:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v1}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v6

    :cond_4
    iget-object v2, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->strRxCmd:Ljava/lang/String;

    const-string v3, "SET_HDMI_MENU_SETTING"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->strRxCmdDataList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v4, :cond_6

    iget-object v4, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->strRxCmdDataList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3, v2}, Lcom/motorola/motocit/hdmi/HdmiInfo;->setHdmiMenuSetting(ILjava/util/List;)I

    move-result v4

    if-eqz v4, :cond_5

    new-instance v5, Lcom/motorola/motocit/CmdFailException;

    iget v6, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->nRxSeqTag:I

    iget-object v7, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->strRxCmd:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v2}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v5

    :cond_5
    iput v3, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->hdmiConnectionState:I

    new-instance v5, Lcom/motorola/motocit/CmdPassException;

    iget v6, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->nRxSeqTag:I

    iget-object v7, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->strRxCmd:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v1}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v5

    :cond_6
    const-string v3, "Invalid number of arguments. Expecting 1."

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/motocit/CmdFailException;

    iget v4, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->nRxSeqTag:I

    iget-object v5, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v2}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3

    :cond_7
    iget-object v2, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->strRxCmd:Ljava/lang/String;

    const-string v5, "help"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/motorola/motocit/hdmi/HdmiInfo;->printHelp()V

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->TAG:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "%s help printed"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CmdPassException;

    iget v3, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->TAG:Ljava/lang/String;

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->strRxCmd:Ljava/lang/String;

    aput-object v6, v5, v4

    const-string v4, "Activity \'%s\' does not recognize command \'%s\'"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->TAG:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v5, 0x69

    invoke-virtual {p0, v4, v3, v5}, Lcom/motorola/motocit/hdmi/HdmiInfo;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v3, Lcom/motorola/motocit/CmdFailException;

    iget v4, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->nRxSeqTag:I

    iget-object v5, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v2}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3

    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "width"

    invoke-direct {p0, v0, v3}, Lcom/motorola/motocit/hdmi/HdmiInfo;->getHdmiExtra(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v3

    const-string v4, "height"

    invoke-direct {p0, v0, v4}, Lcom/motorola/motocit/hdmi/HdmiInfo;->getHdmiExtra(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HDMI_OUTPUT_WIDTH="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HDMI_OUTPUT_HEIGHT="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/motocit/CommServerDataPacket;

    iget v6, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->nRxSeqTag:I

    iget-object v7, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->strRxCmd:Ljava/lang/String;

    iget-object v8, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->TAG:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v2}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v5}, Lcom/motorola/motocit/hdmi/HdmiInfo;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    new-instance v6, Lcom/motorola/motocit/CmdPassException;

    iget v7, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->nRxSeqTag:I

    iget-object v8, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->strRxCmd:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v1}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v6

    :cond_a
    const-string v2, "audio"

    invoke-direct {p0, v0, v2}, Lcom/motorola/motocit/hdmi/HdmiInfo;->getHdmiExtra(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AUDIO_SUPPORT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/motorola/motocit/hdmi/HdmiInfo;->sendInfoData(Ljava/lang/String;)V

    new-instance v3, Lcom/motorola/motocit/CmdPassException;

    iget v4, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->nRxSeqTag:I

    iget-object v5, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v1}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3

    :cond_b
    const-string v2, "hdcp"

    invoke-direct {p0, v0, v2}, Lcom/motorola/motocit/hdmi/HdmiInfo;->getHdmiExtra(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HDCP_STATUS="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/motorola/motocit/hdmi/HdmiInfo;->sendInfoData(Ljava/lang/String;)V

    new-instance v3, Lcom/motorola/motocit/CmdPassException;

    iget v4, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->nRxSeqTag:I

    iget-object v5, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v1}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3

    :cond_c
    invoke-direct {p0, v0, v3}, Lcom/motorola/motocit/hdmi/HdmiInfo;->getHdmiExtra(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CABLE_STATUS="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/motorola/motocit/hdmi/HdmiInfo;->sendInfoData(Ljava/lang/String;)V

    new-instance v3, Lcom/motorola/motocit/CmdPassException;

    iget v4, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->nRxSeqTag:I

    iget-object v5, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v1}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "HdmiInfo"

    iput-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->TAG:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/motorola/motocit/Test_Base;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/hdmi/HdmiInfo;->adjustViewDisplayArea(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->mGestureListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->mGestureListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    const v1, 0x7f060003

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hdmi/HdmiInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->CableStatusText:Landroid/widget/TextView;

    const v1, 0x7f060025

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hdmi/HdmiInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->HdcpStatusText:Landroid/widget/TextView;

    const/high16 v1, 0x7f060000

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hdmi/HdmiInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->AudioSupportText:Landroid/widget/TextView;

    const v1, 0x7f060028

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hdmi/HdmiInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->HdmiWidthText:Landroid/widget/TextView;

    const v1, 0x7f060026

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hdmi/HdmiInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->HdmiHeightText:Landroid/widget/TextView;

    const v1, 0x7f060010

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hdmi/HdmiInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->EdidText:Landroid/widget/TextView;

    const v1, 0x7f06000e

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hdmi/HdmiInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->EdidHeaderText:Landroid/widget/TextView;

    const v1, 0x7f060011

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hdmi/HdmiInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->EdidManufacturerText:Landroid/widget/TextView;

    const v1, 0x7f06000b

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hdmi/HdmiInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->EdidBasicDisplayParametersText:Landroid/widget/TextView;

    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hdmi/HdmiInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->EdidChromaticityCoordinatesText:Landroid/widget/TextView;

    const v1, 0x7f06000d

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hdmi/HdmiInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->EdidEstablishedTimingText:Landroid/widget/TextView;

    const v1, 0x7f060012

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hdmi/HdmiInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->EdidStandardTimingText:Landroid/widget/TextView;

    const v1, 0x7f060007

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hdmi/HdmiInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->DetailedTimingDescription1Text:Landroid/widget/TextView;

    const v1, 0x7f060008

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hdmi/HdmiInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->DetailedTimingDescription2Text:Landroid/widget/TextView;

    const v1, 0x7f060009

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hdmi/HdmiInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->DetailedTimingDescription3Text:Landroid/widget/TextView;

    const v1, 0x7f06000a

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hdmi/HdmiInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->DetailedTimingDescription4Text:Landroid/widget/TextView;

    const v1, 0x7f060004

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hdmi/HdmiInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->ChecksumText:Landroid/widget/TextView;

    const v1, 0x7f060013

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hdmi/HdmiInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->ExtendedDataText:Landroid/widget/TextView;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/motorola/motocit/hdmi/HdmiInfo;->wasActivityStartedByCommServer()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/motorola/motocit/TestUtils;->getPassFailMethods()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VOLUME_KEYS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 v0, 0x19

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/16 v3, 0x18

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const-string v0, "Seq"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/hdmi/HdmiInfo;->modeCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/hdmi/HdmiInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v2

    :cond_2
    invoke-virtual {p0, v2}, Lcom/motorola/motocit/hdmi/HdmiInfo;->systemExitWrapper(I)V

    goto/16 :goto_3

    :cond_3
    :goto_0
    const v3, 0x8000

    const-string v4, "testresult.txt"

    if-ne p1, v0, :cond_4

    const-string v0, "HDMI Info Test: PASS\r\n"

    invoke-virtual {p0, v4, v0, v3}, Lcom/motorola/motocit/hdmi/HdmiInfo;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "PASS"

    invoke-direct {p0, v0}, Lcom/motorola/motocit/hdmi/HdmiInfo;->logResults(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "HDMI Info Test: FAILED\r\n"

    invoke-virtual {p0, v4, v0, v3}, Lcom/motorola/motocit/hdmi/HdmiInfo;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "FAIL"

    invoke-direct {p0, v0}, Lcom/motorola/motocit/hdmi/HdmiInfo;->logResults(Ljava/lang/String;)V

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cable Status: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->cableStatus:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v3}, Lcom/motorola/motocit/hdmi/HdmiInfo;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HDCP Status: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->hdcpStatus:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v3}, Lcom/motorola/motocit/hdmi/HdmiInfo;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Audio Support: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->audioSupport:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v3}, Lcom/motorola/motocit/hdmi/HdmiInfo;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HDMI Ouput Width: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->hdmiWidth:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v3}, Lcom/motorola/motocit/hdmi/HdmiInfo;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HDMI Ouput Height: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->hdmiHeight:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v3}, Lcom/motorola/motocit/hdmi/HdmiInfo;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EDID: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->edid:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v3}, Lcom/motorola/motocit/hdmi/HdmiInfo;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4, v2}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    invoke-virtual {p0, v2}, Lcom/motorola/motocit/hdmi/HdmiInfo;->systemExitWrapper(I)V

    :cond_5
    :goto_3
    return v1

    :cond_6
    :goto_4
    return v1
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onPause()V

    iget-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->mHDMIAppStatusReceiver:Lcom/motorola/motocit/hdmi/HdmiInfo$HDMIAppStatusReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/hdmi/HdmiInfo;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->cableStatus:I

    iput v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->hdcpStatus:I

    iput v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->audioSupport:I

    iput v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->hdmiWidth:I

    iput v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->hdmiHeight:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->edid:Ljava/lang/String;

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onResume()V

    new-instance v0, Lcom/motorola/motocit/hdmi/HdmiInfo$HDMIAppStatusReceiver;

    invoke-direct {v0, p0}, Lcom/motorola/motocit/hdmi/HdmiInfo$HDMIAppStatusReceiver;-><init>(Lcom/motorola/motocit/hdmi/HdmiInfo;)V

    iput-object v0, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->mHDMIAppStatusReceiver:Lcom/motorola/motocit/hdmi/HdmiInfo$HDMIAppStatusReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.motorola.intent.action.externaldisplaystate"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->mHDMIAppStatusReceiver:Lcom/motorola/motocit/hdmi/HdmiInfo$HDMIAppStatusReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/motocit/hdmi/HdmiInfo;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/motorola/motocit/hdmi/HdmiInfo;->sendStartActivityPassed()V

    return-void
.end method

.method public onSwipeDown()Z
    .locals 2

    const-string v0, "Seq"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/hdmi/HdmiInfo;->modeCheck(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/hdmi/HdmiInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hdmi/HdmiInfo;->systemExitWrapper(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSwipeLeft()Z
    .locals 5

    const-string v0, "testresult.txt"

    const-string v1, "HDMI Info Test: PASS\r\n"

    const v2, 0x8000

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/hdmi/HdmiInfo;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cable Status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->cableStatus:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/hdmi/HdmiInfo;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HDCP Status: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->hdcpStatus:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/hdmi/HdmiInfo;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio Support: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->audioSupport:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/hdmi/HdmiInfo;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HDMI Ouput Width: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->hdmiWidth:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/hdmi/HdmiInfo;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HDMI Ouput Height: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->hdmiHeight:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/hdmi/HdmiInfo;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EDID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->edid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/hdmi/HdmiInfo;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "PASS"

    invoke-direct {p0, v0}, Lcom/motorola/motocit/hdmi/HdmiInfo;->logResults(Ljava/lang/String;)V

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
    invoke-virtual {p0, v2}, Lcom/motorola/motocit/hdmi/HdmiInfo;->systemExitWrapper(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSwipeRight()Z
    .locals 5

    const-string v0, "testresult.txt"

    const-string v1, "HDMI Info Test: FAILED\r\n"

    const v2, 0x8000

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/hdmi/HdmiInfo;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cable Status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->cableStatus:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/hdmi/HdmiInfo;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HDCP Status: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->hdcpStatus:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/hdmi/HdmiInfo;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio Support: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->audioSupport:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/hdmi/HdmiInfo;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HDMI Ouput Width: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->hdmiWidth:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/hdmi/HdmiInfo;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HDMI Ouput Height: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->hdmiHeight:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/hdmi/HdmiInfo;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EDID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->edid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/hdmi/HdmiInfo;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "FAIL"

    invoke-direct {p0, v0}, Lcom/motorola/motocit/hdmi/HdmiInfo;->logResults(Ljava/lang/String;)V

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
    invoke-virtual {p0, v2}, Lcom/motorola/motocit/hdmi/HdmiInfo;->systemExitWrapper(I)V

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

    iget-object v1, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "This function will read the HDMI info"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/motorola/motocit/hdmi/HdmiInfo;->getBaseHelp()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v1, "Activity Specific Commands"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "GET_CABLE_STATUS - Returns the HDMI cable status"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "GET_HDCP_STATUS - Returns the status of HDCP"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "GET_AUDIO_SUPPORT - Returns the audio support field"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "GET_HDMI_OUTPUT_DIMENSIONS - Returns the output resolution width and height"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "GET_EDID - Returns the EDID"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "GET_HDMI_MENU_SETTING - Gets the HDMI Connection setting in the display menu"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "SET_HDMI_MENU_SETTING <VALUE> - Sets the HDMI Connection setting in the display menu."

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "  <VALUE> - 0 (disable) or 1 (enable)."

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CommServerDataPacket;

    iget v2, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->strRxCmd:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/motocit/hdmi/HdmiInfo;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/hdmi/HdmiInfo;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    return-void
.end method
