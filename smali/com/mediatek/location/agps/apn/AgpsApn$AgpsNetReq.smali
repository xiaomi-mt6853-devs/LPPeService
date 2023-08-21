.class Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;
.super Ljava/lang/Object;
.source "AgpsApn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/location/agps/apn/AgpsApn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AgpsNetReq"
.end annotation


# instance fields
.field mAddr:[B

.field mFqdn:Ljava/lang/String;

.field mIsEsupl:Z

.field mIsQueried:Z

.field mIsReleased:Z

.field mIsSuplApn:Z

.field mNet:Landroid/net/Network;

.field mNetReadyCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field mNetReq:Landroid/net/NetworkRequest;

.field mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field final synthetic this$0:Lcom/mediatek/location/agps/apn/AgpsApn;


# direct methods
.method constructor <init>(Lcom/mediatek/location/agps/apn/AgpsApn;Ljava/lang/String;ZZ)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 500
    iput-boolean p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsQueried:Z

    .line 501
    iput-boolean p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsReleased:Z

    const/4 p1, 0x0

    .line 502
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReq:Landroid/net/NetworkRequest;

    .line 503
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNet:Landroid/net/Network;

    .line 504
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReadyCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 505
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 508
    iput-object p2, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mFqdn:Ljava/lang/String;

    .line 509
    iput-boolean p3, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsEsupl:Z

    .line 510
    iput-boolean p4, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsSuplApn:Z

    return-void
.end method

.method constructor <init>(Lcom/mediatek/location/agps/apn/AgpsApn;[BZ)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 500
    iput-boolean p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsQueried:Z

    .line 501
    iput-boolean p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsReleased:Z

    const/4 p1, 0x0

    .line 502
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReq:Landroid/net/NetworkRequest;

    .line 503
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNet:Landroid/net/Network;

    .line 504
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReadyCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 505
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 514
    iput-object p2, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mAddr:[B

    .line 515
    iput-boolean p3, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsEsupl:Z

    return-void
.end method


# virtual methods
.method decideRoute()V
    .locals 11

    const-string v0, "decideRoute()"

    .line 519
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$500(Lcom/mediatek/location/agps/apn/AgpsApn;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 525
    array-length v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    move v6, v4

    move-object v4, v5

    :goto_0
    if-ge v6, v3, :cond_4

    aget-object v7, v0, v6

    .line 526
    iget-object v8, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v8}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$500(Lcom/mediatek/location/agps/apn/AgpsApn;)Landroid/net/ConnectivityManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v8

    .line 527
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checking net="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " cap="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    if-nez v2, :cond_0

    if-eqz v8, :cond_0

    const/16 v9, 0xa

    .line 529
    invoke-virtual {v8, v9}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v2, "NetEmergemcy existed"

    .line 531
    invoke-static {v2}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    move-object v2, v7

    :cond_0
    if-nez v4, :cond_1

    if-eqz v8, :cond_1

    const/4 v9, 0x4

    .line 534
    invoke-virtual {v8, v9}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v4, "NetIms existed"

    .line 536
    invoke-static {v4}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    move-object v4, v7

    :cond_1
    if-nez v5, :cond_2

    if-eqz v8, :cond_2

    .line 539
    invoke-virtual {v8, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v5, "NetSupl existed"

    .line 541
    invoke-static {v5}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    move-object v5, v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-object v4, v2

    move-object v5, v4

    .line 545
    :cond_4
    iget-boolean v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsEsupl:Z

    if-eqz v0, :cond_6

    if-eqz v2, :cond_5

    .line 547
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$000(Lcom/mediatek/location/agps/apn/AgpsApn;)B

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    const-string v0, "use NetEmergemcy"

    .line 548
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 549
    iput-object v2, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNet:Landroid/net/Network;

    .line 550
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$600(Lcom/mediatek/location/agps/apn/AgpsApn;)Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReq:Landroid/net/NetworkRequest;

    return-void

    :cond_5
    if-eqz v4, :cond_6

    .line 552
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$000(Lcom/mediatek/location/agps/apn/AgpsApn;)B

    move-result v0

    and-int/2addr v0, v1

    if-nez v0, :cond_6

    const-string v0, "use NetIms"

    .line 553
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 554
    iput-object v4, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNet:Landroid/net/Network;

    .line 555
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$700(Lcom/mediatek/location/agps/apn/AgpsApn;)Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReq:Landroid/net/NetworkRequest;

    return-void

    .line 559
    :cond_6
    iget-boolean v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsSuplApn:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-virtual {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-virtual {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "use NetSupl"

    .line 560
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 561
    iput-object v5, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNet:Landroid/net/Network;

    .line 562
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$800(Lcom/mediatek/location/agps/apn/AgpsApn;)Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReq:Landroid/net/NetworkRequest;

    :cond_7
    return-void
.end method

.method queryDns()V
    .locals 19

    move-object/from16 v0, p0

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryDns() mIsQueried="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsQueried:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsReleased="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsReleased:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 644
    iget-boolean v1, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsQueried:Z

    if-nez v1, :cond_9

    iget-boolean v1, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsReleased:Z

    if-eqz v1, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v1, 0x1

    .line 645
    iput-boolean v1, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsQueried:Z

    .line 650
    iget-object v2, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v2}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$900(Lcom/mediatek/location/agps/apn/AgpsApn;)[B

    move-result-object v2

    const/4 v3, 0x0

    .line 653
    :try_start_0
    iget-object v4, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNet:Landroid/net/Network;

    if-eqz v4, :cond_1

    .line 654
    iget-object v5, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mFqdn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    goto :goto_0

    .line 656
    :cond_1
    iget-object v4, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mFqdn:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    .line 658
    :goto_0
    array-length v5, v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2

    move v6, v3

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_1
    if-ge v6, v5, :cond_4

    :try_start_1
    aget-object v10, v4, v6

    .line 659
    invoke-virtual {v10}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v11

    .line 660
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ia="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " bytes="

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-static {v11}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " network="

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNet:Landroid/net/Network;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 660
    invoke-static {v10}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 662
    array-length v10, v11
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v12, 0x4

    if-ne v10, v12, :cond_2

    if-nez v7, :cond_2

    const/4 v7, 0x3

    .line 664
    :try_start_2
    aget-byte v7, v11, v7
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v9, v7, 0x8

    const/4 v10, 0x2

    .line 665
    :try_start_3
    aget-byte v7, v11, v10

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v9

    shl-int/lit8 v9, v7, 0x8

    .line 666
    aget-byte v7, v11, v1

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v9

    shl-int/lit8 v9, v7, 0x8

    .line 667
    aget-byte v7, v11, v3
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v9, v7

    move v7, v1

    goto :goto_2

    :catch_0
    move v9, v7

    :catch_1
    move v7, v1

    goto :goto_3

    .line 668
    :cond_2
    :try_start_4
    array-length v10, v11
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_3

    const/16 v12, 0x10

    if-ne v10, v12, :cond_3

    if-nez v8, :cond_3

    move v8, v1

    move-object v2, v11

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_2
    move v7, v3

    move v8, v7

    move v9, v8

    .line 674
    :catch_3
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnknownHostException for fqdn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mFqdn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    :cond_4
    if-nez v7, :cond_6

    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    move v4, v3

    goto :goto_5

    :cond_6
    :goto_4
    move v4, v1

    .line 677
    :goto_5
    iget-object v5, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNet:Landroid/net/Network;

    if-eqz v5, :cond_7

    goto :goto_6

    :cond_7
    move v1, v3

    :goto_6
    if-eqz v1, :cond_8

    .line 678
    invoke-virtual {v5}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v5

    const/16 v3, 0x20

    shr-long/2addr v5, v3

    long-to-int v3, v5

    goto :goto_7

    :cond_8
    const/4 v3, -0x1

    .line 679
    :goto_7
    iget-object v5, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v5}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$400(Lcom/mediatek/location/agps/apn/AgpsApn;)Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;

    move-result-object v10

    iget-object v5, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v5}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$300(Lcom/mediatek/location/agps/apn/AgpsApn;)Lcom/mediatek/socket/base/UdpClient;

    move-result-object v11

    move v12, v4

    move v13, v7

    move v14, v9

    move v15, v8

    move-object/from16 v16, v2

    move/from16 v17, v1

    move/from16 v18, v3

    invoke-virtual/range {v10 .. v18}, Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;->DnsQueryResult2(Lcom/mediatek/socket/base/UdpClient;ZZIZ[BZI)Z

    move-result v5

    .line 681
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DnsQueryResult() fqdn="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mFqdn:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " isSuccess="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " hasIpv4="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " ipv4="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " hasIpv6="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " ipv6="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hasNetId="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " netId="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ret="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 681
    invoke-static {v1}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    if-nez v4, :cond_9

    .line 692
    iget-object v1, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-virtual {v1, v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->doReleaseNet(Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;)V

    :cond_9
    :goto_8
    return-void
.end method

.method declared-synchronized releaseNet()V
    .locals 3

    monitor-enter p0

    .line 697
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseNet() fqdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mFqdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " eSupl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsEsupl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " suplApn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsSuplApn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "remove net callback"

    .line 700
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$500(Lcom/mediatek/location/agps/apn/AgpsApn;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 702
    iput-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 703
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    const/16 v2, 0x66

    invoke-virtual {v0, v2, p0}, Lcom/mediatek/location/agps/apn/AgpsApn;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    .line 706
    iput-boolean v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsQueried:Z

    .line 707
    iput-boolean v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsReleased:Z

    .line 708
    iput-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReq:Landroid/net/NetworkRequest;

    .line 709
    iput-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNet:Landroid/net/Network;

    .line 710
    iput-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mFqdn:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method requestNet()V
    .locals 5

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestNet() mIsReleased="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsReleased:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 607
    iget-boolean v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsReleased:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 609
    invoke-virtual {p0}, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->decideRoute()V

    .line 610
    iget-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReq:Landroid/net/NetworkRequest;

    if-eqz v1, :cond_1

    .line 611
    new-instance v1, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq$2;

    invoke-direct {v1, p0}, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq$2;-><init>(Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;)V

    iput-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 627
    monitor-enter p0

    .line 628
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestNetwork by Req:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReq:Landroid/net/NetworkRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 629
    iget-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v1}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$500(Lcom/mediatek/location/agps/apn/AgpsApn;)Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReq:Landroid/net/NetworkRequest;

    iget-object v3, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 630
    iget-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    const/16 v2, 0x66

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, p0, v3, v4}, Lcom/mediatek/location/agps/apn/AgpsApn;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 631
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const-string v0, "No NetReq, run directDns"

    .line 634
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 638
    invoke-virtual {p0}, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->queryDns()V

    :cond_2
    return-void
.end method

.method waitNetReady()V
    .locals 4

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "waitNetReady() mIsEsupl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsEsupl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mEsuplApnMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v1}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$000(Lcom/mediatek/location/agps/apn/AgpsApn;)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIsSuplApn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsSuplApn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " hasIccCard()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    .line 569
    invoke-virtual {v1}, Lcom/mediatek/location/agps/apn/AgpsApn;->hasIccCard()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " !isAirplaneModeOn()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    .line 570
    invoke-virtual {v1}, Lcom/mediatek/location/agps/apn/AgpsApn;->isAirplaneModeOn()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 568
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 572
    iget-boolean v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsEsupl:Z

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$000(Lcom/mediatek/location/agps/apn/AgpsApn;)B

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const-string v0, "try to use NetEmergemcy"

    .line 575
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$600(Lcom/mediatek/location/agps/apn/AgpsApn;)Landroid/net/NetworkRequest;

    move-result-object v0

    goto :goto_0

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$000(Lcom/mediatek/location/agps/apn/AgpsApn;)B

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    const-string v0, "try to use NetIms"

    .line 578
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$700(Lcom/mediatek/location/agps/apn/AgpsApn;)Landroid/net/NetworkRequest;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 584
    new-instance v1, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq$1;

    invoke-direct {v1, p0}, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq$1;-><init>(Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;)V

    iput-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReadyCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 597
    iget-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v1}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$500(Lcom/mediatek/location/agps/apn/AgpsApn;)Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReadyCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 598
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    const/16 v1, 0x6f

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/mediatek/location/agps/apn/AgpsApn;->sendMessageDelayed(ILjava/lang/Object;J)V

    goto :goto_1

    :cond_2
    const-string v0, "No NetReq to wait ready, run requestNet"

    .line 600
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p0}, Lcom/mediatek/location/agps/apn/AgpsApn;->sendMessage(ILjava/lang/Object;)V

    :goto_1
    return-void
.end method
