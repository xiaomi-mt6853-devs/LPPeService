.class Lcom/mediatek/location/lppe/main/LPPeService$1;
.super Landroid/os/Handler;
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

    .line 418
    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$1;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 420
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x50

    if-eq v0, v1, :cond_2

    const/16 v1, 0x51

    if-eq v0, v1, :cond_1

    const/16 v1, 0x60

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    .line 485
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[common] Handler.handleMessage() unknow what="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$1900(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 471
    :pswitch_0
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$1;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/location/Address;

    invoke-static {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$1500(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/location/Address;)V

    goto/16 :goto_0

    .line 468
    :pswitch_1
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$1;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$1400(Lcom/mediatek/location/lppe/main/LPPeService;)V

    goto/16 :goto_0

    .line 465
    :pswitch_2
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$1;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$1300(Lcom/mediatek/location/lppe/main/LPPeService;)V

    goto/16 :goto_0

    .line 462
    :pswitch_3
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$1;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$1200(Lcom/mediatek/location/lppe/main/LPPeService;)V

    goto/16 :goto_0

    .line 459
    :pswitch_4
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$1;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$1100(Lcom/mediatek/location/lppe/main/LPPeService;)V

    goto :goto_0

    .line 456
    :pswitch_5
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$1;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$1000(Lcom/mediatek/location/lppe/main/LPPeService;)V

    goto :goto_0

    .line 452
    :pswitch_6
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$1;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$900(Lcom/mediatek/location/lppe/main/LPPeService;)V

    goto :goto_0

    .line 449
    :pswitch_7
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$1;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;

    invoke-static {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$800(Lcom/mediatek/location/lppe/main/LPPeService;Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;)V

    goto :goto_0

    .line 446
    :pswitch_8
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$1;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$700(Lcom/mediatek/location/lppe/main/LPPeService;)V

    goto :goto_0

    .line 442
    :pswitch_9
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$1;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$600(Lcom/mediatek/location/lppe/main/LPPeService;)V

    goto :goto_0

    .line 439
    :pswitch_a
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$1;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;

    invoke-static {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$500(Lcom/mediatek/location/lppe/main/LPPeService;Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;)V

    goto :goto_0

    .line 436
    :pswitch_b
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$1;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$400(Lcom/mediatek/location/lppe/main/LPPeService;)V

    goto :goto_0

    .line 432
    :pswitch_c
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$1;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$300(Lcom/mediatek/location/lppe/main/LPPeService;)V

    goto :goto_0

    .line 429
    :pswitch_d
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$1;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$200(Lcom/mediatek/location/lppe/main/LPPeService;)V

    goto :goto_0

    .line 426
    :pswitch_e
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$1;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$100(Lcom/mediatek/location/lppe/main/LPPeService;)V

    goto :goto_0

    .line 423
    :pswitch_f
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$1;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$000(Lcom/mediatek/location/lppe/main/LPPeService;)V

    goto :goto_0

    .line 482
    :cond_0
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$1;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$1800(Lcom/mediatek/location/lppe/main/LPPeService;)V

    goto :goto_0

    .line 478
    :cond_1
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$1;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$1700(Lcom/mediatek/location/lppe/main/LPPeService;)V

    goto :goto_0

    .line 475
    :cond_2
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$1;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$1600(Lcom/mediatek/location/lppe/main/LPPeService;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x40
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
