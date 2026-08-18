.class public Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;
.super Ljava/lang/Object;
.source "TcmdSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket$TcmdParsedResponse2;,
        Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket$TcmdParsedResponse;,
        Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket$TcmdResponseData;
    }
.end annotation


# static fields
.field public static final TCMD_BATCHDATA_PREFIX:Ljava/lang/String; = "000000000001"

.field public static final TCMD_BATCH_OPCODE:Ljava/lang/String; = "0C2F"

.field public static final TCMD_HEADER_LENGTH:I = 0xc

.field private static final TCMD_MAX_BYTES:I = 0x400

.field public static final TCMD_RSP_FAIL:Ljava/lang/String; = "FAIL"

.field public static final TCMD_RSP_SUCCESS:Ljava/lang/String; = "SUCCESS"

.field private static final TCMD_SERVER:Ljava/lang/String; = "local_tcmd"

.field private static TC_DATA_LENGTH:[B

.field private static TC_NEED_RESPONSE_FLAG:[B

.field private static TC_OPCODE:[B

.field private static TC_REQUEST_FLAG:B

.field private static final TC_RESERVED:[B

.field private static TC_SEQ_TAG:B


# instance fields
.field private socket_client:Landroid/net/LocalSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-byte v0, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;->TC_REQUEST_FLAG:B

    sput-byte v0, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;->TC_SEQ_TAG:B

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;->TC_OPCODE:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;->TC_NEED_RESPONSE_FLAG:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;->TC_RESERVED:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;->TC_DATA_LENGTH:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;->socket_client:Landroid/net/LocalSocket;

    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    iput-object v0, p0, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;->socket_client:Landroid/net/LocalSocket;

    new-instance v0, Landroid/net/LocalSocketAddress;

    sget-object v1, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    const-string v2, "local_tcmd"

    invoke-direct {v0, v2, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iget-object v1, p0, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;->socket_client:Landroid/net/LocalSocket;

    invoke-virtual {v1, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    return-void
.end method

.method public static parseTcmdRequest(Ljava/lang/String;)[B
    .locals 12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Warning: Odd length request string, last character will be skipped."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    div-int/2addr v0, v2

    sget-object v3, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;->TC_OPCODE:[B

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;->TC_OPCODE:[B

    const/4 v5, 0x4

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v3, v1

    add-int/lit8 v3, v0, 0xc

    sub-int/2addr v3, v2

    new-array v3, v3, [B

    sget-byte v7, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;->TC_REQUEST_FLAG:B

    aput-byte v7, v3, v4

    sget-byte v7, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;->TC_SEQ_TAG:B

    add-int/lit8 v8, v7, 0x1

    int-to-byte v8, v8

    sput-byte v8, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;->TC_SEQ_TAG:B

    aput-byte v7, v3, v1

    sget-object v7, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;->TC_OPCODE:[B

    aget-byte v8, v7, v4

    aput-byte v8, v3, v2

    aget-byte v8, v7, v1

    const/4 v9, 0x3

    aput-byte v8, v3, v9

    sget-object v8, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;->TC_NEED_RESPONSE_FLAG:[B

    aget-byte v10, v8, v4

    aput-byte v10, v3, v5

    const/4 v10, 0x5

    aget-byte v1, v8, v1

    aput-byte v1, v3, v10

    const/4 v1, 0x6

    const/4 v8, 0x7

    sget-object v10, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;->TC_RESERVED:[B

    aget-byte v10, v10, v4

    aput-byte v10, v3, v8

    aput-byte v10, v3, v1

    const/16 v1, 0x8

    const/16 v8, 0x9

    sget-object v10, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;->TC_DATA_LENGTH:[B

    aget-byte v4, v10, v4

    const/16 v11, 0xa

    aput-byte v4, v3, v11

    aput-byte v4, v3, v8

    aput-byte v4, v3, v1

    array-length v1, v7

    const/16 v4, 0xb

    if-le v0, v1, :cond_2

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit16 v4, v4, 0x200

    int-to-byte v4, v4

    aput-byte v4, v3, v11

    const/4 v4, 0x0

    :goto_0
    array-length v5, v3

    add-int/lit8 v5, v5, -0xc

    if-ge v4, v5, :cond_1

    add-int/lit8 v5, v4, 0xc

    mul-int/lit8 v7, v4, 0x2

    mul-int/lit8 v8, v4, 0x2

    add-int/2addr v8, v2

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    aget-byte v1, v10, v9

    aput-byte v1, v3, v4

    :goto_1
    return-object v3
.end method

.method public static parseTcmdResponse([B)Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket$TcmdParsedResponse;
    .locals 7

    const/16 v0, 0xa

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    mul-int/lit16 v0, v0, 0x100

    const/16 v1, 0xb

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    const/4 v1, 0x0

    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;->responseFlag(B)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket$TcmdParsedResponse;

    const/4 v2, -0x1

    const-string v3, "FAIL: RESPONSE CORRPUPTED"

    invoke-direct {v1, v3, v2}, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket$TcmdParsedResponse;-><init>(Ljava/lang/String;I)V

    return-object v1

    :cond_0
    const-string v2, ""

    aget-byte v3, p0, v1

    invoke-static {v3}, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;->tfFlag(B)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "FAIL: "

    const/16 v2, 0xc

    :goto_0
    add-int/lit8 v3, v0, 0xc

    if-ge v2, v3, :cond_2

    aget-byte v3, p0, v2

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, p0, v2

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v4, v0, 0xc

    if-ge v3, v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aget-byte v6, p0, v3

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "%02X "

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_2
    new-instance v2, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket$TcmdParsedResponse;

    add-int/lit8 v3, v0, 0xc

    invoke-direct {v2, v1, v3}, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket$TcmdParsedResponse;-><init>(Ljava/lang/String;I)V

    return-object v2
.end method

.method public static parseTcmdResponse2([B)Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket$TcmdParsedResponse2;
    .locals 4

    const/16 v0, 0xa

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    mul-int/lit16 v0, v0, 0x100

    const/16 v1, 0xb

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    const/4 v1, 0x0

    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;->responseFlag(B)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket$TcmdParsedResponse2;

    const-string v2, "FAIL Response corrupted"

    invoke-direct {v1, v2}, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket$TcmdParsedResponse2;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;->tfFlag(B)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket$TcmdParsedResponse2;

    const-string v2, "FAIL TCMD fail bit was set"

    invoke-direct {v1, v2}, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket$TcmdParsedResponse2;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_1
    new-array v2, v0, [B

    const/16 v3, 0xc

    invoke-static {p0, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket$TcmdParsedResponse2;

    const-string v3, "SUCCESS"

    invoke-direct {v1, v2, v0, v3}, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket$TcmdParsedResponse2;-><init>([BILjava/lang/String;)V

    return-object v1
.end method

.method private static responseFlag(B)Z
    .locals 2

    and-int/lit16 v0, p0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static tfFlag(B)Z
    .locals 2

    and-int/lit8 v0, p0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;->socket_client:Landroid/net/LocalSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;->socket_client:Landroid/net/LocalSocket;

    :cond_0
    return-void
.end method

.method public receive()Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket$TcmdResponseData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;->socket_client:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gez v2, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    new-instance v3, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket$TcmdResponseData;

    invoke-direct {v3, v0, v2}, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket$TcmdResponseData;-><init>([BI)V

    return-object v3
.end method

.method public send(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;->parseTcmdRequest(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;->socket_client:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, p0, Lcom/motorola/motocit/alt/altautocycle/util/TcmdSocket;->socket_client:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
