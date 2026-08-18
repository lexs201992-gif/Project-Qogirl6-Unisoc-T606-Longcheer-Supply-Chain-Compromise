.class public Lcom/motorola/motocit/nfc/NFCTest;
.super Lcom/motorola/motocit/Test_Base;
.source "NFCTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/motocit/nfc/NFCTest$DisableForegroundDispatch;,
        Lcom/motorola/motocit/nfc/NFCTest$EnableForegroundDispatch;,
        Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;
    }
.end annotation


# static fields
.field private static mClassLoader:Ljava/lang/ClassLoader;

.field private static volatile mNfcAdapterDisableBoolArg:Ljava/lang/reflect/Method;

.field private static volatile mNfcAdapterDisableNoArg:Ljava/lang/reflect/Method;

.field private static volatile mNfcAdapterGetDefaultSelectedSecureElement:Ljava/lang/reflect/Method;

.field private static volatile mNfcAdapterSelectDefaultSecureElement:Ljava/lang/reflect/Method;

.field private static volatile mNfcAdapterSetDefaultSecureElementState:Ljava/lang/reflect/Method;

.field private static volatile mNfcSwpSwitchGetSWPSIMStatus:Ljava/lang/reflect/Method;

.field private static mNfcSwpSwitchInstance:Ljava/lang/Object;

.field private static volatile mNfcSwpSwitchSetSWPSIM:Ljava/lang/reflect/Method;


# instance fields
.field private final STATE_OFF:I

.field private final STATE_ON:I

.field private final STATE_TURNING_OFF:I

.field private final STATE_TURNING_ON:I

.field private isDisableForegroundDispatchSuccess:Z

.field private isEnableForegroundDispatchSuccess:Z

.field private isNFCIdentify:Z

.field private isRecord:Z

.field private lastNfcIntent:Landroid/content/Intent;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcPendingIntent:Landroid/app/PendingIntent;

.field private final mNfcTagLock:Ljava/util/concurrent/locks/Lock;

.field private mOriginalNFCState:Ljava/lang/Boolean;

.field private mReadWriteCheck:Z

.field private mReadWriteCheckBox:Landroid/widget/CheckBox;

.field private mSawNFCIntent:Z

.field private mWriteTagEditText:Landroid/widget/EditText;

.field private nfcDetectedTagTextView:Landroid/widget/TextView;

.field private nfcMaxSizeTextView:Landroid/widget/TextView;

.field private nfcReadWriteTextView:Landroid/widget/TextView;

.field private nfcResultTextView:Landroid/widget/TextView;

.field private nfcTagStatusTextView:Landroid/widget/TextView;

.field private nfcTagTypeTextView:Landroid/widget/TextView;

.field private nfcTnfTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapterDisableNoArg:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapterDisableBoolArg:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapterSelectDefaultSecureElement:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapterSetDefaultSecureElementState:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapterGetDefaultSelectedSecureElement:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcSwpSwitchInstance:Ljava/lang/Object;

    sput-object v0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcSwpSwitchSetSWPSIM:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcSwpSwitchGetSWPSIMStatus:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/motorola/motocit/nfc/NFCTest;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-static {}, Lcom/motorola/motocit/nfc/NFCTest;->initializeNfcAdapterDisableMethods()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/motocit/Test_Base;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->nfcTagStatusTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->nfcDetectedTagTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->nfcMaxSizeTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->nfcTagTypeTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->nfcReadWriteTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->nfcTnfTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->nfcResultTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mWriteTagEditText:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mReadWriteCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->mReadWriteCheck:Z

    iput-boolean v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->mSawNFCIntent:Z

    iput-boolean v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->isNFCIdentify:Z

    iput-boolean v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->isRecord:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->isEnableForegroundDispatchSuccess:Z

    iput-boolean v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->isDisableForegroundDispatchSuccess:Z

    iput-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->lastNfcIntent:Landroid/content/Intent;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcTagLock:Ljava/util/concurrent/locks/Lock;

    iput v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->STATE_OFF:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->STATE_TURNING_ON:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->STATE_ON:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->STATE_TURNING_OFF:I

    return-void
.end method

.method private WriteTagPayload(Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/motocit/CmdFailException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcTagLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->ndef:Landroid/nfc/tech/Ndef;

    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result v0

    const/16 v1, 0x69

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-short v0, p1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->tnfTypeShort:S

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/util/ArrayList;

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/motorola/motocit/nfc/NFCTest;->WriteTnfWellKnownPayloadData(Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcTagLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    nop

    return-void

    :goto_0
    :try_start_1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "Tag TNF %s not supported"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->tnfType:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "Tag is not writable"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcTagLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/motorola/motocit/nfc/NFCTest;)Landroid/nfc/NfcAdapter;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/motocit/nfc/NFCTest;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/motorola/motocit/nfc/NFCTest;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/motorola/motocit/nfc/NFCTest;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$1200(Lcom/motorola/motocit/nfc/NFCTest;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mReadWriteCheck:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/motorola/motocit/nfc/NFCTest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/motocit/nfc/NFCTest;->mReadWriteCheck:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/motorola/motocit/nfc/NFCTest;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mReadWriteCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/motocit/nfc/NFCTest;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$302(Lcom/motorola/motocit/nfc/NFCTest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/motocit/nfc/NFCTest;->isEnableForegroundDispatchSuccess:Z

    return p1
.end method

.method static synthetic access$400(Lcom/motorola/motocit/nfc/NFCTest;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/motocit/nfc/NFCTest;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/motocit/nfc/NFCTest;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$700(Lcom/motorola/motocit/nfc/NFCTest;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/motorola/motocit/nfc/NFCTest;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$902(Lcom/motorola/motocit/nfc/NFCTest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/motocit/nfc/NFCTest;->isDisableForegroundDispatchSuccess:Z

    return p1
.end method

.method private static initializeNfcAdapterDisableMethods()V
    .locals 5

    const-string v0, "disable"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapterDisableNoArg:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    const-class v2, Landroid/nfc/NfcAdapter;

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapterDisableNoArg:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    :try_start_1
    sget-object v2, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapterDisableBoolArg:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    const-class v2, Landroid/nfc/NfcAdapter;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapterDisableBoolArg:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method

.method private static initializeNfcAdapterSecureElementMethods()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapterSelectDefaultSecureElement:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    const-class v2, Landroid/nfc/NfcAdapter;

    const-string v3, "selectDefaultSecureElement"

    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapterSelectDefaultSecureElement:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    :try_start_1
    sget-object v2, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapterSetDefaultSecureElementState:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    const-class v2, Landroid/nfc/NfcAdapter;

    const-string v3, "setDefaultSecureElementState"

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v1

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapterSetDefaultSecureElementState:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapterGetDefaultSelectedSecureElement:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    const-class v0, Landroid/nfc/NfcAdapter;

    const-string v2, "getDefaultSelectedSecureElement"

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapterGetDefaultSelectedSecureElement:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    return-void
.end method

.method private static initializeNfcSwpSwitchMethods()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/motorola/motocit/nfc/NFCTest;->mClassLoader:Ljava/lang/ClassLoader;

    const-string v2, "android.nfc.NfcSwpSwitch"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/motorola/motocit/nfc/NFCTest;->mNfcSwpSwitchInstance:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :try_start_1
    sget-object v2, Lcom/motorola/motocit/nfc/NFCTest;->mNfcSwpSwitchSetSWPSIM:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    const-string v2, "setSWPSIM"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/motorola/motocit/nfc/NFCTest;->mNfcSwpSwitchSetSWPSIM:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    :try_start_2
    sget-object v2, Lcom/motorola/motocit/nfc/NFCTest;->mNfcSwpSwitchGetSWPSIMStatus:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    const-string v2, "getSWPSIMStatus"

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/motorola/motocit/nfc/NFCTest;->mNfcSwpSwitchGetSWPSIMStatus:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    goto :goto_2

    :catch_2
    move-exception v1

    :cond_2
    :goto_2
    return-void
.end method

.method private nfcAdapterDisable()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/motocit/CmdFailException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcTagLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    sget-object v1, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapterDisableNoArg:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x69

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapterDisableNoArg:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "Failed to invoke NfcAdapter.disable(). %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v2}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_0
    sget-object v1, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapterDisableBoolArg:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    :try_start_3
    sget-object v1, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapterDisableBoolArg:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :goto_0
    iput-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->lastNfcIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcTagLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    nop

    move-object v0, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :catch_1
    move-exception v1

    :try_start_4
    iget-object v5, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nfcAdapterDisable() mNfcAdapterDisableBoolArg exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, v2}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "Failed to invoke NfcAdapter.disable(Boolean). %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v2}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "Could not locate function to disable NFC Adapter"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v2}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->lastNfcIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcTagLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private parseTag(Landroid/nfc/Tag;)Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/motocit/CmdFailException;
        }
    .end annotation

    const-string v0, ""

    new-instance v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;-><init>(Lcom/motorola/motocit/nfc/NFCTest;Lcom/motorola/motocit/nfc/NFCTest$1;)V

    :try_start_0
    iget-object v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcTagLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseTag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/nfc/Tag;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x69

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iput-object v2, v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->ndef:Landroid/nfc/tech/Ndef;

    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->getType()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->tagType:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result v5

    iput-boolean v5, v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->isWritable:Z

    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v5

    iput v5, v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->connect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    nop

    :try_start_2
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v5

    iput-object v5, v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->ndefMessage:Landroid/nfc/NdefMessage;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    nop

    :goto_0
    iget-object v4, v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->ndefMessage:Landroid/nfc/NdefMessage;

    if-nez v4, :cond_0

    iput-object v0, v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->tnfType:Ljava/lang/String;

    iput-object v0, v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->payloadData:Ljava/lang/String;

    goto/16 :goto_6

    :cond_0
    iget-object v0, v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->ndefMessage:Landroid/nfc/NdefMessage;

    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v0

    iput-short v0, v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->tnfTypeShort:S

    iget-object v0, v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->ndefMessage:Landroid/nfc/NdefMessage;

    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v4, "UNKNOWN"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_5
    const-string v0, "UNCHANGED"

    iput-object v0, v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->tnfType:Ljava/lang/String;

    goto :goto_2

    :pswitch_1
    iput-object v4, v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->tnfType:Ljava/lang/String;

    goto :goto_2

    :pswitch_2
    const-string v0, "EXTERNAL_TYPE"

    iput-object v0, v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->tnfType:Ljava/lang/String;

    goto :goto_2

    :pswitch_3
    const-string v0, "ABSOLUTE_URI"

    iput-object v0, v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->tnfType:Ljava/lang/String;

    goto :goto_2

    :pswitch_4
    const-string v0, "MIME_MEDIA"

    iput-object v0, v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->tnfType:Ljava/lang/String;

    goto :goto_2

    :pswitch_5
    const-string v0, "WELL_KNOWN"

    iput-object v0, v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->tnfType:Ljava/lang/String;

    goto :goto_2

    :pswitch_6
    const-string v0, "EMPTY"

    iput-object v0, v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->tnfType:Ljava/lang/String;

    goto :goto_2

    :goto_1
    iput-object v4, v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->tnfType:Ljava/lang/String;

    :goto_2
    iget-object v0, v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->ndefMessage:Landroid/nfc/NdefMessage;

    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    iget-object v0, v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->ndefMessage:Landroid/nfc/NdefMessage;

    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v0

    aget-byte v5, v0, v3

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_1

    const-string v5, "UTF-8"

    goto :goto_3

    :cond_1
    const-string v5, "UTF-16"

    :goto_3
    aget-byte v3, v0, v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    and-int/lit8 v3, v3, 0x3f

    :try_start_6
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, v3, 0x1

    array-length v8, v0

    sub-int/2addr v8, v3

    sub-int/2addr v8, v4

    invoke-direct {v6, v0, v7, v8, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v4, v6

    goto :goto_4

    :catch_1
    move-exception v4

    :try_start_7
    const-string v6, "ERROR: UnsupportedEncodingException"

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v4, v6

    :goto_4
    goto :goto_5

    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v4, v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->ndefMessage:Landroid/nfc/NdefMessage;

    invoke-virtual {v4}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    aget-object v3, v4, v3

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    move-object v4, v0

    :goto_5
    iput-object v4, v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->payloadData:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_6
    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcTagLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    nop

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    :try_start_8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNdefMessage() threw exception. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v6, v3, v4}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v3, Lcom/motorola/motocit/CmdFailException;

    iget v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v6, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v4, v6, v5}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_7
    :try_start_9
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_8

    :catch_3
    move-exception v3

    :try_start_a
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :goto_8
    nop

    throw v0

    :catch_4
    move-exception v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ndef.connect() threw exception. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v6, v3, v4}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v3, Lcom/motorola/motocit/CmdFailException;

    iget v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v6, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v4, v6, v5}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "Ndef object from Tag is null"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v5, v3, v4}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v3, Lcom/motorola/motocit/CmdFailException;

    iget v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v5, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcTagLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method WriteTnfWellKnownPayloadData(Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/motocit/CmdFailException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "T"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "en"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v7, v0

    nop

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/4 v10, 0x1

    add-int/2addr v0, v10

    new-array v11, v0, [B

    const/4 v0, 0x2

    if-eqz v7, :cond_0

    aput-byte v0, v11, v9

    const/4 v12, 0x1

    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    if-gt v12, v13, :cond_0

    add-int/lit8 v13, v12, -0x1

    aget-byte v13, v7, v13

    aput-byte v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v12, v1, Lcom/motorola/motocit/nfc/NFCTest;->mNfcTagLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->lock()V

    new-instance v12, Landroid/nfc/NdefRecord;

    new-array v13, v9, [B

    invoke-direct {v12, v10, v6, v13, v11}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    new-instance v13, Landroid/nfc/NdefMessage;

    new-array v14, v10, [Landroid/nfc/NdefRecord;

    aput-object v12, v14, v9

    invoke-direct {v13, v14}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    invoke-virtual {v13}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v14

    array-length v14, v14

    iget v15, v2, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->maxSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v14, v15, :cond_1

    :try_start_2
    iget-object v0, v2, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->ndef:Landroid/nfc/tech/Ndef;

    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->connect()V

    iget-object v0, v2, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->ndef:Landroid/nfc/tech/Ndef;

    invoke-virtual {v0, v13}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    iget-object v0, v2, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->ndef:Landroid/nfc/tech/Ndef;

    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    iget-object v0, v1, Lcom/motorola/motocit/nfc/NFCTest;->mNfcTagLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    nop

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to write payload to Tag. Exception: "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v15, v9, [Ljava/lang/Object;

    invoke-static {v8, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, v1, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/16 v15, 0x69

    invoke-virtual {v1, v8, v9, v15}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v8, v1, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9, v15}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v8, Lcom/motorola/motocit/CmdFailException;

    iget v9, v1, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v15, v1, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v8, v9, v15, v10}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v8

    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v15, "payload size (%d) exceeds tag\'s max payload size (%d)"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v0, v9

    iget v9, v2, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->maxSize:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v10

    invoke-static {v15, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/16 v10, 0x69

    invoke-virtual {v1, v0, v9, v10}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v0, Lcom/motorola/motocit/CmdFailException;

    iget v9, v1, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v10, v1, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v0, v9, v10, v8}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v8, v1, Lcom/motorola/motocit/nfc/NFCTest;->mNfcTagLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :catch_1
    move-exception v0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    const-string v11, "getBytes returned UnsupportedEncodingException"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, v1, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/16 v11, 0x69

    invoke-virtual {v1, v10, v9, v11}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v9, Lcom/motorola/motocit/CmdFailException;

    iget v10, v1, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v11, v1, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v9, v10, v11, v8}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v9
.end method

.method protected handleTestSpecificActions()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/motocit/CmdFailException;,
            Lcom/motorola/motocit/CmdPassException;
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    const-string v1, "ENABLE_NFC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x69

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    if-nez v0, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "Failed to enable NFC"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v4, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v3}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/motocit/CmdPassException;

    iget v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :catch_0
    move-exception v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "Failed to enable NFC Adapter"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v5, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v5, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v5, v4}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "NFC is not supported on this device"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_2
    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    const-string v3, "DISABLE_NFC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/motorola/motocit/nfc/NFCTest;->nfcAdapterDisable()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v3

    nop

    if-nez v0, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "Failed to disable NFC"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v4, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v3}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/motocit/CmdPassException;

    iget v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :catch_1
    move-exception v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "Failed to disable NFC Adapter"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v5, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v5, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v5, v4}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "NFC is not supported on this device"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_5
    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    const-string v3, "GET_NFC_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string v1, "UNKNOWN"

    goto :goto_0

    :pswitch_0
    const-string v1, "TURNING_OFF"

    goto :goto_0

    :pswitch_1
    const-string v1, "ON"

    goto :goto_0

    :pswitch_2
    const-string v1, "TURNING_ON"

    goto :goto_0

    :pswitch_3
    const-string v1, "OFF"

    nop

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CommServerDataPacket;

    iget v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/motorola/motocit/nfc/NFCTest;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/motocit/CmdPassException;

    iget v5, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v6, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v3}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v4

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "NFC is not supported on this device"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_7
    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    const-string v3, "ENABLE_FOREGROUND_DISPATCH"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_9

    :try_start_2
    new-instance v0, Lcom/motorola/motocit/nfc/NFCTest$EnableForegroundDispatch;

    invoke-direct {v0, p0, v3}, Lcom/motorola/motocit/nfc/NFCTest$EnableForegroundDispatch;-><init>(Lcom/motorola/motocit/nfc/NFCTest;Lcom/motorola/motocit/nfc/NFCTest$1;)V

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/motorola/motocit/nfc/NFCTest;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    iget-boolean v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->isEnableForegroundDispatchSuccess:Z

    if-nez v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "Activity \'%s\' is not in resumed state"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/motorola/motocit/CmdPassException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "Activity \'%s\' does not have permission to \'%s\'"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    aput-object v7, v4, v2

    iget-object v7, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    aput-object v7, v4, v5

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v4, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v3}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "NFC is not supported on this device"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_a
    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    const-string v6, "DISABLE_FOREGROUND_DISPATCH"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_c

    :try_start_6
    new-instance v0, Lcom/motorola/motocit/nfc/NFCTest$DisableForegroundDispatch;

    invoke-direct {v0, p0, v3}, Lcom/motorola/motocit/nfc/NFCTest$DisableForegroundDispatch;-><init>(Lcom/motorola/motocit/nfc/NFCTest;Lcom/motorola/motocit/nfc/NFCTest$1;)V

    monitor-enter v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :try_start_7
    invoke-virtual {p0, v0}, Lcom/motorola/motocit/nfc/NFCTest;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    nop

    iget-boolean v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->isDisableForegroundDispatchSuccess:Z

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "Activity \'%s\' has already been paused"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/motorola/motocit/CmdPassException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :catchall_1
    move-exception v3

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :catch_3
    move-exception v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "Activity \'%s\' does not have permission to \'%s\'"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    aput-object v7, v4, v2

    iget-object v7, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    aput-object v7, v4, v5

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v4, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v3}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "NFC is not supported on this device"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_d
    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    const-string v3, "READ_TAG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x3

    if-eqz v0, :cond_13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    if-ne v4, v3, :cond_10

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->lastNfcIntent:Landroid/content/Intent;

    if-eqz v3, :cond_10

    const-string v4, "android.nfc.extra.TAG"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/nfc/Tag;

    if-eqz v3, :cond_f

    invoke-direct {p0, v3}, Lcom/motorola/motocit/nfc/NFCTest;->parseTag(Landroid/nfc/Tag;)Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;

    move-result-object v1

    const-string v2, "TAG_DETECTED=YES"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TAG_TYPE="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->tagType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WRITABLE="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->isWritable:Z

    if-eqz v4, :cond_e

    const-string v4, "YES"

    goto :goto_1

    :cond_e
    const-string v4, "NO"

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MAX_SIZE="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->maxSize:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TNF_TYPE="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->tnfType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PAYLOAD_DATA="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->payloadData:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "getParcelableExtra for EXTRA_TAG returned NULL"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v5, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v5, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v5, v4}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NFC_ADAPTER_STATE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->lastNfcIntent:Landroid/content/Intent;

    if-nez v1, :cond_11

    const-string v1, "lastNfcIntent=null"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    const-string v1, "TAG_DETECTED=NO"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    new-instance v1, Lcom/motorola/motocit/CommServerDataPacket;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/nfc/NFCTest;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/motocit/CmdPassException;

    iget v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_13
    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    const-string v6, "WRITE_TAG"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    if-ne v0, v3, :cond_18

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->lastNfcIntent:Landroid/content/Intent;

    if-eqz v0, :cond_18

    const-string v3, "android.nfc.extra.TAG"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    if-eqz v0, :cond_17

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmdDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v5, :cond_16

    iget-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmdDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/motorola/motocit/nfc/NFCTest;->splitKeyValuePair(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v6, v4, v2

    aget-object v7, v4, v5

    const-string v8, "PAYLOAD_DATA"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-direct {p0, v0}, Lcom/motorola/motocit/nfc/NFCTest;->parseTag(Landroid/nfc/Tag;)Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;

    move-result-object v8

    iput-short v5, v8, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->tnfTypeShort:S

    const-string v9, "WELL_KNOWN"

    iput-object v9, v8, Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;->tnfType:Ljava/lang/String;

    invoke-direct {p0, v8, v7}, Lcom/motorola/motocit/nfc/NFCTest;->WriteTagPayload(Lcom/motorola/motocit/nfc/NFCTest$ParsedTagInfo;Ljava/lang/String;)V

    nop

    goto :goto_3

    :cond_14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UNKNOWN key: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v5, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v8, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v5, v8, v1}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/motocit/CmdPassException;

    iget v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "Activity \'%s\' contains no data for command \'%s\'"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    aput-object v7, v4, v2

    iget-object v7, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    aput-object v7, v4, v5

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v4, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v3}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_17
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "getParcelableExtra for EXTRA_TAG returned NULL"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v4, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v3}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "No NFC Tag detected"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_19
    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    const-string v6, "SET_SECURE_ELEMENT_ID"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmdDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1c

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmdDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/motorola/motocit/nfc/NFCTest;->splitKeyValuePair(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v8, v7, v2

    aget-object v9, v7, v5

    const-string v10, "SECURE_ELEMENT_ID"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1a

    move-object v0, v9

    goto :goto_4

    :cond_1a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v10, "Key \'%s\' is not supported for command \'%s\'"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v8, v4, v2

    iget-object v11, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    aput-object v11, v4, v5

    invoke-static {v10, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v4, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v3}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_1b
    nop

    :try_start_a
    sget-object v1, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapterSelectDefaultSecureElement:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    nop

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/motocit/CmdPassException;

    iget v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :catch_4
    move-exception v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "Activity \'%s\' failed to set secure element"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v5, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v3}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_1c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "Activity \'%s\' contains no data for command \'%s\'"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    aput-object v7, v4, v2

    iget-object v7, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    aput-object v7, v4, v5

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v4, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v3}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_1d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "NFC is not supported on this device"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_1e
    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    const-string v6, "GET_SECURE_ELEMENT_ID"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "NFC is not supported on this device"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_1f
    :try_start_b
    sget-object v0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapterGetDefaultSelectedSecureElement:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    nop

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SECURE_ELEMENT_ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CommServerDataPacket;

    iget v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/motorola/motocit/nfc/NFCTest;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/motocit/CmdPassException;

    iget v5, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v6, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v3}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v4

    :catch_5
    move-exception v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "Activity \'%s\' failed to get secure element"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_20
    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    const-string v6, "ENABLE_SECURE_ELEMENT_ID"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_21

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "NFC is not supported on this device"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_21
    :try_start_c
    sget-object v0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapterSetDefaultSecureElementState:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    nop

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/motorola/motocit/CmdPassException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :catch_6
    move-exception v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "Activity \'%s\' failed to enable secure element"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_22
    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    const-string v6, "DISABLE_SECURE_ELEMENT_ID"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_23

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "NFC is not supported on this device"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_23
    :try_start_d
    sget-object v0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapterSetDefaultSecureElementState:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    nop

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/motorola/motocit/CmdPassException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "Activity \'%s\' failed to disable secure element"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_24
    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    const-string v6, "SET_SWP_SIM"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_29

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmdDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_28

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmdDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/motorola/motocit/nfc/NFCTest;->splitKeyValuePair(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v9, v8, v2

    aget-object v10, v8, v5

    const-string v11, "SWP_SIM"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_25

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_5

    :cond_25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v11, "Key \'%s\' is not supported for command \'%s\'"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v2

    iget-object v12, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    aput-object v12, v4, v5

    invoke-static {v11, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v4, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_26
    nop

    :try_start_e
    sget-object v0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcSwpSwitchSetSWPSIM:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/motorola/motocit/nfc/NFCTest;->mNfcSwpSwitchInstance:Ljava/lang/Object;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    nop

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_27

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "Activity \'%s\' failed to set SWP SIM"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/motocit/CmdPassException;

    iget v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :catch_8
    move-exception v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "Activity \'%s\' failed to set SWP SIM. Exception = %s"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    aput-object v8, v4, v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "Activity \'%s\' contains no data for command \'%s\'"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    aput-object v8, v4, v2

    iget-object v8, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    aput-object v8, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "NFC is not supported on this device"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_2a
    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    const-string v6, "GET_SWP_SIM"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_2b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "NFC is not supported on this device"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_2b
    :try_start_f
    sget-object v0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcSwpSwitchGetSWPSIMStatus:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/motorola/motocit/nfc/NFCTest;->mNfcSwpSwitchInstance:Ljava/lang/Object;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    nop

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SWP_SIM="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CommServerDataPacket;

    iget v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/motorola/motocit/nfc/NFCTest;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/motocit/CmdPassException;

    iget v5, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v6, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v3}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v4

    :catch_9
    move-exception v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "Activity \'%s\' failed to get SWP SIM"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_2c
    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    const-string v6, "GET_DUAL_SWP_SIM_TEST_STATUS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    if-ne v0, v3, :cond_31

    const/4 v0, -0x1

    iget-object v6, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    const-string v7, "starting dual swp sim test"

    invoke-virtual {p0, v6, v7, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    :try_start_10
    iget-object v6, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    nop

    const-string v1, ""

    if-eqz v0, :cond_30

    if-eq v0, v5, :cond_2f

    if-eq v0, v4, :cond_2e

    if-ne v0, v3, :cond_2d

    const-string v1, "DUALSWP_STATUS_BOTH_FAIL"

    goto :goto_6

    :cond_2d
    const-string v1, "DUALSWP_STATUS_SWITCH_FAIL"

    goto :goto_6

    :cond_2e
    const-string v1, "DUALSWP_STATUS_SIM_2_FAIL"

    goto :goto_6

    :cond_2f
    const-string v1, "DUALSWP_STATUS_SIM_1_FAIL"

    goto :goto_6

    :cond_30
    const-string v1, "DUALSWP_STATUS_BOTH_PASS"

    :goto_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TEST_STATUS="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/motocit/CommServerDataPacket;

    iget v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v5, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    iget-object v6, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v3}, Lcom/motorola/motocit/nfc/NFCTest;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/motocit/CmdPassException;

    iget v6, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v7, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v4}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v5

    :catch_a
    move-exception v1

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error happened. "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x65

    invoke-virtual {p0, v3, v4, v6}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "Activity \'%s\' failed to get dual swp test status"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v5, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v3}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "NFC is not enabled"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "NFC is not supported on this device"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_33
    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    const-string v3, "help"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/motorola/motocit/nfc/NFCTest;->printHelp()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "%s help printed"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CmdPassException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "Activity \'%s\' does not recognize command \'%s\'"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    aput-object v6, v4, v2

    iget-object v6, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v1, Lcom/motorola/motocit/CmdFailException;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "NFC_Test"

    iput-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/motorola/motocit/Test_Base;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f080048

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/nfc/NFCTest;->adjustViewDisplayArea(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->mGestureListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->mGestureListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    const v1, 0x7f06011d

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/nfc/NFCTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->nfcDetectedTagTextView:Landroid/widget/TextView;

    const v1, 0x7f06011e

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/nfc/NFCTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->nfcMaxSizeTextView:Landroid/widget/TextView;

    const v1, 0x7f060122

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/nfc/NFCTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->nfcTagTypeTextView:Landroid/widget/TextView;

    const v1, 0x7f06011f

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/nfc/NFCTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->nfcReadWriteTextView:Landroid/widget/TextView;

    const v1, 0x7f060121

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/nfc/NFCTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->nfcTagStatusTextView:Landroid/widget/TextView;

    const v1, 0x7f060123

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/nfc/NFCTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->nfcTnfTextView:Landroid/widget/TextView;

    const v1, 0x7f060120

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/nfc/NFCTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->nfcResultTextView:Landroid/widget/TextView;

    const v1, 0x7f060124

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/nfc/NFCTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->mWriteTagEditText:Landroid/widget/EditText;

    const v1, 0x7f06013b

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/nfc/NFCTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->mReadWriteCheckBox:Landroid/widget/CheckBox;

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x2000000

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->mOriginalNFCState:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/motorola/motocit/nfc/NFCTest;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sput-object v1, Lcom/motorola/motocit/nfc/NFCTest;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-static {}, Lcom/motorola/motocit/nfc/NFCTest;->initializeNfcAdapterSecureElementMethods()V

    invoke-static {}, Lcom/motorola/motocit/nfc/NFCTest;->initializeNfcSwpSwitchMethods()V

    invoke-virtual {p0}, Lcom/motorola/motocit/nfc/NFCTest;->wasActivityStartedByCommServer()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/motorola/motocit/nfc/NFCTest;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Please activate NFC and press Back to return to the application!"

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/motorola/motocit/nfc/NFCTest;->startActivity(Landroid/content/Intent;)V

    :goto_0
    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->nfcTagStatusTextView:Landroid/widget/TextView;

    const-string v3, "NFC NOT SUPPORTED ON THIS DEVICE!"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->isNFCIdentify:Z

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->mReadWriteCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/motorola/motocit/nfc/NFCTest$1;

    invoke-direct {v2, p0}, Lcom/motorola/motocit/nfc/NFCTest$1;-><init>(Lcom/motorola/motocit/nfc/NFCTest;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8

    invoke-virtual {p0}, Lcom/motorola/motocit/nfc/NFCTest;->wasActivityStartedByCommServer()Z

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

    iget-boolean v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->isNFCIdentify:Z

    if-nez v0, :cond_1

    const-string v0, "Please, place NFC Card before approving."

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v7

    :cond_1
    const-string v0, "NFC Test:  PASS\r\n\r\n"

    invoke-virtual {p0, v5, v0, v4}, Lcom/motorola/motocit/nfc/NFCTest;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    const-string v4, "PASS"

    invoke-virtual {p0, v0, v4, v6, v6}, Lcom/motorola/motocit/nfc/NFCTest;->logTestResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    :try_start_0
    invoke-static {v2, v3, v7}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    invoke-virtual {p0, v7}, Lcom/motorola/motocit/nfc/NFCTest;->systemExitWrapper(I)V

    goto :goto_2

    :cond_2
    const/16 v0, 0x18

    if-ne p1, v0, :cond_3

    const-string v0, "NFC Test:  FAILED\r\n\r\n"

    invoke-virtual {p0, v5, v0, v4}, Lcom/motorola/motocit/nfc/NFCTest;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    const-string v4, "FAIL"

    invoke-virtual {p0, v0, v4, v6, v6}, Lcom/motorola/motocit/nfc/NFCTest;->logTestResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    :try_start_1
    invoke-static {v2, v3, v7}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    invoke-virtual {p0, v7}, Lcom/motorola/motocit/nfc/NFCTest;->systemExitWrapper(I)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const-string v0, "Seq"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/nfc/NFCTest;->modeCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/nfc/NFCTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v7

    :cond_4
    invoke-virtual {p0, v7}, Lcom/motorola/motocit/nfc/NFCTest;->systemExitWrapper(I)V

    :cond_5
    :goto_2
    return v1

    :cond_6
    :goto_3
    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "PASS"

    iget-object v4, v1, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    const-string v5, "onNewIntent()"

    const/16 v6, 0x69

    invoke-virtual {v1, v4, v5, v6}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1e

    const-string v7, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "android.nfc.action.TECH_DISCOVERED"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v17, v4

    goto/16 :goto_17

    :cond_1
    :goto_0
    const/4 v8, 0x1

    :try_start_0
    iget-object v9, v1, Lcom/motorola/motocit/nfc/NFCTest;->mNfcTagLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    iput-object v2, v1, Lcom/motorola/motocit/nfc/NFCTest;->lastNfcIntent:Landroid/content/Intent;

    iget-object v9, v1, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    const-string v10, "onNewIntent() save NDEF_DISCOVERED intent for later"

    invoke-virtual {v1, v9, v10, v6}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iput-boolean v8, v1, Lcom/motorola/motocit/nfc/NFCTest;->mSawNFCIntent:Z

    iput-boolean v8, v1, Lcom/motorola/motocit/nfc/NFCTest;->isNFCIdentify:Z

    iget-object v9, v1, Lcom/motorola/motocit/nfc/NFCTest;->nfcTagStatusTextView:Landroid/widget/TextView;

    const-string v10, "TAG FOUND!"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v1, Lcom/motorola/motocit/nfc/NFCTest;->mWriteTagEditText:Landroid/widget/EditText;

    invoke-virtual {v9, v5}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v9, v1, Lcom/motorola/motocit/nfc/NFCTest;->mReadWriteCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v9, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v9, v1, Lcom/motorola/motocit/nfc/NFCTest;->nfcResultTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v9, v1, Lcom/motorola/motocit/nfc/NFCTest;->nfcResultTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v1, Lcom/motorola/motocit/nfc/NFCTest;->nfcResultTextView:Landroid/widget/TextView;

    const v10, -0xff0100

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v9, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    const-string v10, "android.nfc.extra.TAG"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/nfc/Tag;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v10, :cond_2

    iget-object v3, v1, Lcom/motorola/motocit/nfc/NFCTest;->mNfcTagLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_2
    if-eqz v9, :cond_3

    :try_start_1
    iget-object v11, v1, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onNewIntent() rawMsgs = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12, v6}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v17, v4

    goto/16 :goto_16

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v17, v4

    goto/16 :goto_13

    :cond_3
    :goto_1
    :try_start_2
    iget-object v11, v1, Lcom/motorola/motocit/nfc/NFCTest;->nfcDetectedTagTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/nfc/Tag;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v10}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v12, "T"

    const-string v14, "UTF-8"

    if-eqz v11, :cond_5

    :try_start_3
    invoke-virtual {v11}, Landroid/nfc/tech/Ndef;->connect()V

    iget-object v15, v1, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    const-string v7, "onNewIntent() ndef connect"

    invoke-virtual {v1, v15, v7, v6}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-virtual {v11}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v1, Lcom/motorola/motocit/nfc/NFCTest;->nfcReadWriteTextView:Landroid/widget/TextView;

    const-string v7, "READ/WRITE = READ"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    iget-object v6, v1, Lcom/motorola/motocit/nfc/NFCTest;->nfcReadWriteTextView:Landroid/widget/TextView;

    const-string v7, "READ/WRITE = WRITE"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v6, v1, Lcom/motorola/motocit/nfc/NFCTest;->nfcMaxSizeTextView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Max Size = "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v1, Lcom/motorola/motocit/nfc/NFCTest;->nfcTagTypeTextView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "TAG Type = "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/nfc/tech/Ndef;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v17, v4

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v17, v4

    goto/16 :goto_6

    :cond_5
    :try_start_4
    invoke-static {v10}, Landroid/nfc/tech/NdefFormatable;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NdefFormatable;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/nfc/tech/NdefFormatable;->connect()V

    iget-object v15, v1, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    const-string v5, "onNewIntent() ndefFormatable connect"

    invoke-virtual {v1, v15, v5, v6}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    move-object v5, v12

    const-string v15, "enBLANK CARD"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v16
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v17, v16

    const/16 v16, 0x0

    :try_start_5
    invoke-virtual {v15, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    move-object/from16 v16, v18

    iget-object v13, v1, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNewIntent() dataBytes = "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x69

    invoke-virtual {v1, v13, v6, v8}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v6, v0

    :try_start_6
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_3
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    const/4 v8, 0x1

    add-int/2addr v6, v8

    new-array v6, v6, [B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v16, :cond_6

    const/4 v8, 0x2

    const/4 v13, 0x0

    :try_start_7
    aput-byte v8, v6, v13

    const/4 v8, 0x1

    :goto_4
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    if-gt v8, v13, :cond_6

    add-int/lit8 v13, v8, -0x1

    aget-byte v13, v16, v13

    aput-byte v13, v6, v8
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    :try_start_8
    new-instance v8, Landroid/nfc/NdefRecord;

    const/4 v13, 0x0

    new-array v2, v13, [B
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v13, v17

    move-object/from16 v17, v4

    const/4 v4, 0x1

    :try_start_9
    invoke-direct {v8, v4, v13, v2, v6}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    move-object v2, v8

    new-instance v8, Landroid/nfc/NdefMessage;

    move-object/from16 v19, v5

    new-array v5, v4, [Landroid/nfc/NdefRecord;

    const/4 v4, 0x0

    aput-object v2, v5, v4

    invoke-direct {v8, v5}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    move-object v4, v8

    invoke-virtual {v7, v4}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;)V

    iget-object v5, v1, Lcom/motorola/motocit/nfc/NFCTest;->nfcTagTypeTextView:Landroid/widget/TextView;

    const-string v8, "TAG WAS FORMATTED WITH: BLANK CARD"

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Landroid/nfc/tech/NdefFormatable;->isConnected()Z

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_8

    invoke-virtual {v7}, Landroid/nfc/tech/NdefFormatable;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v2, v0

    goto :goto_6

    :cond_7
    move-object/from16 v17, v4

    :cond_8
    :goto_5
    goto :goto_7

    :catch_4
    move-exception v0

    move-object/from16 v17, v4

    move-object v2, v0

    :goto_6
    :try_start_a
    iget-object v4, v1, Lcom/motorola/motocit/nfc/NFCTest;->nfcMaxSizeTextView:Landroid/widget/TextView;

    const-string v5, "FAILED TO READ TAG"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/motorola/motocit/nfc/NFCTest;->lastNfcIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    iget-boolean v2, v1, Lcom/motorola/motocit/nfc/NFCTest;->mReadWriteCheck:Z

    if-nez v2, :cond_16

    const/4 v2, 0x0

    if-eqz v9, :cond_15

    array-length v4, v9

    if-eqz v4, :cond_14

    array-length v4, v9

    new-array v4, v4, [Landroid/nfc/NdefMessage;

    move-object v2, v4

    const/4 v4, 0x0

    :goto_8
    array-length v5, v9

    if-ge v4, v5, :cond_9

    aget-object v5, v9, v4

    check-cast v5, Landroid/nfc/NdefMessage;

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_9
    const/4 v4, 0x0

    aget-object v5, v2, v4

    invoke-virtual {v5}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_a

    const-string v4, "TNF = ABSOLUTE_URI"

    goto/16 :goto_9

    :cond_a
    const/4 v4, 0x0

    aget-object v5, v2, v4

    invoke-virtual {v5}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "TNF = EMPTY"

    goto/16 :goto_9

    :cond_b
    const/4 v4, 0x0

    aget-object v5, v2, v4

    invoke-virtual {v5}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_c

    const-string v4, "TNF = EXTERNAL_TYPE"

    goto :goto_9

    :cond_c
    const/4 v4, 0x0

    aget-object v5, v2, v4

    invoke-virtual {v5}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_d

    const-string v4, "TNF = MIME_MEDIA"

    goto :goto_9

    :cond_d
    const/4 v4, 0x0

    aget-object v5, v2, v4

    invoke-virtual {v5}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_e

    const-string v4, "TNF = RESERVED"

    goto :goto_9

    :cond_e
    const/4 v4, 0x0

    aget-object v5, v2, v4

    invoke-virtual {v5}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_f

    const-string v4, "TNF = UNCHANGED"

    goto :goto_9

    :cond_f
    const/4 v4, 0x0

    aget-object v5, v2, v4

    invoke-virtual {v5}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_10

    const-string v4, "TNF = UNKNOWN"

    goto :goto_9

    :cond_10
    const/4 v4, 0x0

    aget-object v5, v2, v4

    invoke-virtual {v5}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    const-string v4, "TNF = WELL_KNOWN"

    goto :goto_9

    :cond_11
    const-string v4, "TNG = ERROR"

    :goto_9
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-object v7, v2, v6

    invoke-virtual {v7}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_13

    aget-object v7, v2, v6

    invoke-virtual {v7}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v7

    aget-byte v8, v7, v6

    and-int/lit16 v6, v8, 0x80

    if-nez v6, :cond_12

    goto :goto_a

    :cond_12
    const-string v14, "UTF-16"

    :goto_a
    move-object v6, v14

    const/4 v8, 0x0

    aget-byte v12, v7, v8
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    and-int/lit8 v8, v12, 0x3f

    :try_start_b
    new-instance v12, Ljava/lang/String;

    add-int/lit8 v13, v8, 0x1

    array-length v14, v7

    sub-int/2addr v14, v8

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    invoke-direct {v12, v7, v13, v14, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object v5, v12

    goto :goto_b

    :catch_5
    move-exception v0

    move-object v12, v0

    :try_start_c
    invoke-virtual {v12}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_b
    goto :goto_c

    :cond_13
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    invoke-virtual {v8}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-virtual {v8}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    move-object v5, v6

    :goto_c
    iget-object v6, v1, Lcom/motorola/motocit/nfc/NFCTest;->nfcTnfTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v1, Lcom/motorola/motocit/nfc/NFCTest;->mWriteTagEditText:Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v1, Lcom/motorola/motocit/nfc/NFCTest;->mWriteTagEditText:Landroid/widget/EditText;

    const/high16 v7, -0x1000000

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_d

    :cond_14
    iget-object v4, v1, Lcom/motorola/motocit/nfc/NFCTest;->nfcTnfTextView:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/motorola/motocit/nfc/NFCTest;->mWriteTagEditText:Landroid/widget/EditText;

    const-string v5, "EMPTY_TAG!"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/motorola/motocit/nfc/NFCTest;->mWriteTagEditText:Landroid/widget/EditText;

    const/high16 v5, -0x10000

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTextColor(I)V

    :cond_15
    :goto_d
    goto/16 :goto_11

    :cond_16
    move-object v2, v12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "en"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/motorola/motocit/nfc/NFCTest;->mWriteTagEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    const/4 v6, 0x0

    :try_start_d
    invoke-virtual {v4, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-object v6, v7

    goto :goto_e

    :catch_6
    move-exception v0

    move-object v7, v0

    :try_start_e
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_e
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    new-array v7, v7, [B

    if-eqz v6, :cond_17

    const/4 v8, 0x2

    const/4 v12, 0x0

    aput-byte v8, v7, v12

    const/4 v8, 0x1

    :goto_f
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    array-length v12, v12

    if-gt v8, v12, :cond_17

    add-int/lit8 v12, v8, -0x1

    aget-byte v12, v6, v12

    aput-byte v12, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_17
    new-instance v8, Landroid/nfc/NdefRecord;

    const/4 v12, 0x0

    new-array v13, v12, [B

    const/4 v12, 0x1

    invoke-direct {v8, v12, v5, v13, v7}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    new-instance v13, Landroid/nfc/NdefMessage;

    new-array v14, v12, [Landroid/nfc/NdefRecord;

    const/4 v12, 0x0

    aput-object v8, v14, v12

    invoke-direct {v13, v14}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    move-object v12, v13

    invoke-virtual {v12}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v13

    array-length v13, v13

    if-eqz v11, :cond_1a

    invoke-virtual {v11}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result v14

    if-nez v14, :cond_18

    iget-object v14, v1, Lcom/motorola/motocit/nfc/NFCTest;->mWriteTagEditText:Landroid/widget/EditText;

    const-string v15, "Tag is read-only."

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_18
    invoke-virtual {v11}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v14

    if-ge v14, v13, :cond_19

    iget-object v14, v1, Lcom/motorola/motocit/nfc/NFCTest;->mWriteTagEditText:Landroid/widget/EditText;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    const-string v2, "Tag capacity is "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes, message is "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes."

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_19
    move-object/from16 v16, v2

    :goto_10
    invoke-virtual {v11}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v11}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-gt v13, v2, :cond_1b

    :try_start_f
    invoke-virtual {v11, v12}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    const-string v2, "Wrote message to pre-formatted tag."

    const/4 v14, 0x0

    invoke-static {v1, v2, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_11

    :catch_7
    move-exception v0

    move-object v2, v0

    :try_start_10
    const-string v14, "FAILED TO WRITE TAG"

    const/4 v15, 0x0

    invoke-static {v1, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto :goto_11

    :cond_1a
    move-object/from16 v16, v2

    :cond_1b
    :goto_11
    if-eqz v11, :cond_1c

    invoke-virtual {v11}, Landroid/nfc/tech/Ndef;->isConnected()Z

    move-result v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1c

    :try_start_11
    invoke-virtual {v11}, Landroid/nfc/tech/Ndef;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_12

    :catch_8
    move-exception v0

    move-object v2, v0

    :try_start_12
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :cond_1c
    :goto_12
    iget-object v2, v1, Lcom/motorola/motocit/nfc/NFCTest;->mNfcTagLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_14

    :catch_9
    move-exception v0

    move-object v2, v0

    goto :goto_13

    :catchall_1
    move-exception v0

    move-object/from16 v17, v4

    move-object v2, v0

    goto :goto_16

    :catch_a
    move-exception v0

    move-object/from16 v17, v4

    move-object v2, v0

    :goto_13
    :try_start_13
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    iget-object v2, v1, Lcom/motorola/motocit/nfc/NFCTest;->mNfcTagLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    nop

    :goto_14
    invoke-static {}, Lcom/motorola/motocit/TestUtils;->getTestMode()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SEQUENCE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-static {}, Lcom/motorola/motocit/TestUtils;->getTestMode()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MMI"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_1d
    iget-boolean v2, v1, Lcom/motorola/motocit/nfc/NFCTest;->isNFCIdentify:Z

    if-eqz v2, :cond_1f

    iget-boolean v2, v1, Lcom/motorola/motocit/nfc/NFCTest;->isRecord:Z

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/motorola/motocit/nfc/NFCTest;->isRecord:Z

    const v2, 0x8000

    const-string v4, "testresult.txt"

    const-string v5, "NFC Test:  PASS\r\n\r\n"

    invoke-virtual {v1, v4, v5, v2}, Lcom/motorola/motocit/nfc/NFCTest;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, v1, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/motorola/motocit/nfc/NFCTest;->logTestResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    :try_start_14
    invoke-static {v2, v3, v4}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_b

    goto :goto_15

    :catch_b
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_15
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/motocit/nfc/NFCTest;->systemExitWrapper(I)V

    goto :goto_18

    :catchall_2
    move-exception v0

    move-object v2, v0

    :goto_16
    iget-object v3, v1, Lcom/motorola/motocit/nfc/NFCTest;->mNfcTagLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    :cond_1e
    move-object/from16 v17, v4

    :goto_17
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/motorola/motocit/nfc/NFCTest;->mSawNFCIntent:Z

    invoke-super/range {p0 .. p1}, Lcom/motorola/motocit/Test_Base;->onNewIntent(Landroid/content/Intent;)V

    :cond_1f
    :goto_18
    return-void
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onPause()V

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    const/16 v1, 0x69

    const-string v2, "onPause() disableForegroundDispatch"

    invoke-virtual {p0, v0, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/motocit/nfc/NFCTest;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mOriginalNFCState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/motorola/motocit/nfc/NFCTest;->nfcAdapterDisable()Z
    :try_end_0
    .catch Lcom/motorola/motocit/CmdFailException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/motorola/motocit/CmdFailException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onResume()V

    iget-boolean v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mSawNFCIntent:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/motocit/nfc/NFCTest;->sendStartActivityPassed()V

    :cond_0
    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    const/16 v1, 0x69

    const-string v2, "onResume() enableForegroundDispatch"

    invoke-virtual {p0, v0, v2, v1}, Lcom/motorola/motocit/nfc/NFCTest;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->mNfcPendingIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, v2}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onStart()V

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

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/nfc/NFCTest;->modeCheck(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/nfc/NFCTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/motorola/motocit/nfc/NFCTest;->systemExitWrapper(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSwipeLeft()Z
    .locals 3

    const-string v0, "testresult.txt"

    const-string v1, "NFC Test:  PASS\r\n\r\n"

    const v2, 0x8000

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/nfc/NFCTest;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    const-string v1, "PASS"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/motorola/motocit/nfc/NFCTest;->logTestResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

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
    invoke-virtual {p0, v2}, Lcom/motorola/motocit/nfc/NFCTest;->systemExitWrapper(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSwipeRight()Z
    .locals 3

    const-string v0, "testresult.txt"

    const-string v1, "NFC Test:  FAILED\r\n\r\n"

    const v2, 0x8000

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/nfc/NFCTest;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    const-string v1, "FAIL"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/motorola/motocit/nfc/NFCTest;->logTestResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

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
    invoke-virtual {p0, v2}, Lcom/motorola/motocit/nfc/NFCTest;->systemExitWrapper(I)V

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

    iget-object v1, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "This function will read and write an NFC tag"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/motorola/motocit/nfc/NFCTest;->getBaseHelp()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v1, "Activity Specific Commands"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "  ENABLE_NFC    - Enables NFC adapter"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "  DISABLE_NFC   - Disables NFC adapter"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "  GET_NFC_STATE - Returns the state of NFC adapter"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "  ENABLE_FOREGROUND_DISPATCH  - Enable sending of tags to this activity when it\'s in the foreground"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "  DISABLE_FOREGROUND_DISPATCH - Disable sending of tags to this activity when it\'s in the foreground"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "  READ_TAG      - Return information on most recently detected tag"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "    TAG_DETECTED - YES or NO"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "    TAG_TYPE     - NDEF tag type"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "    WRITABLE     - YES or NO"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "    MAX_SIZE     - Maximum NDEF message size in bytes"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "    TNF_TYPE     - NDEF TNF type"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "    PAYLOAD_DATA - NDEF payload data"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "  WRITE_TAG      - Write specified payload data to tag"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "    PAYLOAD_DATA - NDEF payload data to write"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "  SET_SECURE_ELEMENT_ID      - Set the default secure element ID"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "    SECURE_ELEMENT_ID - Element ID to set as default"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "  GET_SECURE_ELEMENT_ID      - Get the default secure element ID"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "  ENABLE_SECURE_ELEMENT_ID   - Enable the default secure element ID"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "  DISABLE_SECURE_ELEMENT_ID  - Disable the default secure element ID"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "  SET_SWP_SIM      - Set the SIM card to use for secure element"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "    SWP_SIM - ID of SIM Card to select"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "  GET_SWP_SIM      - Get SIM Card currently in use for secure element"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "  GET_DUAL_SWP_SIM_TEST_STATUS      - Get dual swp sim test status"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CommServerDataPacket;

    iget v2, p0, Lcom/motorola/motocit/nfc/NFCTest;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/nfc/NFCTest;->strRxCmd:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/motocit/nfc/NFCTest;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/nfc/NFCTest;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    return-void
.end method
