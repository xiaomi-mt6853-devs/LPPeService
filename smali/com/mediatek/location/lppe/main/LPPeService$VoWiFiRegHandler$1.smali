.class Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler$1;
.super Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;
.source "LPPeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;)V
    .locals 0

    .line 1965
    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler$1;->this$1:Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;

    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistered(I)V
    .locals 2

    .line 1969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[lbs][ims] onImsConnected imsRadioTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler$1;->this$1:Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;

    iget v1, v1, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2800(Ljava/lang/Object;)V

    .line 1970
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler$1;->this$1:Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;

    iget-object v0, v0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$4100(Lcom/mediatek/location/lppe/main/LPPeService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1971
    :try_start_0
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler$1;->this$1:Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mImsIsRegistered:Z

    .line 1972
    iput p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mImsRadioTech:I

    .line 1973
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->access$4200(Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;)V

    .line 1974
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onRegistering(I)V
    .locals 2

    .line 1980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[lbs][ims] onImsProgressing imsRadioTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler$1;->this$1:Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;

    iget v1, v1, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2800(Ljava/lang/Object;)V

    .line 1982
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler$1;->this$1:Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;

    iget-object v0, v0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$4100(Lcom/mediatek/location/lppe/main/LPPeService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1983
    :try_start_0
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler$1;->this$1:Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mImsIsRegistered:Z

    .line 1984
    iput p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mImsRadioTech:I

    .line 1985
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    .line 1990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[lbs][ims] onImsDisconnected imsReasonInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " phoneId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler$1;->this$1:Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;

    iget p1, p1, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mPhoneId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2800(Ljava/lang/Object;)V

    .line 1991
    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler$1;->this$1:Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;

    iget-object p1, p1, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$4100(Lcom/mediatek/location/lppe/main/LPPeService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1992
    :try_start_0
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler$1;->this$1:Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mImsIsRegistered:Z

    const/4 v0, -0x1

    .line 1993
    iput v0, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mImsRadioTech:I

    .line 1994
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->access$4200(Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;)V

    .line 1995
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
