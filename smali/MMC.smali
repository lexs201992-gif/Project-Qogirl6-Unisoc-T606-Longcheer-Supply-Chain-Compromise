.class public Lcom/motorola/motocit/mmc/MMC;
.super Lcom/motorola/motocit/Test_Base;
.source "MMC.java"


# static fields
.field private static methodGetDisksListM:Ljava/lang/reflect/Method;

.field private static methodGetUserHandle:Ljava/lang/reflect/Method;

.field private static methodGetVolumeList:Ljava/lang/reflect/Method;

.field private static methodGetVolumesInfoListM:Ljava/lang/reflect/Method;

.field private static storageVolumeDescription:Ljava/lang/reflect/Method;


# instance fields
.field private confirmButton:Landroid/widget/Button;

.field private eMMCPath:Ljava/lang/String;

.field private isPermissionAllowed:Z

.field isSdCardM:Z

.field public isSdCardMountedM:Z

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUserManager:Landroid/os/UserManager;

.field private sdCardPath:Ljava/lang/String;

.field user_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/motocit/mmc/MMC;->storageVolumeDescription:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/motorola/motocit/mmc/MMC;->methodGetVolumeList:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/motorola/motocit/mmc/MMC;->methodGetVolumesInfoListM:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/motorola/motocit/mmc/MMC;->methodGetDisksListM:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/motorola/motocit/mmc/MMC;->methodGetUserHandle:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/motorola/motocit/Test_Base;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/motocit/mmc/MMC;->sdCardPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/motocit/mmc/MMC;->eMMCPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/motocit/mmc/MMC;->mStorageManager:Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/motorola/motocit/mmc/MMC;->mUserManager:Landroid/os/UserManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/motocit/mmc/MMC;->isPermissionAllowed:Z

    iput-boolean v0, p0, Lcom/motorola/motocit/mmc/MMC;->isSdCardMountedM:Z

    iput-boolean v0, p0, Lcom/motorola/motocit/mmc/MMC;->isSdCardM:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/motocit/mmc/MMC;->user_id:I

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/motocit/mmc/MMC;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/motocit/mmc/MMC;->sdCardPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/motocit/mmc/MMC;)V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/motocit/mmc/MMC;->checkSdCardM()V

    return-void
.end method

.method private checkSdCardM()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/motorola/motocit/mmc/MMC;->isSdCardMountedM:Z

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/motorola/motocit/mmc/MMC;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getVolumes"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/motorola/motocit/mmc/MMC;->methodGetVolumesInfoListM:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    sput-object v3, Lcom/motorola/motocit/mmc/MMC;->methodGetVolumesInfoListM:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/motorola/motocit/mmc/MMC;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getDisks"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/motorola/motocit/mmc/MMC;->methodGetDisksListM:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    sput-object v3, Lcom/motorola/motocit/mmc/MMC;->methodGetDisksListM:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    sget-object v3, Lcom/motorola/motocit/mmc/MMC;->methodGetDisksListM:Ljava/lang/reflect/Method;

    const/16 v4, 0x65

    const/4 v5, 0x1

    const/16 v6, 0x69

    if-eqz v3, :cond_2

    :try_start_2
    iget-object v7, p0, Lcom/motorola/motocit/mmc/MMC;->mStorageManager:Landroid/os/storage/StorageManager;

    new-array v8, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v3

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/DiskInfo;

    iget-object v8, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isSd="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9, v6}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-virtual {v7}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v8

    if-eqz v8, :cond_0

    iput-boolean v5, p0, Lcom/motorola/motocit/mmc/MMC;->isSdCardM:Z

    :cond_0
    goto :goto_3

    :cond_1
    goto :goto_4

    :cond_2
    iget-object v3, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    const-string v7, "methodGetDisksListM=null"

    invoke-virtual {p0, v3, v7, v4}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    :cond_3
    :goto_4
    sget-object v3, Lcom/motorola/motocit/mmc/MMC;->methodGetVolumesInfoListM:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_6

    :try_start_3
    iget-object v4, p0, Lcom/motorola/motocit/mmc/MMC;->mStorageManager:Landroid/os/storage/StorageManager;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v0, v2

    goto :goto_5

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    if-eqz v0, :cond_7

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeInfo;

    iget-object v7, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "_getPathForUser="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/motorola/motocit/mmc/MMC;->user_id:I

    invoke-virtual {v4, v9}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8, v6}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v7, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "_getState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8, v6}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v7, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "_getType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8, v6}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v7, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "_isMountedReadable="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8, v6}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v7, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "_isMountedWritable="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8, v6}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    add-int/lit8 v2, v2, 0x1

    iget-boolean v7, p0, Lcom/motorola/motocit/mmc/MMC;->isSdCardM:Z

    if-eqz v7, :cond_4

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    const-string v8, "SD card mounted"

    invoke-virtual {p0, v7, v8, v6}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iput-boolean v5, p0, Lcom/motorola/motocit/mmc/MMC;->isSdCardMountedM:Z

    :cond_4
    goto/16 :goto_6

    :cond_5
    goto :goto_7

    :cond_6
    iget-object v2, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    const-string v3, "storageVolumeInfoListM=null"

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    :cond_7
    :goto_7
    return-void
.end method

.method private checkWritableM(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/motorola/motocit/mmc/MMC;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getVolumes"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/motorola/motocit/mmc/MMC;->methodGetVolumesInfoListM:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    const/4 v4, 0x0

    sput-object v4, Lcom/motorola/motocit/mmc/MMC;->methodGetVolumesInfoListM:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    sget-object v3, Lcom/motorola/motocit/mmc/MMC;->methodGetVolumesInfoListM:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_2

    :try_start_1
    iget-object v4, p0, Lcom/motorola/motocit/mmc/MMC;->mStorageManager:Landroid/os/storage/StorageManager;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    iget v4, p0, Lcom/motorola/motocit/mmc/MMC;->user_id:I

    invoke-virtual {v3, v4}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/motorola/motocit/mmc/MMC;->user_id:I

    invoke-virtual {v3, v4}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/motorola/motocit/mmc/MMC;->user_id:I

    invoke-virtual {v3, v6}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "is writable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x69

    invoke-virtual {p0, v4, v5, v6}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    const/4 v1, 0x1

    :cond_0
    goto :goto_2

    :cond_1
    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    const/16 v3, 0x65

    const-string v4, "storageVolumeInfoListM=null"

    invoke-virtual {p0, v2, v4, v3}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    :cond_3
    :goto_3
    return v1
.end method

.method private configureStorageVolumeMethods()V
    .locals 6

    sget-object v0, Lcom/motorola/motocit/mmc/MMC;->storageVolumeDescription:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "getDescription"

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Landroid/os/storage/StorageVolume;

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/motorola/motocit/mmc/MMC;->storageVolumeDescription:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sput-object v2, Lcom/motorola/motocit/mmc/MMC;->storageVolumeDescription:Ljava/lang/reflect/Method;

    :cond_0
    :goto_0
    sget-object v0, Lcom/motorola/motocit/mmc/MMC;->storageVolumeDescription:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    :try_start_1
    const-class v0, Landroid/os/storage/StorageVolume;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/motorola/motocit/mmc/MMC;->storageVolumeDescription:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sput-object v2, Lcom/motorola/motocit/mmc/MMC;->storageVolumeDescription:Ljava/lang/reflect/Method;

    :cond_1
    :goto_1
    return-void
.end method

.method private getInternalStorageMountPath()Ljava/lang/String;
    .locals 1

    const-string v0, "EXTERNAL_STORAGE"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStorageVolumeDescription(Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/motorola/motocit/mmc/MMC;->storageVolumeDescription:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/motorola/motocit/mmc/MMC;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    :try_start_1
    sget-object v2, Lcom/motorola/motocit/mmc/MMC;->storageVolumeDescription:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    const/4 v0, 0x0

    :cond_0
    :goto_1
    return-object v0
.end method


# virtual methods
.method public getExternalStorageMountPath()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/motorola/motocit/mmc/MMC;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getVolumeList"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/motorola/motocit/mmc/MMC;->methodGetVolumeList:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    const/4 v4, 0x0

    :try_start_1
    sput-object v4, Lcom/motorola/motocit/mmc/MMC;->methodGetVolumeList:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    sget-object v3, Lcom/motorola/motocit/mmc/MMC;->methodGetVolumeList:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v4, 0x69

    if-eqz v3, :cond_0

    :try_start_2
    iget-object v5, p0, Lcom/motorola/motocit/mmc/MMC;->mStorageManager:Landroid/os/storage/StorageManager;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Parcelable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    const-string v3, "methodGetVolumeList=null"

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    :goto_2
    const/4 v2, 0x0

    :goto_3
    array-length v3, v1

    if-ge v2, v3, :cond_2

    aget-object v3, v1, v2

    check-cast v3, Landroid/os/storage/StorageVolume;

    iget-object v5, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "external_storage_path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, v4}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v7, "sdcard"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-ne v5, v6, :cond_1

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v0, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    goto :goto_4

    :catch_1
    move-exception v1

    iget-object v2, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    const-string v3, "getExternalStorageMountPath: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-object v0
.end method

.method public getUser_Id()I
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/motorola/motocit/mmc/MMC;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getUserHandle"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/motorola/motocit/mmc/MMC;->methodGetUserHandle:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    sput-object v3, Lcom/motorola/motocit/mmc/MMC;->methodGetUserHandle:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    sget-object v2, Lcom/motorola/motocit/mmc/MMC;->methodGetUserHandle:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/motorola/motocit/mmc/MMC;->mUserManager:Landroid/os/UserManager;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v0, v1

    iget-object v1, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x69

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    const/16 v2, 0x65

    const-string v3, "methodGetUserHandle=null"

    invoke-virtual {p0, v1, v3, v2}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    :goto_2
    return v0
.end method

.method protected handleTestSpecificActions()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/motocit/CmdFailException;,
            Lcom/motorola/motocit/CmdPassException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    const-string v2, "GET_STORAGE_VOLUME_STATUS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "checking"

    const-string v3, "mounted_ro"

    const-string v4, "mounted"

    const-string v5, "usbotg"

    const-string v7, "usbdisk"

    const-string v8, "UNKNOWN_MEMORY_TYPE: "

    const-string v9, "REMOVABLE"

    const-string v10, "INTERNAL"

    const-string v11, "GET_VOLUME_LIST_FAILED: "

    const-string v12, "TOO MANY PARAMETERS"

    const-string v13, "MEMORY_TYPE_NOT_SPECIFIED: "

    const-string v14, "getVolumeList"

    const/4 v6, 0x0

    if-eqz v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v0

    const/16 v17, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/motorola/motocit/mmc/MMC;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v15, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/motorola/motocit/mmc/MMC;->methodGetVolumeList:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v14, 0x0

    sput-object v14, Lcom/motorola/motocit/mmc/MMC;->methodGetVolumeList:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    sget-object v0, Lcom/motorola/motocit/mmc/MMC;->methodGetVolumeList:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v14, v1, Lcom/motorola/motocit/mmc/MMC;->mStorageManager:Landroid/os/storage/StorageManager;

    new-array v15, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v17, v0

    move-object/from16 v11, v16

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v11, v16

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v4, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v11}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_0
    move-object/from16 v11, v16

    move-object/from16 v0, v17

    :goto_1
    iget-object v14, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_c

    iget-object v13, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-gt v13, v14, :cond_b

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    array-length v14, v0

    if-ge v13, v14, :cond_a

    aget-object v14, v0, v13

    check-cast v14, Landroid/os/storage/StorageVolume;

    const/4 v15, 0x0

    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v12, v12, 0x1

    const/4 v15, 0x1

    goto :goto_3

    :cond_1
    iget-object v0, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_3

    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v12, v12, 0x1

    const/4 v15, 0x1

    goto :goto_3

    :cond_2
    iget-object v0, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "ALL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v12, v12, 0x1

    const/4 v15, 0x1

    :cond_3
    :goto_3
    const/4 v6, 0x1

    if-ne v15, v6, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STORAGE_VOLUME_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v18, v15

    const-string v15, "_ALLOW_MASS_STORAGE="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v5

    const/4 v15, 0x0

    new-array v5, v15, [Ljava/lang/Object;

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_MAX_FILE_SIZE="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, v9

    move-object/from16 v20, v10

    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->getMaxFileSize()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v0, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {v1, v14}, Lcom/motorola/motocit/mmc/MMC;->getStorageVolumeDescription(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_DESCRIPTION="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v15, v10, [Ljava/lang/Object;

    invoke-static {v9, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_PATH="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v15, v10, [Ljava/lang/Object;

    invoke-static {v9, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_ID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v15, v10, [Ljava/lang/Object;

    invoke-static {v9, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_EMULATED="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v15, v10, [Ljava/lang/Object;

    invoke-static {v9, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_REMOVABLE="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v15, v10, [Ljava/lang/Object;

    invoke-static {v9, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v9, ""

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x17

    if-ge v10, v15, :cond_4

    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/motorola/motocit/TestUtils;->getExternalStorageState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v21, v0

    goto :goto_4

    :cond_4
    iget-object v10, v1, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v0

    const-string v0, "storage volume get path="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x69

    invoke-virtual {v1, v10, v0, v15}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v0, v1, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "storage volume get state="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v15, 0x69

    invoke-virtual {v1, v0, v10, v15}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v9

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_MOUNTED="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    new-array v15, v10, [Ljava/lang/Object;

    invoke-static {v0, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_SIZE=NOT_AVAILABLE"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v0, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    :goto_5
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    move-object v15, v9

    int-to-long v9, v10

    move-object/from16 v22, v14

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v14

    move-object/from16 v23, v15

    int-to-long v14, v14

    mul-long/2addr v9, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_SIZE="

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v6, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    move-object/from16 v21, v0

    const-string v0, "STORAGE VOLUME DESCRIPTION FUNCTION NOT AVAILABLE IN THIS VERSION OF ANDROID"

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/motocit/CmdFailException;

    iget v2, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v3, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v11}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v0

    :cond_8
    move-object/from16 v19, v5

    move-object v5, v9

    move-object/from16 v20, v10

    move-object/from16 v22, v14

    move/from16 v18, v15

    :goto_6
    add-int/lit8 v13, v13, 0x1

    move-object v9, v5

    move-object/from16 v0, v16

    move-object/from16 v5, v19

    move-object/from16 v10, v20

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/motocit/CmdFailException;

    iget v2, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v3, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v11}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v0

    :cond_a
    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NUMBER_OF_STORAGE_VOLUMES="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/motocit/CommServerDataPacket;

    iget v2, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v3, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    iget-object v4, v1, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, v11}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v0}, Lcom/motorola/motocit/mmc/MMC;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    nop

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/motocit/CmdPassException;

    iget v3, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v4, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_b
    move-object/from16 v16, v0

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/motocit/CmdFailException;

    iget v2, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v3, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v11}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v0

    :cond_c
    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/motocit/CmdFailException;

    iget v2, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v3, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v11}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v0

    :cond_d
    move-object/from16 v19, v5

    move-object v5, v9

    move-object/from16 v20, v10

    iget-object v0, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    const-string v6, "EXECUTE_WRITE_TEST"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v6, "Volume Write Path is NULL"

    const-string v9, "volumeWritePath="

    if-eqz v0, :cond_22

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    const/4 v10, 0x0

    :try_start_2
    iget-object v0, v1, Lcom/motorola/motocit/mmc/MMC;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v16, v2

    const/4 v15, 0x0

    :try_start_3
    new-array v2, v15, [Ljava/lang/Class;

    invoke-virtual {v0, v14, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/motorola/motocit/mmc/MMC;->methodGetVolumeList:Ljava/lang/reflect/Method;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    :goto_7
    const/4 v2, 0x0

    sput-object v2, Lcom/motorola/motocit/mmc/MMC;->methodGetVolumeList:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8
    sget-object v0, Lcom/motorola/motocit/mmc/MMC;->methodGetVolumeList:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_e

    :try_start_4
    iget-object v2, v1, Lcom/motorola/motocit/mmc/MMC;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v10, v0

    goto :goto_9

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v4, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v5, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v3}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_e
    :goto_9
    iget-object v0, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_21

    iget-object v0, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_20

    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object/from16 v11, v16

    :goto_a
    array-length v12, v10

    if-ge v2, v12, :cond_14

    aget-object v12, v10, v2

    check-cast v12, Landroid/os/storage/StorageVolume;

    iget-object v13, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v15, v20

    invoke-virtual {v13, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v13

    if-nez v13, :cond_f

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    iget-object v13, v1, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v18, v10

    const/16 v10, 0x69

    invoke-virtual {v1, v13, v14, v10}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    move-object/from16 v13, v19

    goto :goto_b

    :cond_f
    move-object/from16 v18, v10

    move-object/from16 v13, v19

    goto :goto_b

    :cond_10
    move-object/from16 v18, v10

    iget-object v10, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v10

    const/4 v13, 0x1

    if-ne v10, v13, :cond_11

    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_11

    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v13, v19

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v10

    const/16 v10, 0x69

    invoke-virtual {v1, v11, v14, v10}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    move-object/from16 v11, v16

    goto :goto_b

    :cond_11
    move-object/from16 v13, v19

    :cond_12
    :goto_b
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v19, v13

    move-object/from16 v20, v15

    move-object/from16 v10, v18

    goto/16 :goto_a

    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/motocit/CmdFailException;

    iget v5, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v6, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v3}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v4

    :cond_14
    move-object/from16 v18, v10

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1f

    nop

    if-eqz v11, :cond_1e

    const/4 v0, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v2, v5, :cond_16

    invoke-static {v11}, Lcom/motorola/motocit/TestUtils;->getExternalStorageState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v0, 0x1

    goto :goto_c

    :cond_15
    const/4 v0, 0x0

    :goto_c
    move v2, v0

    goto :goto_d

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/motocit/mmc/MMC;->getUser_Id()I

    move-result v2

    iput v2, v1, Lcom/motorola/motocit/mmc/MMC;->user_id:I

    invoke-direct {v1, v11}, Lcom/motorola/motocit/mmc/MMC;->checkWritableM(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v0, 0x1

    move v2, v0

    goto :goto_d

    :cond_17
    const/4 v0, 0x0

    move v2, v0

    :goto_d
    if-eqz v2, :cond_1d

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v7, "mmc_wr_test"

    const-string v8, ".tmp"

    invoke-static {v7, v8, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    move-object v5, v7

    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    invoke-direct {v8, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v7, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/Writer;->flush()V

    invoke-virtual {v7}, Ljava/io/Writer;->close()V

    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    :goto_e
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    move-object v13, v12

    if-eqz v12, :cond_18

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    :cond_18
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    invoke-virtual {v0, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez v12, :cond_19

    const/4 v4, 0x0

    goto :goto_f

    :cond_19
    const/4 v4, 0x1

    :goto_f
    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1a

    :goto_10
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_11

    :catchall_3
    move-exception v0

    goto :goto_12

    :catch_2
    move-exception v0

    :try_start_6
    iget-object v6, v1, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x69

    invoke-virtual {v1, v6, v7, v8}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v4, 0x0

    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_10

    :cond_1a
    :goto_11
    if-nez v4, :cond_1b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v11, v6, v7

    const-string v8, "Failed write/read test on MMC card mounted at %s"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v1, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/16 v8, 0x69

    invoke-virtual {v1, v6, v7, v8}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v6, Lcom/motorola/motocit/CmdFailException;

    iget v7, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v8, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v6

    :cond_1b
    nop

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/motocit/CmdPassException;

    iget v4, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v5, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v0}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :goto_12
    if-eqz v5, :cond_1c

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_1c
    throw v0

    :cond_1d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    const-string v6, "MMC card at %s is not writable"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v6, 0x69

    invoke-virtual {v1, v4, v5, v6}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v4, Lcom/motorola/motocit/CmdFailException;

    iget v5, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v6, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v4

    :cond_1e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v11, v2, v4

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x69

    invoke-virtual {v1, v2, v4, v5}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v4, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v5, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EXECUTE_WRITE_TEST_CURRENTLY_SUPPORTS_ONE_STORAGE_DEVICE: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v4, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v5, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v3}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_20
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/motocit/CmdFailException;

    iget v2, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v4, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v0, v2, v4, v3}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v0

    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/motocit/CmdFailException;

    iget v2, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v4, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v0, v2, v4, v3}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v0

    :cond_22
    move-object/from16 v10, v19

    move-object/from16 v15, v20

    iget-object v0, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    move-object/from16 v16, v9

    const-string v9, "UNMOUNT_VOLUME"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v9, "UNMOUNT_MEMORY_CURRENTLY_SUPPORTS_ONE_STORAGE_DEVICE: "

    const-string v19, "mount"

    if-eqz v0, :cond_31

    const/16 v16, 0x0

    const/16 v20, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v21, v0

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    move-object/from16 v22, v13

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v13

    const/16 v19, 0x0

    :try_start_7
    iget-object v0, v1, Lcom/motorola/motocit/mmc/MMC;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-object/from16 v24, v9

    move-object/from16 v23, v12

    const/4 v12, 0x0

    :try_start_8
    new-array v9, v12, [Ljava/lang/Class;

    invoke-virtual {v0, v14, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/motorola/motocit/mmc/MMC;->methodGetVolumeList:Ljava/lang/reflect/Method;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_14

    :catchall_4
    move-exception v0

    goto :goto_13

    :catchall_5
    move-exception v0

    move-object/from16 v24, v9

    move-object/from16 v23, v12

    :goto_13
    const/4 v9, 0x0

    sput-object v9, Lcom/motorola/motocit/mmc/MMC;->methodGetVolumeList:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_14
    sget-object v0, Lcom/motorola/motocit/mmc/MMC;->methodGetVolumeList:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_23

    :try_start_9
    iget-object v9, v1, Lcom/motorola/motocit/mmc/MMC;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v12, 0x0

    new-array v14, v12, [Ljava/lang/Object;

    invoke-virtual {v0, v9, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move-object/from16 v19, v0

    move-object/from16 v11, v19

    move-object/from16 v9, v21

    goto :goto_15

    :catch_3
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v9, v21

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v4, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v9}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_23
    move-object/from16 v9, v21

    move-object/from16 v11, v19

    :goto_15
    iget-object v0, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_30

    iget-object v0, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v12, 0x1

    if-gt v0, v12, :cond_2f

    const/4 v0, 0x0

    const/4 v12, 0x0

    move-object/from16 v14, v20

    :goto_16
    move-object/from16 v21, v6

    array-length v6, v11

    if-ge v12, v6, :cond_27

    aget-object v6, v11, v12

    move-object/from16 v16, v6

    check-cast v16, Landroid/os/storage/StorageVolume;

    iget-object v6, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    move-object/from16 v18, v11

    const/4 v11, 0x0

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-nez v6, :cond_25

    add-int/lit8 v0, v0, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    move-object v14, v6

    goto :goto_17

    :cond_24
    iget-object v6, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    const/4 v11, 0x1

    if-ne v6, v11, :cond_25

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_25

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_25

    add-int/lit8 v0, v0, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    move-object v14, v6

    :cond_25
    :goto_17
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v11, v18

    move-object/from16 v6, v21

    goto :goto_16

    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v4, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v9}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_27
    move-object/from16 v18, v11

    const/4 v5, 0x1

    if-gt v0, v5, :cond_2e

    nop

    if-eqz v14, :cond_2d

    const/4 v0, 0x0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-ge v5, v6, :cond_2a

    invoke-static {v14}, Lcom/motorola/motocit/TestUtils;->getExternalStorageState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_18

    :cond_28
    const/4 v0, 0x0

    goto :goto_19

    :cond_29
    :goto_18
    const/4 v0, 0x1

    :goto_19
    move v2, v0

    goto :goto_1a

    :cond_2a
    invoke-direct {v1, v14}, Lcom/motorola/motocit/mmc/MMC;->checkWritableM(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v0, 0x1

    move v2, v0

    goto :goto_1a

    :cond_2b
    const/4 v0, 0x0

    move v2, v0

    :goto_1a
    if-nez v2, :cond_2c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v14, v3, v4

    const-string v5, "Memory at %s is not mounted"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x69

    invoke-virtual {v1, v3, v4, v5}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v3, Lcom/motorola/motocit/CmdFailException;

    iget v4, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v5, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3

    :cond_2c
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Landroid/os/storage/IStorageManager;->unmount(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    nop

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/motorola/motocit/CmdPassException;

    iget v4, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v5, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3

    :catch_4
    move-exception v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v14, v4, v5

    const-string v6, "Memory at %s unmount failure"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v6, 0x69

    invoke-virtual {v1, v4, v5, v6}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v4, Lcom/motorola/motocit/CmdFailException;

    iget v5, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v6, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v3}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v4

    :cond_2d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    move-object/from16 v4, v21

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x69

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v4, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v4, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v9}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_2f
    move-object/from16 v2, v23

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/motocit/CmdFailException;

    iget v2, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v3, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v9}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v0

    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/motocit/CmdFailException;

    iget v2, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v3, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v9}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v0

    :cond_31
    move-object v4, v6

    move-object v3, v9

    move-object v2, v12

    move-object v6, v13

    iget-object v0, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    const-string v9, "MOUNT_VOLUME"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v9, 0x0

    const/4 v12, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    move-object/from16 v19, v9

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v9

    const/16 v20, 0x0

    :try_start_b
    iget-object v0, v1, Lcom/motorola/motocit/mmc/MMC;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    move-object/from16 v22, v6

    move-object/from16 v21, v12

    const/4 v12, 0x0

    :try_start_c
    new-array v6, v12, [Ljava/lang/Class;

    invoke-virtual {v0, v14, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/motorola/motocit/mmc/MMC;->methodGetVolumeList:Ljava/lang/reflect/Method;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_1c

    :catchall_6
    move-exception v0

    goto :goto_1b

    :catchall_7
    move-exception v0

    move-object/from16 v22, v6

    move-object/from16 v21, v12

    :goto_1b
    const/4 v6, 0x0

    sput-object v6, Lcom/motorola/motocit/mmc/MMC;->methodGetVolumeList:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1c
    sget-object v0, Lcom/motorola/motocit/mmc/MMC;->methodGetVolumeList:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_32

    :try_start_d
    iget-object v6, v1, Lcom/motorola/motocit/mmc/MMC;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v12, 0x0

    new-array v14, v12, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    move-object/from16 v20, v0

    move-object/from16 v6, v20

    goto :goto_1d

    :catch_5
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v4, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v13}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_32
    move-object/from16 v6, v20

    :goto_1d
    iget-object v0, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3e

    iget-object v0, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v11, 0x1

    if-gt v0, v11, :cond_3d

    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object/from16 v12, v21

    :goto_1e
    array-length v11, v6

    if-ge v2, v11, :cond_36

    aget-object v11, v6, v2

    move-object/from16 v19, v11

    check-cast v19, Landroid/os/storage/StorageVolume;

    iget-object v11, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    const/4 v14, 0x0

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_33

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v11

    if-nez v11, :cond_34

    add-int/lit8 v0, v0, 0x1

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    move-object v12, v11

    goto :goto_1f

    :cond_33
    iget-object v11, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    const/4 v14, 0x0

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_35

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v11

    const/4 v14, 0x1

    if-ne v11, v14, :cond_34

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_34

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_34

    add-int/lit8 v0, v0, 0x1

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    move-object v12, v11

    :cond_34
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/motocit/CmdFailException;

    iget v4, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v5, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v13}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3

    :cond_36
    const/4 v2, 0x1

    if-gt v0, v2, :cond_3c

    nop

    if-eqz v12, :cond_3b

    const/4 v0, 0x0

    iget-object v2, v1, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x69

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_38

    invoke-static {v12}, Lcom/motorola/motocit/TestUtils;->getExternalStorageState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "unmounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    const/4 v0, 0x1

    goto :goto_20

    :cond_37
    const/4 v0, 0x0

    :goto_20
    move v2, v0

    goto :goto_21

    :cond_38
    invoke-direct {v1, v12}, Lcom/motorola/motocit/mmc/MMC;->checkWritableM(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    const/4 v0, 0x0

    move v2, v0

    goto :goto_21

    :cond_39
    const/4 v0, 0x1

    move v2, v0

    :goto_21
    if-nez v2, :cond_3a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    const-string v5, "Memory at %s is mounted"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x69

    invoke-virtual {v1, v3, v4, v5}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v3, Lcom/motorola/motocit/CmdFailException;

    iget v4, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v5, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3

    :cond_3a
    :try_start_e
    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Landroid/os/storage/IStorageManager;->mount(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    nop

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/motorola/motocit/CmdPassException;

    iget v4, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v5, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v3

    :catch_6
    move-exception v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    const-string v7, "Memory at %s mount failure"

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v7, 0x69

    invoke-virtual {v1, v4, v5, v7}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v4, Lcom/motorola/motocit/CmdFailException;

    iget v5, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v7, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v4, v5, v7, v3}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v4

    :cond_3b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x69

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v4, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v4, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v13}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_3d
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/motocit/CmdFailException;

    iget v2, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v3, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v13}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v0

    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmdDataList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/motocit/CmdFailException;

    iget v2, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v3, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v13}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v0

    :cond_3f
    iget-object v0, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    const-string v2, "help"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/motocit/mmc/MMC;->printHelp()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v1, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s help printed"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/motocit/CmdPassException;

    iget v3, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v4, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/motorola/motocit/CmdPassException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2

    :cond_40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v1, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "Activity \'%s\' does not recognize command \'%s\'"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x69

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    new-instance v2, Lcom/motorola/motocit/CmdFailException;

    iget v3, v1, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v4, v1, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/motorola/motocit/CmdFailException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    throw v2
.end method

.method public isSdCardMound()Z
    .locals 1

    invoke-direct {p0}, Lcom/motorola/motocit/mmc/MMC;->checkSdCardM()V

    iget-boolean v0, p0, Lcom/motorola/motocit/mmc/MMC;->isSdCardMountedM:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "MMC"

    iput-object v0, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/motorola/motocit/Test_Base;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f080047

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/mmc/MMC;->adjustViewDisplayArea(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/motocit/mmc/MMC;->mGestureListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/motocit/mmc/MMC;->mGestureListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8

    invoke-virtual {p0}, Lcom/motorola/motocit/mmc/MMC;->wasActivityStartedByCommServer()Z

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

    iget-boolean v0, p0, Lcom/motorola/motocit/mmc/MMC;->isSdCardMountedM:Z

    if-nez v0, :cond_1

    const-string v0, "Please, input MMC before approving."

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v7

    :cond_1
    const-string v0, "MMC Test:  PASS\r\n\r\n"

    invoke-virtual {p0, v5, v0, v4}, Lcom/motorola/motocit/mmc/MMC;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    const-string v4, "PASS"

    invoke-virtual {p0, v0, v4, v6, v6}, Lcom/motorola/motocit/mmc/MMC;->logTestResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    :try_start_0
    invoke-static {v2, v3, v7}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    invoke-virtual {p0, v7}, Lcom/motorola/motocit/mmc/MMC;->systemExitWrapper(I)V

    goto :goto_2

    :cond_2
    const/16 v0, 0x18

    if-ne p1, v0, :cond_3

    const-string v0, "MMC Test:  FAILED\r\n\r\n"

    invoke-virtual {p0, v5, v0, v4}, Lcom/motorola/motocit/mmc/MMC;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    const-string v4, "FAIL"

    invoke-virtual {p0, v0, v4, v6, v6}, Lcom/motorola/motocit/mmc/MMC;->logTestResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    :try_start_1
    invoke-static {v2, v3, v7}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    invoke-virtual {p0, v7}, Lcom/motorola/motocit/mmc/MMC;->systemExitWrapper(I)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const-string v0, "Seq"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/mmc/MMC;->modeCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/mmc/MMC;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v7

    :cond_4
    invoke-virtual {p0, v7}, Lcom/motorola/motocit/mmc/MMC;->systemExitWrapper(I)V

    :cond_5
    :goto_2
    return v1

    :cond_6
    :goto_3
    return v1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const/16 v0, 0x3e9

    if-ne v0, p1, :cond_1

    array-length v0, p3

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget v1, p3, v0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/motocit/mmc/MMC;->isPermissionAllowed:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/motorola/motocit/mmc/MMC;->isPermissionAllowed:Z

    invoke-virtual {p0}, Lcom/motorola/motocit/mmc/MMC;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 8

    invoke-super {p0}, Lcom/motorola/motocit/Test_Base;->onResume()V

    iget-object v0, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    const/16 v2, 0x69

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/motorola/motocit/mmc/MMC;->isPermissionAllowed:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/motorola/motocit/mmc/MMC;->isPermissionAllowed:Z

    :goto_0
    iget-boolean v0, p0, Lcom/motorola/motocit/mmc/MMC;->isPermissionAllowed:Z

    if-eqz v0, :cond_4

    const v0, 0x7f060116

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/mmc/MMC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f060117

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/mmc/MMC;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/motorola/motocit/mmc/MMC;->confirmButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v1, "storage"

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/mmc/MMC;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/motorola/motocit/mmc/MMC;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string v1, "user"

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/mmc/MMC;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/motorola/motocit/mmc/MMC;->mUserManager:Landroid/os/UserManager;

    invoke-direct {p0}, Lcom/motorola/motocit/mmc/MMC;->configureStorageVolumeMethods()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/motorola/motocit/mmc/MMC;->getUser_Id()I

    move-result v1

    iput v1, p0, Lcom/motorola/motocit/mmc/MMC;->user_id:I

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/motocit/mmc/MMC;->getExternalStorageMountPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/motocit/mmc/MMC;->sdCardPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/motorola/motocit/mmc/MMC;->getInternalStorageMountPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/motocit/mmc/MMC;->eMMCPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/motocit/mmc/MMC;->sdCardPath:Ljava/lang/String;

    const/16 v2, 0x64

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDCARD mount path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/motorola/motocit/mmc/MMC;->sdCardPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v2}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    :cond_2
    iget-object v1, p0, Lcom/motorola/motocit/mmc/MMC;->eMMCPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Internal eMMC mount Path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/motorola/motocit/mmc/MMC;->eMMCPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v2}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    :cond_3
    iget-object v1, p0, Lcom/motorola/motocit/mmc/MMC;->confirmButton:Landroid/widget/Button;

    new-instance v3, Lcom/motorola/motocit/mmc/MMC$1;

    invoke-direct {v3, p0}, Lcom/motorola/motocit/mmc/MMC$1;-><init>(Lcom/motorola/motocit/mmc/MMC;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getExternalStoragePublicDirectory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v6}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v2}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v4, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "External storage dir from Environment: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v2}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v4, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "External storage absolute path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v2}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    iget-object v4, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Storage State: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v2}, Lcom/motorola/motocit/mmc/MMC;->dbgLog(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-virtual {p0}, Lcom/motorola/motocit/mmc/MMC;->sendStartActivityPassed()V

    goto :goto_1

    :cond_4
    const-string v0, "No Permission Granted to run MMC test"

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/mmc/MMC;->sendStartActivityFailed(Ljava/lang/String;)V

    :goto_1
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

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/mmc/MMC;->modeCheck(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/motorola/motocit/mmc/MMC;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/motorola/motocit/mmc/MMC;->systemExitWrapper(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSwipeLeft()Z
    .locals 3

    const-string v0, "testresult.txt"

    const-string v1, "MMC Test:  PASS\r\n\r\n"

    const v2, 0x8000

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/mmc/MMC;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    const-string v1, "PASS"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/motorola/motocit/mmc/MMC;->logTestResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

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
    invoke-virtual {p0, v2}, Lcom/motorola/motocit/mmc/MMC;->systemExitWrapper(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSwipeRight()Z
    .locals 3

    const-string v0, "testresult.txt"

    const-string v1, "MMC Test:  FAILED\r\n\r\n"

    const v2, 0x8000

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/motocit/mmc/MMC;->contentRecord(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    const-string v1, "FAIL"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/motorola/motocit/mmc/MMC;->logTestResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

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
    invoke-virtual {p0, v2}, Lcom/motorola/motocit/mmc/MMC;->systemExitWrapper(I)V

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

    iget-object v1, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "This function will verify the MMC mount state"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/motorola/motocit/mmc/MMC;->getBaseHelp()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v1, "Activity Specific Commands"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "GET_STORAGE_VOLUME_STATUS - Returns status of selected storage volume"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "EXECUTE_WRITE_TEST - Test if data can be written and read back from selected storage volume"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "UNMOUNT_VOLUME - Unmount selected storage volume"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "MOUNT_VOLUME - Unmount selected storage volume"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/motocit/CommServerDataPacket;

    iget v2, p0, Lcom/motorola/motocit/mmc/MMC;->nRxSeqTag:I

    iget-object v3, p0, Lcom/motorola/motocit/mmc/MMC;->strRxCmd:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/motocit/mmc/MMC;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/motorola/motocit/CommServerDataPacket;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/motorola/motocit/mmc/MMC;->sendInfoPacketToCommServer(Lcom/motorola/motocit/CommServerDataPacket;)V

    return-void
.end method
