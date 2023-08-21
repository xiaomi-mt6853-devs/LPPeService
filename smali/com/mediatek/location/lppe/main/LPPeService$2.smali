.class Lcom/mediatek/location/lppe/main/LPPeService$2;
.super Landroid/content/BroadcastReceiver;
.source "LPPeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/location/lppe/main/LPPeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/location/lppe/main/LPPeService;


# direct methods
.method constructor <init>(Lcom/mediatek/location/lppe/main/LPPeService;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$2;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 494
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.SCAN_RESULTS"

    .line 496
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$2;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0, p2}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2000(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 498
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$2;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0, p2}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2100(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 502
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 503
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$2;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0, p2}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2200(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 504
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 505
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$2;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0, p2}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2300(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 507
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 508
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$2;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0, p2}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2400(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v0, "android.bluetooth.device.action.FOUND"

    .line 509
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 510
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$2;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0, p2}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2500(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 513
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 514
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$2;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0, p2}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2600(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    const-string v0, "android.location.PROVIDERS_CHANGED"

    .line 515
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 516
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$2;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0, p2}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2700(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/content/Intent;)V

    goto :goto_0

    :cond_7
    const-string v0, "com.android.ims.IMS_SERVICE_UP"

    .line 519
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, -0x1

    const-string v0, "android:phone_id"

    .line 520
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "BroadcastReceiver.onReceive() ACTION_IMS_SERVICE_UP()"

    .line 521
    invoke-static {p2}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2800(Ljava/lang/Object;)V

    .line 522
    new-instance p2, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;

    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$2;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;-><init>(Lcom/mediatek/location/lppe/main/LPPeService;Lcom/mediatek/location/lppe/main/LPPeService$1;)V

    .line 523
    iput p1, p2, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;->mPhoneId:I

    .line 524
    invoke-virtual {p2}, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;->connectImsManager()V

    goto :goto_0

    .line 528
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[common] BroadcastReceiver.onReceive() receive an unhandle action=["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$1900(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
