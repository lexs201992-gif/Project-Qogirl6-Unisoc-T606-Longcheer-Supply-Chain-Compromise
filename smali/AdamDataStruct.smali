.class public Lcom/motorola/bach/modemstats/AdamDataStruct;
.super Ljava/lang/Object;
.source "AdamDataStruct.java"


# static fields
.field private static final HEADER_02:I = 0x2c0ffee

.field private static final HEADER_03:I = 0x3c0ffee

.field private static final HEADER_04:I = 0x4c0ffee

.field private static final HEADER_05:I = 0x6c0ffee

.field private static final HEADER_06:I = 0x7c0ffee

.field public static final LTE_REG_FAIL:I = 0x8c0ffee

.field public static final LTE_REG_FAIL_LEN:I = 0x18

.field private static final TAG:Ljava/lang/String; = "AdamDataStruct"


# instance fields
.field private final items02:[[Ljava/lang/String;

.field private final items03:[[Ljava/lang/String;

.field private final items04:[[Ljava/lang/String;

.field private final items05:[[Ljava/lang/String;

.field private final items06:[[Ljava/lang/String;

.field private mHeader:I

.field private mItems:[[Ljava/lang/String;

.field private mSegments:[[Ljava/lang/String;

.field private final segments02:[[Ljava/lang/String;

.field private final segments03:[[Ljava/lang/String;

.field private final segments04:[[Ljava/lang/String;

.field private final segments05:[[Ljava/lang/String;

.field private final segments06:[[Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 33

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const v2, 0x2c0ffee

    iput v2, v0, Lcom/motorola/bach/modemstats/AdamDataStruct;->mHeader:I

    const/4 v2, 0x1

    new-array v3, v2, [[Ljava/lang/String;

    const-string v4, "MOT_LTE_CELL_STAT"

    const-string v5, "120"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iput-object v3, v0, Lcom/motorola/bach/modemstats/AdamDataStruct;->segments02:[[Ljava/lang/String;

    const/16 v4, 0x78

    new-array v4, v4, [[Ljava/lang/String;

    const-string v6, "cellSel"

    const-string v7, "8"

    const-string v8, "1"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const-string v9, "cellResel"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v2

    const-string v9, "cellHO"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v4, v10

    const-string v9, "cellRedir"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x3

    aput-object v9, v4, v11

    const-string v9, "sFail"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x4

    aput-object v9, v4, v12

    const-string v9, "sibRdF"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x5

    aput-object v9, v4, v13

    const-string v9, "dlWeak"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x6

    aput-object v9, v4, v14

    const-string v9, "cellBarr"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/4 v15, 0x7

    aput-object v9, v4, v15

    const-string v9, "nonEqPlmn"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x8

    aput-object v9, v4, v16

    const-string v9, "forbiddenTA"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v15, 0x9

    aput-object v9, v4, v15

    const-string v9, "abort"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v18, 0xa

    aput-object v9, v4, v18

    const-string v9, "forbiddenCsg"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v19, 0xb

    aput-object v9, v4, v19

    const-string v9, "iRatResel"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v20, 0xc

    aput-object v9, v4, v20

    const-string v9, "freqBarred"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v14, 0xd

    aput-object v9, v4, v14

    const-string v9, "hoNone"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0xe

    aput-object v9, v4, v22

    const-string v9, "hoInvalidCfg"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0xf

    aput-object v9, v4, v22

    const-string v9, "hoCphy"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x10

    aput-object v9, v4, v22

    const-string v9, "hoRach"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x11

    aput-object v9, v4, v22

    const-string v9, "hoRachMeas"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x12

    aput-object v9, v4, v22

    const-string v9, "mib"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x13

    aput-object v9, v4, v22

    const-string v9, "sib1"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x14

    aput-object v9, v4, v22

    const-string v9, "sib2"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x15

    aput-object v9, v4, v22

    const-string v9, "sib3"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x16

    aput-object v9, v4, v22

    const-string v9, "sib4"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x17

    aput-object v9, v4, v22

    const-string v9, "sib5"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x18

    aput-object v9, v4, v22

    const-string v9, "sib6"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x19

    aput-object v9, v4, v22

    const-string v9, "sib7"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x1a

    aput-object v9, v4, v22

    const-string v9, "sib8"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x1b

    aput-object v9, v4, v22

    const-string v9, "sib9"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x1c

    aput-object v9, v4, v22

    const-string v9, "sib10"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x1d

    aput-object v9, v4, v22

    const-string v9, "sib11"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x1e

    aput-object v9, v4, v22

    const-string v9, "sib12"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x1f

    aput-object v9, v4, v22

    const-string v9, "sib13"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x20

    aput-object v9, v4, v22

    const-string v9, "attachAccpt"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x21

    aput-object v9, v4, v22

    const-string v9, "attachRej"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x22

    aput-object v9, v4, v22

    const-string v9, "inDettachReq"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x23

    aput-object v9, v4, v22

    const-string v9, "dettachRej"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x24

    aput-object v9, v4, v22

    const-string v9, "tauAccpt"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x25

    aput-object v9, v4, v22

    const-string v9, "tauRej"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x26

    aput-object v9, v4, v22

    const-string v9, "servRej"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x27

    aput-object v9, v4, v22

    const-string v9, "gutiReloc"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x28

    aput-object v9, v4, v22

    const-string v9, "authReq"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x29

    aput-object v9, v4, v22

    const-string v9, "authRej"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x2a

    aput-object v9, v4, v22

    const-string v9, "identReq"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x2b

    aput-object v9, v4, v22

    const-string v9, "securMode"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x2c

    aput-object v9, v4, v22

    const-string v9, "emmInfo"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x2d

    aput-object v9, v4, v22

    const-string v9, "dlNasResp"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x2e

    aput-object v9, v4, v22

    const-string v9, "csServNot"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x2f

    aput-object v9, v4, v22

    const-string v9, "dlGenNas"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x30

    aput-object v9, v4, v22

    const-string v9, "attachReq"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x31

    aput-object v9, v4, v22

    const-string v9, "attachComp"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x32

    aput-object v9, v4, v22

    const-string v9, "outDettachReq"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x33

    aput-object v9, v4, v22

    const-string v9, "dettachAccpt"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x34

    aput-object v9, v4, v22

    const-string v9, "tauReq"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x35

    aput-object v9, v4, v22

    const-string v9, "tauComp"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x36

    aput-object v9, v4, v22

    const-string v9, "servReq"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x37

    aput-object v9, v4, v22

    const-string v9, "gutiRelocComp"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x38

    aput-object v9, v4, v22

    const-string v9, "authRsp"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x39

    aput-object v9, v4, v22

    const-string v9, "identRsp"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x3a

    aput-object v9, v4, v22

    const-string v9, "authRail"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x3b

    aput-object v9, v4, v22

    const-string v9, "securModeComp"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x3c

    aput-object v9, v4, v22

    const-string v9, "securModeRej"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x3d

    aput-object v9, v4, v22

    const-string v9, "emmStatus"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x3e

    aput-object v9, v4, v22

    const-string v9, "dlNasTrans"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x3f

    aput-object v9, v4, v22

    const-string v9, "dlGenNasTrans"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x40

    aput-object v9, v4, v22

    const-string v9, "defBrerCnxReq"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x41

    aput-object v9, v4, v22

    const-string v9, "dedBrerCnxReq"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x42

    aput-object v9, v4, v22

    const-string v9, "modBrerCnxReq"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x43

    aput-object v9, v4, v22

    const-string v9, "deaBrerCnxReq"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x44

    aput-object v9, v4, v22

    const-string v9, "pdnConnRej"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x45

    aput-object v9, v4, v22

    const-string v9, "pdnDisRej"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x46

    aput-object v9, v4, v22

    const-string v9, "brerResAlcRej"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x47

    aput-object v9, v4, v22

    const-string v9, "brerResModRej"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x48

    aput-object v9, v4, v22

    const-string v9, "esmInfoReq"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x49

    aput-object v9, v4, v22

    const-string v9, "esmNotf"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x4a

    aput-object v9, v4, v22

    const-string v9, "actDefBrerAccp"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x4b

    aput-object v9, v4, v22

    const-string v9, "actDefBrerRej"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x4c

    aput-object v9, v4, v22

    const-string v9, "actDedBrerAccp"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x4d

    aput-object v9, v4, v22

    const-string v9, "actDedBrerRej"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x4e

    aput-object v9, v4, v22

    const-string v9, "modBrerAccp"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x4f

    aput-object v9, v4, v22

    const-string v9, "modBrerRej"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x50

    aput-object v9, v4, v22

    const-string v9, "deaBrerRej"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x51

    aput-object v9, v4, v22

    const-string v9, "pdConnReq"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x52

    aput-object v9, v4, v22

    const-string v9, "pdDisReq"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x53

    aput-object v9, v4, v22

    const-string v9, "brerResAllcReq"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x54

    aput-object v9, v4, v22

    const-string v9, "brerResModReq"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x55

    aput-object v9, v4, v22

    const-string v9, "esmInfoResp"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x56

    aput-object v9, v4, v22

    const-string v9, "esmStatus"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x57

    aput-object v9, v4, v22

    const-string v9, "rlfCfgFail"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x58

    aput-object v9, v4, v22

    const-string v9, "rlfHoFail"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x59

    aput-object v9, v4, v22

    const-string v9, "rlfGen"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x5a

    aput-object v9, v4, v22

    const-string v9, "rlfRachProb"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x5b

    aput-object v9, v4, v22

    const-string v9, "rlfMaxRetx"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x5c

    aput-object v9, v4, v22

    const-string v9, "rlfIpckFail"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x5d

    aput-object v9, v4, v22

    const-string v9, "rlfSibrdFail"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x5e

    aput-object v9, v4, v22

    const-string v9, "rlfOtherFail"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x5f

    aput-object v9, v4, v22

    const-string v9, "rrcInact"

    const-string v14, "16"

    filled-new-array {v9, v14, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v23, 0x60

    aput-object v9, v4, v23

    const-string v9, "rrcIdlNotcmp"

    filled-new-array {v9, v14, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v23, 0x61

    aput-object v9, v4, v23

    const-string v9, "rrcIdlCmp"

    filled-new-array {v9, v14, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v23, 0x62

    aput-object v9, v4, v23

    const-string v9, "rrcConning"

    filled-new-array {v9, v14, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v23, 0x63

    aput-object v9, v4, v23

    const-string v9, "rrcConnted"

    filled-new-array {v9, v14, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v23, 0x64

    aput-object v9, v4, v23

    const-string v9, "rrcSuspend"

    filled-new-array {v9, v14, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v23, 0x65

    aput-object v9, v4, v23

    const-string v9, "rrcToLte"

    filled-new-array {v9, v14, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v23, 0x66

    aput-object v9, v4, v23

    const-string v9, "rrcClsing"

    filled-new-array {v9, v14, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v23, 0x67

    aput-object v9, v4, v23

    const-string v9, "rachConnReq"

    filled-new-array {v9, v14, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v23, 0x68

    aput-object v9, v4, v23

    const-string v9, "rachRlf"

    filled-new-array {v9, v14, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v23, 0x69

    aput-object v9, v4, v23

    const-string v9, "rachUlArrv"

    filled-new-array {v9, v14, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v23, 0x6a

    aput-object v9, v4, v23

    const-string v9, "rachDlArrv"

    filled-new-array {v9, v14, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v23, 0x6b

    aput-object v9, v4, v23

    const-string v9, "rachHo"

    filled-new-array {v9, v14, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v23, 0x6c

    aput-object v9, v4, v23

    const-string v9, "dlBW"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v23, 0x6d

    aput-object v9, v4, v23

    const-string v9, "ulBW"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v23, 0x6e

    aput-object v9, v4, v23

    const-string v9, "servCellId"

    const-string v15, "32"

    filled-new-array {v9, v15, v8}, [Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x6f

    aput-object v24, v4, v25

    const-string v12, "lnkQual"

    filled-new-array {v12, v15, v8}, [Ljava/lang/String;

    move-result-object v12

    const/16 v25, 0x70

    aput-object v12, v4, v25

    const-string v12, "dlBitsRes"

    filled-new-array {v12, v15, v8}, [Ljava/lang/String;

    move-result-object v12

    const/16 v25, 0x71

    aput-object v12, v4, v25

    const-string v12, "ulDrain"

    filled-new-array {v12, v15, v8}, [Ljava/lang/String;

    move-result-object v12

    const/16 v25, 0x72

    aput-object v12, v4, v25

    const-string v12, "connCnt"

    filled-new-array {v12, v15, v8}, [Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x73

    aput-object v25, v4, v26

    const-string v11, "idlCnt"

    filled-new-array {v11, v15, v8}, [Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x74

    aput-object v26, v4, v27

    const-string v10, "ulCnt"

    filled-new-array {v10, v15, v8}, [Ljava/lang/String;

    move-result-object v10

    const/16 v27, 0x75

    aput-object v10, v4, v27

    const-string v10, "dlEarfcn"

    filled-new-array {v10, v14, v8}, [Ljava/lang/String;

    move-result-object v10

    const/16 v27, 0x76

    aput-object v10, v4, v27

    const-string v10, "ulEarfcn"

    filled-new-array {v10, v14, v8}, [Ljava/lang/String;

    move-result-object v10

    const/16 v27, 0x77

    aput-object v10, v4, v27

    iput-object v4, v0, Lcom/motorola/bach/modemstats/AdamDataStruct;->items02:[[Ljava/lang/String;

    new-array v10, v2, [[Ljava/lang/String;

    const-string v2, "MOT_LTE_EVENT"

    const-string v13, "5"

    filled-new-array {v2, v13}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v5

    iput-object v10, v0, Lcom/motorola/bach/modemstats/AdamDataStruct;->segments03:[[Ljava/lang/String;

    const/4 v2, 0x5

    new-array v13, v2, [[Ljava/lang/String;

    filled-new-array {v9, v15, v8}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v5

    const-string v2, "mnc"

    filled-new-array {v2, v14, v8}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v13, v5

    const-string v2, "mcc"

    filled-new-array {v2, v14, v8}, [Ljava/lang/String;

    move-result-object v2

    const/16 v26, 0x2

    aput-object v2, v13, v26

    const-string v2, "lnkQual"

    filled-new-array {v2, v15, v8}, [Ljava/lang/String;

    move-result-object v2

    const/16 v25, 0x3

    aput-object v2, v13, v25

    const-string v2, "evtID"

    filled-new-array {v2, v15, v8}, [Ljava/lang/String;

    move-result-object v2

    const/16 v24, 0x4

    aput-object v2, v13, v24

    iput-object v13, v0, Lcom/motorola/bach/modemstats/AdamDataStruct;->items03:[[Ljava/lang/String;

    new-array v2, v5, [[Ljava/lang/String;

    const-string v5, "MOT_LTE_VOIP_STATS"

    move-object/from16 v30, v4

    const-string v4, "9"

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    iput-object v2, v0, Lcom/motorola/bach/modemstats/AdamDataStruct;->segments04:[[Ljava/lang/String;

    const/16 v4, 0x9

    new-array v5, v4, [[Ljava/lang/String;

    const-string v4, "rrcCellId"

    filled-new-array {v4, v15, v8}, [Ljava/lang/String;

    move-result-object v4

    const/16 v29, 0x0

    aput-object v4, v5, v29

    const-string v4, "numRxRtp"

    filled-new-array {v4, v15, v8}, [Ljava/lang/String;

    move-result-object v4

    const/16 v27, 0x1

    aput-object v4, v5, v27

    const-string v4, "numRxLost"

    filled-new-array {v4, v15, v8}, [Ljava/lang/String;

    move-result-object v4

    const/16 v26, 0x2

    aput-object v4, v5, v26

    const-string v4, "avgRelJitter"

    filled-new-array {v4, v15, v8}, [Ljava/lang/String;

    move-result-object v4

    const/16 v25, 0x3

    aput-object v4, v5, v25

    const-string v4, "maxRelJitter"

    filled-new-array {v4, v15, v8}, [Ljava/lang/String;

    move-result-object v4

    const/16 v24, 0x4

    aput-object v4, v5, v24

    const-string v4, "avgFrDelay"

    filled-new-array {v4, v15, v8}, [Ljava/lang/String;

    move-result-object v4

    const/16 v28, 0x5

    aput-object v4, v5, v28

    const-string v4, "maxFrDelay"

    filled-new-array {v4, v15, v8}, [Ljava/lang/String;

    move-result-object v4

    const/16 v21, 0x6

    aput-object v4, v5, v21

    const-string v4, "sipCallDur"

    filled-new-array {v4, v14, v8}, [Ljava/lang/String;

    move-result-object v4

    const/16 v17, 0x7

    aput-object v4, v5, v17

    const-string v4, "spare"

    filled-new-array {v4, v14, v8}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v16

    iput-object v5, v0, Lcom/motorola/bach/modemstats/AdamDataStruct;->items04:[[Ljava/lang/String;

    move-object/from16 v31, v3

    const/4 v4, 0x1

    new-array v3, v4, [[Ljava/lang/String;

    const-string v4, "MOT_WCDMA_CELL_STAT"

    move-object/from16 v32, v13

    const-string v13, "65"

    filled-new-array {v4, v13}, [Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    aput-object v4, v3, v13

    iput-object v3, v0, Lcom/motorola/bach/modemstats/AdamDataStruct;->segments05:[[Ljava/lang/String;

    const/16 v4, 0x41

    new-array v4, v4, [[Ljava/lang/String;

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v13

    const-string v6, "cellResel"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x1

    aput-object v6, v4, v13

    const-string v6, "cellHO"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x2

    aput-object v6, v4, v13

    const-string v6, "cellRedir"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x3

    aput-object v6, v4, v13

    const-string v6, "cellOos"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x4

    aput-object v6, v4, v13

    const-string v6, "rrcCamp"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x5

    aput-object v6, v4, v13

    const-string v6, "rrcIntnl"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x6

    aput-object v6, v4, v13

    const-string v6, "rrcRedirFail"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x7

    aput-object v6, v4, v13

    const-string v6, "rrcAcc"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v16

    const-string v6, "rrcCng"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x9

    aput-object v6, v4, v13

    const-string v6, "rrcUnSpec"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v18

    const-string v6, "rrcUnsupUe"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v19

    const-string v6, "rrcNtAcc"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v20

    const-string v6, "rrcNtAvl"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0xd

    aput-object v6, v4, v13

    const-string v6, "rrcPcco"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0xe

    aput-object v6, v4, v13

    const-string v6, "rrcRes"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0xf

    aput-object v6, v4, v13

    const-string v6, "rrcAbrt"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x10

    aput-object v6, v4, v13

    const-string v6, "rrcNrml"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x11

    aput-object v6, v4, v13

    const-string v6, "rrcUnspec"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x12

    aput-object v6, v4, v13

    const-string v6, "rrcPreemp"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x13

    aput-object v6, v4, v13

    const-string v6, "rrcCngRel"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x14

    aput-object v6, v4, v13

    const-string v6, "rrcEstRej"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x15

    aput-object v6, v4, v13

    const-string v6, "rrcUsrInact"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x16

    aput-object v6, v4, v13

    const-string v6, "rrcFde"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x17

    aput-object v6, v4, v13

    const-string v6, "rrcSgnl"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x18

    aput-object v6, v4, v13

    const-string v6, "rrcOos"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x19

    aput-object v6, v4, v13

    const-string v6, "rrcDorm"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x1a

    aput-object v6, v4, v13

    const-string v6, "rrcDormAbrt"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x1b

    aput-object v6, v4, v13

    const-string v6, "rrcPsabrt"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x1c

    aput-object v6, v4, v13

    const-string v6, "rrcDiscon"

    filled-new-array {v6, v14, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x1d

    aput-object v6, v4, v13

    const-string v6, "rrcConn"

    filled-new-array {v6, v14, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x1e

    aput-object v6, v4, v13

    const-string v6, "rrcFach"

    filled-new-array {v6, v14, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x1f

    aput-object v6, v4, v13

    const-string v6, "rrcDch"

    filled-new-array {v6, v14, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x20

    aput-object v6, v4, v13

    const-string v6, "rrcPch"

    filled-new-array {v6, v14, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x21

    aput-object v6, v4, v13

    const-string v6, "rrcUraPch"

    filled-new-array {v6, v14, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x22

    aput-object v6, v4, v13

    const-string v6, "ulUarfcn"

    filled-new-array {v6, v15, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x23

    aput-object v6, v4, v13

    const-string v6, "dlUarfcn"

    filled-new-array {v6, v15, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x24

    aput-object v6, v4, v13

    filled-new-array {v12, v15, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x25

    aput-object v6, v4, v13

    filled-new-array {v11, v15, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x26

    aput-object v6, v4, v13

    const-string v6, "rrcFail"

    filled-new-array {v6, v15, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x27

    aput-object v6, v4, v13

    const-string v6, "reacqFail"

    filled-new-array {v6, v14, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x28

    aput-object v6, v4, v13

    const-string v6, "selFail"

    filled-new-array {v6, v14, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x29

    aput-object v6, v4, v13

    const-string v6, "estFail"

    filled-new-array {v6, v14, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x2a

    aput-object v6, v4, v13

    const-string v6, "rbFail"

    filled-new-array {v6, v14, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x2b

    aput-object v6, v4, v13

    filled-new-array {v9, v15, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x2c

    aput-object v6, v4, v9

    const-string v6, "ulBler"

    filled-new-array {v6, v15, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x2d

    aput-object v6, v4, v9

    const-string v6, "dlBler"

    filled-new-array {v6, v15, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x2e

    aput-object v6, v4, v9

    const-string v6, "rachFail"

    filled-new-array {v6, v15, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x2f

    aput-object v6, v4, v9

    const-string v6, "maxTransPwr"

    filled-new-array {v6, v15, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x30

    aput-object v6, v4, v9

    const-string v6, "maxPreamble"

    filled-new-array {v6, v15, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x31

    aput-object v6, v4, v9

    const-string v6, "nasOtamodifyRej"

    filled-new-array {v6, v14, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x32

    aput-object v6, v4, v9

    const-string v6, "nasOtaholdRej"

    filled-new-array {v6, v14, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x33

    aput-object v6, v4, v9

    const-string v6, "locationUpdatingRej"

    filled-new-array {v6, v14, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x34

    aput-object v6, v4, v9

    const-string v6, "authenticationRej"

    filled-new-array {v6, v14, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x35

    aput-object v6, v4, v9

    const-string v6, "cmServiceRej"

    filled-new-array {v6, v14, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x36

    aput-object v6, v4, v9

    const-string v6, "gmmAttachRej"

    filled-new-array {v6, v14, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x37

    aput-object v6, v4, v9

    const-string v6, "gmmRoutingAreaUpdateRej"

    filled-new-array {v6, v14, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x38

    aput-object v6, v4, v9

    const-string v6, "gmmServiceRej"

    filled-new-array {v6, v14, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x39

    aput-object v6, v4, v9

    const-string v6, "gmmAuthAndCipherRej"

    filled-new-array {v6, v14, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x3a

    aput-object v6, v4, v9

    const-string v6, "modifyPdpRej"

    filled-new-array {v6, v14, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x3b

    aput-object v6, v4, v9

    const-string v6, "activateSecPdpRej"

    filled-new-array {v6, v14, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x3c

    aput-object v6, v4, v9

    const-string v6, "activatePdpRej"

    filled-new-array {v6, v14, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x3d

    aput-object v6, v4, v9

    const-string v6, "deactivatePdpRequest"

    filled-new-array {v6, v14, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x3e

    aput-object v6, v4, v9

    const-string v6, "gmmDetachRequest"

    filled-new-array {v6, v14, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x3f

    aput-object v6, v4, v9

    const-string v6, "imsiDetachInd"

    filled-new-array {v6, v14, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x40

    aput-object v6, v4, v9

    iput-object v4, v0, Lcom/motorola/bach/modemstats/AdamDataStruct;->items05:[[Ljava/lang/String;

    const/4 v6, 0x1

    new-array v9, v6, [[Ljava/lang/String;

    const-string v6, "MOT_GSM_CELL_STAT"

    const-string v13, "13"

    filled-new-array {v6, v13}, [Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x0

    aput-object v6, v9, v13

    iput-object v9, v0, Lcom/motorola/bach/modemstats/AdamDataStruct;->segments06:[[Ljava/lang/String;

    const/16 v6, 0xd

    new-array v6, v6, [[Ljava/lang/String;

    const-string v14, "cellIdSub1"

    filled-new-array {v14, v15, v8}, [Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v13

    const-string v13, "arfcnSub1"

    filled-new-array {v13, v15, v8}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v6, v14

    const-string v13, "cellIdSub2"

    filled-new-array {v13, v15, v8}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v6, v14

    const-string v13, "arfcnSub2"

    filled-new-array {v13, v15, v8}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v6, v14

    filled-new-array {v12, v15, v8}, [Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x4

    aput-object v12, v6, v13

    filled-new-array {v11, v15, v8}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x5

    aput-object v11, v6, v12

    const-string v11, "l1state"

    filled-new-array {v11, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x6

    aput-object v7, v6, v11

    const-string v7, "linkFailure"

    filled-new-array {v7, v15, v8}, [Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x7

    aput-object v7, v6, v11

    const-string v7, "rachFail"

    filled-new-array {v7, v15, v8}, [Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v16

    const-string v7, "dlFail"

    filled-new-array {v7, v15, v8}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x9

    aput-object v7, v6, v11

    const-string v7, "assignRej"

    filled-new-array {v7, v15, v8}, [Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v18

    const-string v7, "l2Fail"

    filled-new-array {v7, v15, v8}, [Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v19

    const-string v7, "upperLyrTrig"

    filled-new-array {v7, v15, v8}, [Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v20

    iput-object v6, v0, Lcom/motorola/bach/modemstats/AdamDataStruct;->items06:[[Ljava/lang/String;

    sparse-switch v1, :sswitch_data_0

    iput v1, v0, Lcom/motorola/bach/modemstats/AdamDataStruct;->mHeader:I

    move-object/from16 v1, v31

    iput-object v1, v0, Lcom/motorola/bach/modemstats/AdamDataStruct;->mSegments:[[Ljava/lang/String;

    move-object/from16 v1, v30

    iput-object v1, v0, Lcom/motorola/bach/modemstats/AdamDataStruct;->mItems:[[Ljava/lang/String;

    goto :goto_0

    :sswitch_0
    iput v1, v0, Lcom/motorola/bach/modemstats/AdamDataStruct;->mHeader:I

    iput-object v9, v0, Lcom/motorola/bach/modemstats/AdamDataStruct;->mSegments:[[Ljava/lang/String;

    iput-object v6, v0, Lcom/motorola/bach/modemstats/AdamDataStruct;->mItems:[[Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    iput v1, v0, Lcom/motorola/bach/modemstats/AdamDataStruct;->mHeader:I

    iput-object v2, v0, Lcom/motorola/bach/modemstats/AdamDataStruct;->mSegments:[[Ljava/lang/String;

    iput-object v5, v0, Lcom/motorola/bach/modemstats/AdamDataStruct;->mItems:[[Ljava/lang/String;

    :sswitch_2
    iput v1, v0, Lcom/motorola/bach/modemstats/AdamDataStruct;->mHeader:I

    iput-object v3, v0, Lcom/motorola/bach/modemstats/AdamDataStruct;->mSegments:[[Ljava/lang/String;

    iput-object v4, v0, Lcom/motorola/bach/modemstats/AdamDataStruct;->mItems:[[Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    iput v1, v0, Lcom/motorola/bach/modemstats/AdamDataStruct;->mHeader:I

    iput-object v10, v0, Lcom/motorola/bach/modemstats/AdamDataStruct;->mSegments:[[Ljava/lang/String;

    move-object/from16 v1, v32

    iput-object v1, v0, Lcom/motorola/bach/modemstats/AdamDataStruct;->mItems:[[Ljava/lang/String;

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3c0ffee -> :sswitch_3
        0x4c0ffee -> :sswitch_1
        0x6c0ffee -> :sswitch_2
        0x7c0ffee -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getItemLength(I)I
    .locals 1

    iget-object p0, p0, Lcom/motorola/bach/modemstats/AdamDataStruct;->mItems:[[Ljava/lang/String;

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object p0, p0, p1

    const/4 p1, 0x1

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getItemString(I)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/motorola/bach/modemstats/AdamDataStruct;->mItems:[[Ljava/lang/String;

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object p0, p0, p1

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemsSize(I)I
    .locals 1

    iget-object p0, p0, Lcom/motorola/bach/modemstats/AdamDataStruct;->mSegments:[[Ljava/lang/String;

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object p0, p0, p1

    const/4 p1, 0x1

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getSegmentString(I)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/motorola/bach/modemstats/AdamDataStruct;->mSegments:[[Ljava/lang/String;

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object p0, p0, p1

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSegmentsSize()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/bach/modemstats/AdamDataStruct;->mSegments:[[Ljava/lang/String;

    array-length p0, p0

    return p0
.end method

.method public isItemVisible(I)Z
    .locals 2

    iget-object p0, p0, Lcom/motorola/bach/modemstats/AdamDataStruct;->mItems:[[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    aget-object p0, p0, p1

    const/4 p1, 0x2

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v1, p1

    :cond_0
    return v1
.end method
