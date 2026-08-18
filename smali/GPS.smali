.class public Lcom/motorola/motocit/gps/GPS;
.super Lcom/motorola/motocit/Test_Base;
.source "GPS.java"


# static fields
.field private static GPS_ENABLE_TIMEOUT_MSECS:J = 0x0L

.field private static final LOCATION_SOURCE_SETTINGS_MAX_REQUEST_TIMES:I = 0x1


# instance fields
.field private SHOW_PASS:Ljava/lang/String;

.field private gnssStatusCallback:Landroid/location/GnssStatus$Callback;

.field private final gpsLocationListener:Landroid/location/LocationListener;

.field private isGPSTested:Z

.field private isPermissionAllowed:Z

.field private isRecord:Z

.field private locationSourceSettingsRequestTimes:I

.field private mCurrGpsStatus:Z

.field private mGpsErrorInfoTextView:Landroid/widget/TextView;

.field private mGpsInfoTextView:Landroid/widget/TextView;

.field private mGpsLocationInfoTextView:Landroid/widget/TextView;

.field private mGpsLocationValueTextView:Landroid/widget/TextView;

.field private mGpsResultTextView:Landroid/widget/TextView;

.field private mGpslist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInitGpsStatus:Z

.field mLatitude:D

.field private mLocationManager:Landroid/location/LocationManager;

.field mLongitude:D

.field private mNumSatelliteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mSatelliteInfoTextView:Landroid/widget/TextView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mlistView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/motorola/motocit/gps/GPS;->GPS_ENABLE_TIMEOUT_MSECS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/motorola/motocit/Test_Base;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/motocit/gps/GPS;->mLocationManager:Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/motorola/motocit/gps/GPS;->mGpsInfoTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/gps/GPS;->mGpsLocationInfoTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/gps/GPS;->mGpsErrorInfoTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/gps/GPS;->mGpsLocationValueTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/gps/GPS;->mSatelliteInfoTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/gps/GPS;->mGpsResultTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/motocit/gps/GPS;->mInitGpsStatus:Z

    iput-boolean v1, p0, Lcom/motorola/motocit/gps/GPS;->mCurrGpsStatus:Z

    iput-boolean v1, p0, Lcom/motorola/motocit/gps/GPS;->isGPSTested:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/motorola/motocit/gps/GPS;->mNumSatelliteList:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/motorola/motocit/gps/GPS;->mGpslist:Ljava/util/ArrayList;

    const-wide v2, -0x3f70c80000000000L    # -999.0

    iput-wide v2, p0, Lcom/motorola/motocit/gps/GPS;->mLatitude:D

    iput-wide v2, p0, Lcom/motorola/motocit/gps/GPS;->mLongitude:D

    iput-boolean v1, p0, Lcom/motorola/motocit/gps/GPS;->isPermissionAllowed:Z

    iput-object v0, p0, Lcom/motorola/motocit/gps/GPS;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-boolean v1, p0, Lcom/motorola/motocit/gps/GPS;->isRecord:Z

    const-string v0, "PASS"

    iput-object v0, p0, Lcom/motorola/motocit/gps/GPS;->SHOW_PASS:Ljava/lang/String;

    new-instance v0, Lcom/motorola/motocit/gps/GPS$1;

    invoke-direct {v0, p0}, Lcom/motorola/motocit/gps/GPS$1;-><init>(Lcom/motorola/motocit/gps/GPS;)V

    iput-object v0, p0, Lcom/motorola/motocit/gps/GPS;->gnssStatusCallback:Landroid/location/GnssStatus$Callback;

    new-instance v0, Lcom/motorola/motocit/gps/GPS$2;

    invoke-direct {v0, p0}, Lcom/motorola/motocit/gps/GPS$2;-><init>(Lcom/motorola/motocit/gps/GPS;)V

    iput-object v0, p0, Lcom/motorola/motocit/gps/GPS;->gpsLocationListener:Landroid/location/LocationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/motocit/gps/GPS;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/motocit/gps/GPS;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/gps/GPS;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/motocit/gps/GPS;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->SHOW_PASS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/motorola/motocit/gps/GPS;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->mlistView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/motorola/motocit/gps/GPS;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/motocit/gps/GPS;->isRecord:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/motorola/motocit/gps/GPS;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/motocit/gps/GPS;->isRecord:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/motorola/motocit/gps/GPS;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/gps/GPS;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/motorola/motocit/gps/GPS;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/motorola/motocit/gps/GPS;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/motorola/motocit/gps/GPS;->systemExitWrapper(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/motorola/motocit/gps/GPS;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/motorola/motocit/gps/GPS;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/gps/GPS;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$1800(Lcom/motorola/motocit/gps/GPS;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/motocit/gps/GPS;->updateToNewLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/motorola/motocit/gps/GPS;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/motocit/gps/GPS;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->mSatelliteInfoTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/motorola/motocit/gps/GPS;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/gps/GPS;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$2100(Lcom/motorola/motocit/gps/GPS;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/motorola/motocit/gps/GPS;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/gps/GPS;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$2300(Lcom/motorola/motocit/gps/GPS;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/motorola/motocit/gps/GPS;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/gps/GPS;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$2500(Lcom/motorola/motocit/gps/GPS;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/motorola/motocit/gps/GPS;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/gps/GPS;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$2700(Lcom/motorola/motocit/gps/GPS;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/motorola/motocit/gps/GPS;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/gps/GPS;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/motocit/gps/GPS;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->mGpslist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/motocit/gps/GPS;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/motocit/gps/GPS;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/gps/GPS;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/motocit/gps/GPS;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/motorola/motocit/gps/GPS;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/gps/GPS;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$800(Lcom/motorola/motocit/gps/GPS;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/motocit/gps/GPS;->isGPSTested:Z

    return v0
.end method

.method static synthetic access$802(Lcom/motorola/motocit/gps/GPS;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/motocit/gps/GPS;->isGPSTested:Z

    return p1
.end method

.method static synthetic access$900(Lcom/motorola/motocit/gps/GPS;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->mGpsResultTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private getGpsLocation()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    const-string v1, "getGpsLocation"

    const/16 v2, 0x76

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/gps/GPS;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const-string v0, "gps"

    iget-object v1, p0, Lcom/motorola/motocit/gps/GPS;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/motorola/motocit/gps/GPS;->updateToNewLocation(Landroid/location/Location;)V

    return-void
.end method

.method private updateToNewLocation(Landroid/location/Location;)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    const-string v1, "updateToNewLocation"

    const/16 v2, 0x76

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/gps/GPS;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const/16 v0, 0x64

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/motocit/gps/GPS;->mLatitude:D

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/motocit/gps/GPS;->mLongitude:D

    iget-object v1, p0, Lcom/motorola/motocit/gps/GPS;->mGpsLocationValueTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/motorola/motocit/gps/GPS;->mLatitude:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/motorola/motocit/gps/GPS;->mLongitude:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Latitude: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/motorola/motocit/gps/GPS;->mLatitude:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "  Longitude: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/motorola/motocit/gps/GPS;->mLongitude:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/motorola/motocit/gps/GPS;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    goto :goto_0

    :cond_0
    const-wide v1, -0x3f70c80000000000L    # -999.0

    iput-wide v1, p0, Lcom/motorola/motocit/gps/GPS;->mLatitude:D

    iput-wide v1, p0, Lcom/motorola/motocit/gps/GPS;->mLongitude:D

    iget-object v1, p0, Lcom/motorola/motocit/gps/GPS;->mGpsLocationValueTextView:Landroid/widget/TextView;

    const-string v2, "\nUNKNOWN\nUNKNOWN"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    const-string v2, "Latitude: UNKNOWN\nLongitude: UNKNOWN"

    invoke-virtual {p0, v1, v2, v0}, Lcom/motorola/motocit/gps/GPS;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected handleTestSpecificActions()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/motocit/CmdFailException;,
            Lcom/motorola/motocit/CmdPassException;
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->strRxCmd:Ljava/lang/String;

    const-string v1, "ENABLE_GPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "GPS only can be enabled in settings app"

    const/16 v2, 0x69

    const/4 v3, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->strRxCmd:Ljava/lang/String;

    const-string v4, "DISABLE_GPS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->strRxCmd:Ljava/lang/String;

    const-string v1, "GET_GPS_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/motorola/motocit/gps/GPS;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    const-string v1, "ON"

    goto :goto_0

    :cond_0
    const-string v1, "OFF"

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GPS_STATE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/motocit/CommServerDataPacket;

    iget v4, p0, Lcom/motorola/motocit/gps/GPS;->nRxSeqTag:I

    iget-object v5, p0, Lcom/motorola/motocit/gps/GPS;->strRxCmd:Ljava/lang/String;

    iget-object v6, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v3}, Lcom/motorola/motocit/gps/GPS;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/motocit/CmdPassException;

    iget v6, p0, Lcom/motorola/motocit/gps/GPS;->nRxSeqTag:I

    iget-object v7, p0, Lcom/motorola/motocit/gps/GPS;->strRxCmd:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v4}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v5

    :cond_1
    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->strRxCmd:Ljava/lang/String;

    const-string v4, "GET_LOCATION_INFO"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->strRxCmd:Ljava/lang/String;

    const-string v4, "GET_SATELLITE_INFO"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NUMBER_OF_SATELLITES_FOUND="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/motorola/motocit/gps/GPS;->mNumSatelliteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/motorola/motocit/gps/GPS;->mNumSatelliteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SATELLITE_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_AZIMUTH="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/motorola/motocit/gps/GPS;->mNumSatelliteList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/GpsSatellite;

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_ELEVATION="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/motorola/motocit/gps/GPS;->mNumSatelliteList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/GpsSatellite;

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_PRN="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/motorola/motocit/gps/GPS;->mNumSatelliteList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/GpsSatellite;

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_SNR="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/motorola/motocit/gps/GPS;->mNumSatelliteList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_2
    new-instance v1, Lcom/motorola/motocit/CommServerDataPacket;

    iget v2, p0, Lcom/motorola/motocit/gps/GPS;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/gps/GPS;->strRxCmd:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/gps/GPS;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/motorola/motocit/CmdPassException;

    iget v4, p0, Lcom/motorola/motocit/gps/GPS;->nRxSeqTag:I

    iget-object v5, p0, Lcom/motorola/motocit/gps/GPS;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v2}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3

    :cond_3
    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->strRxCmd:Ljava/lang/String;

    const-string v4, "help"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/motorola/motocit/gps/GPS;->printHelp()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "%s help printed"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CmdPassException;

    iget v2, p0, Lcom/motorola/motocit/gps/GPS;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/gps/GPS;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    aput-object v5, v4, v3

    iget-object v5, p0, Lcom/motorola/motocit/gps/GPS;->strRxCmd:Ljava/lang/String;

    aput-object v5, v4, v1

    const-string v1, "Activity \'%s\' does not recognize command \'%s\'"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v2}, Lcom/motorola/motocit/gps/GPS;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/gps/GPS;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/gps/GPS;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_5
    invoke-direct {p0}, Lcom/motorola/motocit/gps/GPS;->getGpsLocation()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LATITUDE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/motorola/motocit/gps/GPS;->mLatitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LONGITUDE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/motorola/motocit/gps/GPS;->mLongitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CommServerDataPacket;

    iget v2, p0, Lcom/motorola/motocit/gps/GPS;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/gps/GPS;->strRxCmd:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/gps/GPS;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/motorola/motocit/CmdPassException;

    iget v4, p0, Lcom/motorola/motocit/gps/GPS;->nRxSeqTag:I

    iget-object v5, p0, Lcom/motorola/motocit/gps/GPS;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v2}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v2}, Lcom/motorola/motocit/gps/GPS;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/gps/GPS;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/gps/GPS;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v2}, Lcom/motorola/motocit/gps/GPS;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/gps/GPS;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/gps/GPS;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/motocit/Test_Base;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult. requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x69

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/gps/GPS;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const/16 v0, 0x190

    if-ne p1, v0, :cond_1

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/gps/GPS;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enable Location "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    const-string v4, "successful"

    goto :goto_0

    :cond_0
    const-string v4, "failed"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v4, v3, v2}, Lcom/motorola/motocit/gps/GPS;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const/4 v2, 0x0

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "GPS"

    iput-object v0, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/motorola/motocit/Test_Base;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    const/16 v2, 0x76

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/gps/GPS;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/gps/GPS;->adjustViewDisplayArea(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/motocit/gps/GPS;->mGestureListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/motocit/gps/GPS;->mGestureListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/gps/GPS;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/motorola/motocit/gps/GPS;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/motorola/motocit/gps/GPS;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/motorola/motocit/gps/GPS;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onDestroy()V

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8

    invoke-virtual {p0}, Lcom/motorola/motocit/gps/GPS;->wasActivityStartedByCommServer()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/motorola/motocit/TestUtils;->getPassFailMethods()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VOLUME_KEYS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/16 v0, 0x19

    const-wide/16 v2, 0x3e8

    const v4, 0x8000

    const-string v5, "testresult.txt"

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/motocit/gps/GPS;->isGPSTested:Z

    if-nez v0, :cond_1

    const-string v0, "Not engough starts were found.Please press the volume up button to fail."

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v7

    :cond_1
    const-string v0, "GPS Test:  PASS\r\n\r\n"

    invoke-virtual {p0, v5, v0, v4}, Lcom/motorola/motocit/gps/GPS;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    const-string v4, "PASS"

    invoke-virtual {p0, v0, v4, v6, v6}, Lcom/motorola/motocit/gps/GPS;->logTestResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    :try_start_0
    invoke-static {v2, v3, v7}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    invoke-virtual {p0, v7}, Lcom/motorola/motocit/gps/GPS;->systemExitWrapper(I)V

    goto :goto_2

    :cond_2
    const/16 v0, 0x18

    if-ne p1, v0, :cond_3

    const-string v0, "GPS Test:  FAILED\r\n\r\n"

    invoke-virtual {p0, v5, v0, v4}, Lcom/motorola/motocit/gps/GPS;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    const-string v4, "FAIL"

    invoke-virtual {p0, v0, v4, v6, v6}, Lcom/motorola/motocit/gps/GPS;->logTestResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    :try_start_1
    invoke-static {v2, v3, v7}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    invoke-virtual {p0, v7}, Lcom/motorola/motocit/gps/GPS;->systemExitWrapper(I)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const-string v0, "Seq"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/gps/GPS;->modeCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/gps/GPS;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v7

    :cond_4
    invoke-virtual {p0, v7}, Lcom/motorola/motocit/gps/GPS;->systemExitWrapper(I)V

    :cond_5
    :goto_2
    return v1

    :cond_6
    :goto_3
    return v1
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onPause()V

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    const/16 v2, 0x76

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/gps/GPS;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/motorola/motocit/gps/GPS;->gnssStatusCallback:Landroid/location/GnssStatus$Callback;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->unregisterGnssStatusCallback(Landroid/location/GnssStatus$Callback;)V

    invoke-virtual {p0}, Lcom/motorola/motocit/gps/GPS;->wasActivityStartedByCommServer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/motocit/gps/GPS;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/motorola/motocit/gps/GPS;->isPermissionAllowed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/motorola/motocit/gps/GPS;->gpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    const/16 v0, 0x3e9

    if-ne v0, p1, :cond_1

    array-length v0, p3

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget v1, p3, v0

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/motorola/motocit/gps/GPS;->isPermissionAllowed:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/motorola/motocit/gps/GPS;->isPermissionAllowed:Z

    invoke-virtual {p0, v2}, Lcom/motorola/motocit/gps/GPS;->exitWithResult(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 7

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onResume()V

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    const/16 v2, 0x69

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/gps/GPS;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/motorola/motocit/gps/GPS;->isPermissionAllowed:Z

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/gps/GPS;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3e9

    invoke-virtual {p0, v0, v2}, Lcom/motorola/motocit/gps/GPS;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/motorola/motocit/gps/GPS;->isPermissionAllowed:Z

    :goto_0
    iget-boolean v0, p0, Lcom/motorola/motocit/gps/GPS;->isPermissionAllowed:Z

    if-eqz v0, :cond_6

    const v0, 0x7f06009d

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/gps/GPS;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/gps/GPS;->mGpsInfoTextView:Landroid/widget/TextView;

    const v0, 0x7f06009e

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/gps/GPS;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/gps/GPS;->mGpsErrorInfoTextView:Landroid/widget/TextView;

    const v0, 0x7f06009b

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/gps/GPS;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/gps/GPS;->mGpsLocationInfoTextView:Landroid/widget/TextView;

    const v0, 0x7f06009c

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/gps/GPS;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/gps/GPS;->mGpsLocationValueTextView:Landroid/widget/TextView;

    const v0, 0x7f0600a0

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/gps/GPS;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/gps/GPS;->mGpsResultTextView:Landroid/widget/TextView;

    const v0, 0x7f0600a1

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/gps/GPS;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/gps/GPS;->mSatelliteInfoTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->mGpsInfoTextView:Landroid/widget/TextView;

    const-string v2, "GPS Test "

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->mGpsLocationInfoTextView:Landroid/widget/TextView;

    const-string v3, "GPS Location\nLatitude:\nLongitude:"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->mSatelliteInfoTextView:Landroid/widget/TextView;

    const-string v3, "Satellite Info\nSatellite Count: 0"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0600dd

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/gps/GPS;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/motorola/motocit/gps/GPS;->mlistView:Landroid/widget/ListView;

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/gps/GPS;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/motorola/motocit/gps/GPS;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    const/16 v3, 0x76

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    const-string v2, "Gps enabled"

    invoke-virtual {p0, v0, v2, v3}, Lcom/motorola/motocit/gps/GPS;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iput-boolean v1, p0, Lcom/motorola/motocit/gps/GPS;->mInitGpsStatus:Z

    iput-boolean v1, p0, Lcom/motorola/motocit/gps/GPS;->mCurrGpsStatus:Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    const-string v4, "Gps disabled"

    invoke-virtual {p0, v0, v4, v3}, Lcom/motorola/motocit/gps/GPS;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/motocit/gps/GPS;->mInitGpsStatus:Z

    invoke-virtual {p0}, Lcom/motorola/motocit/gps/GPS;->wasActivityStartedByCommServer()Z

    move-result v4

    if-nez v4, :cond_4

    iget v2, p0, Lcom/motorola/motocit/gps/GPS;->locationSourceSettingsRequestTimes:I

    if-lt v2, v1, :cond_3

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locationSourceSettingsRequestTimes("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/motorola/motocit/gps/GPS;->locationSourceSettingsRequestTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")) has reached LOCATION_SOURCE_SETTINGS_MAX_REQUEST_TIMES("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/gps/GPS;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    const-string v4, "Gps disabled, now will open Settings to ask user to enable Location"

    invoke-virtual {p0, v2, v4, v3}, Lcom/motorola/motocit/gps/GPS;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const-string v2, "Please enable Location"

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iput-boolean v0, p0, Lcom/motorola/motocit/gps/GPS;->mInitGpsStatus:Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x190

    invoke-virtual {p0, v0, v2}, Lcom/motorola/motocit/gps/GPS;->startActivityForResult(Landroid/content/Intent;I)V

    iget v2, p0, Lcom/motorola/motocit/gps/GPS;->locationSourceSettingsRequestTimes:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/motorola/motocit/gps/GPS;->locationSourceSettingsRequestTimes:I

    return-void

    :cond_4
    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->mGpsInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-boolean v0, p0, Lcom/motorola/motocit/gps/GPS;->mCurrGpsStatus:Z

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/motorola/motocit/gps/GPS;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/motorola/motocit/gps/GPS;->gpsLocationListener:Landroid/location/LocationListener;

    const-string v2, "gps"

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/motorola/motocit/gps/GPS;->gnssStatusCallback:Landroid/location/GnssStatus$Callback;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;)Z

    invoke-direct {p0}, Lcom/motorola/motocit/gps/GPS;->getGpsLocation()V

    :cond_5
    invoke-virtual {p0}, Lcom/motorola/motocit/gps/GPS;->sendStartActivityPassed()V

    goto :goto_2

    :cond_6
    const-string v0, "No Permission Granted to run GPS test"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/gps/GPS;->sendStartActivityFailed(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onStop()V

    return-void
.end method

.method public onSwipeDown()Z
    .locals 2

    const-string v0, "Seq"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/gps/GPS;->modeCheck(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/gps/GPS;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/motorola/motocit/gps/GPS;->systemExitWrapper(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSwipeLeft()Z
    .locals 3

    const-string v0, "testresult.txt"

    const-string v1, "GPS Test:  PASS\r\n\r\n"

    const v2, 0x8000

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/gps/GPS;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    const-string v1, "PASS"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/motorola/motocit/gps/GPS;->logTestResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

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
    invoke-virtual {p0, v2}, Lcom/motorola/motocit/gps/GPS;->systemExitWrapper(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSwipeRight()Z
    .locals 3

    const-string v0, "testresult.txt"

    const-string v1, "GPS Test:  FAILED\r\n\r\n"

    const v2, 0x8000

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/gps/GPS;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    const-string v1, "FAIL"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/motorola/motocit/gps/GPS;->logTestResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

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
    invoke-virtual {p0, v2}, Lcom/motorola/motocit/gps/GPS;->systemExitWrapper(I)V

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

    const-string v1, "GPS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "This activity brings up the GPS Test"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/motorola/motocit/gps/GPS;->getBaseHelp()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v1, "Activity Specific Commands"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "ENABLE_GPS - Turns on GPS"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "DISABLE_GPS - Turns off GPS"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "GET_GPS_STATE - Gets the GPS state ON or OFF"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "GET_LOCATION_INFO - Gets the latitude and longitude"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "GET_SATELLITE_INFO - Gets the number of satellites and azimuth, elevation, PRN, and SNR for each satellite found"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CommServerDataPacket;

    iget v2, p0, Lcom/motorola/motocit/gps/GPS;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/gps/GPS;->strRxCmd:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/motocit/gps/GPS;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/gps/GPS;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    return-void
.end method
