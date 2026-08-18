.class public Lcom/motorola/motocit/CmdPassException;
.super Ljava/lang/Exception;
.source "CmdPassException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public nSeqTag:I

.field public strCmd:Ljava/lang/String;

.field public strReturnDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public strTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/motocit/CmdPassException;->strReturnDataList:Ljava/util/List;

    iput p1, p0, Lcom/motorola/motocit/CmdPassException;->nSeqTag:I

    iput-object p2, p0, Lcom/motorola/motocit/CmdPassException;->strCmd:Ljava/lang/String;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
