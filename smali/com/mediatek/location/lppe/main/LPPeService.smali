.class public Lcom/mediatek/location/lppe/main/LPPeService;
.super Ljava/lang/Object;
.source "LPPeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/location/lppe/main/LPPeService$GeolocationThread;,
        Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;,
        Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;,
        Lcom/mediatek/location/lppe/main/LPPeService$LPPeServiceLogCallback;
    }
.end annotation


# static fields
.field private static LPPE_SOCKET_AGPS_CHANNEL:Ljava/lang/String; = "mtk_lppe_socket_agps"

.field private static LPPE_SOCKET_BT_CHANNEL:Ljava/lang/String; = "mtk_lppe_socket_bt"

.field private static LPPE_SOCKET_IPADDR_CHANNEL:Ljava/lang/String; = "mtk_lppe_socket_ipaddr"

.field private static LPPE_SOCKET_LBS_CHANNEL:Ljava/lang/String; = "mtk_lppe_socket_lbs"

.field private static LPPE_SOCKET_NETWORK_CHANNEL:Ljava/lang/String; = "mtk_lppe_socket_network"

.field private static LPPE_SOCKET_SENSOR_CHANNEL:Ljava/lang/String; = "mtk_lppe_socket_sensor"

.field private static LPPE_SOCKET_WLAN_CHANNEL:Ljava/lang/String; = "mtk_lppe_socket_wlan"

.field private static mLogCallback:Lcom/mediatek/location/lppe/main/LPPeService$LPPeServiceLogCallback;


# instance fields
.field private final LPPE_SENSOR_UNCALI_PRESSURE:Ljava/lang/String;

.field final WIFI_SCAN_ALWAYS_AVAILABLE:Ljava/lang/String;

.field private mBarometer:Landroid/hardware/Sensor;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBtAdp:Landroid/bluetooth/BluetoothAdapter;

.field private mBtManager:Landroid/bluetooth/BluetoothManager;

.field private mBtReceiver:Lcom/mediatek/location/lppe/bluetooth/LPPeBluetooth$LPPeBluetoothReceiver;

.field private mBtSender:Lcom/mediatek/location/lppe/bluetooth/LPPeBluetooth$LPPeBluetoothSender;

.field private mBtServer:Lcom/mediatek/socket/base/UdpServer;

.field private mBtSettingState:Z

.field private mBtState:I

.field private mCivicAddressRequested:Z

.field private mCivicAddressSupported:Z

.field private mClient:Lcom/mediatek/socket/base/UdpClient;

.field private mContext:Landroid/content/Context;

.field private mDebugEnabled:Z

.field private mGeolocationRequesting:Z

.field private mGeolocationThread:Lcom/mediatek/location/lppe/main/LPPeService$GeolocationThread;

.field private mGeolocationTime:J

.field private mHandler:Landroid/os/Handler;

.field private mIpAddrReceiver:Lcom/mediatek/location/lppe/ipaddr/LPPeIpAddress$LPPeIpAddressReceiver;

.field private mIpAddrSender:Lcom/mediatek/location/lppe/ipaddr/LPPeIpAddress$LPPeIpAddressSender;

.field private mIpAddrServer:Lcom/mediatek/socket/base/UdpServer;

.field private mIsUncaliBarometer:Z

.field private mLastBatteryPercentage:I

.field private mLbsReceiver:Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsReceiver;

.field private mLbsSender:Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsSender;

.field private mLbsServer:Lcom/mediatek/socket/base/UdpServer;

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLock:Ljava/lang/Object;

.field private mNetworkCapabilityRecheckCount:I

.field private mNetworkReceiver:Lcom/mediatek/location/lppe/network/LPPeNetwork$LPPeNetworkReceiver;

.field private mNetworkSender:Lcom/mediatek/location/lppe/network/LPPeNetwork$LPPeNetworkSender;

.field private mNetworkServer:Lcom/mediatek/socket/base/UdpServer;

.field private mNetworkSupported:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mSensorBaroEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorLastUpdateTime:J

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorReceiver:Lcom/mediatek/location/lppe/sensor/LPPeSensor$LPPeSensorReceiver;

.field private mSensorSender:Lcom/mediatek/location/lppe/sensor/LPPeSensor$LPPeSensorSender;

.field private mSensorServer:Lcom/mediatek/socket/base/UdpServer;

.field private mTelecom:Landroid/telecom/TelecomManager;

.field private mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private mTemperature:Landroid/hardware/Sensor;

.field mVoWiFiRegHandlerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mVoWifiRegStatus:I

.field private mWifiLastScanTime:J

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiReceiver:Lcom/mediatek/location/lppe/wlan/LPPeWlan$LPPeWlanReceiver;

.field private mWifiSender:Lcom/mediatek/location/lppe/wlan/LPPeWlan$LPPeWlanSender;

.field private mWifiServer:Lcom/mediatek/socket/base/UdpServer;

.field private mWifiSettingState:Z

.field private mWifiState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 248
    sget-object v2, Lcom/mediatek/location/lppe/main/LPPeService;->LPPE_SOCKET_AGPS_CHANNEL:Ljava/lang/String;

    sget-object v3, Lcom/mediatek/location/lppe/main/LPPeService;->LPPE_SOCKET_WLAN_CHANNEL:Ljava/lang/String;

    sget-object v4, Lcom/mediatek/location/lppe/main/LPPeService;->LPPE_SOCKET_BT_CHANNEL:Ljava/lang/String;

    sget-object v5, Lcom/mediatek/location/lppe/main/LPPeService;->LPPE_SOCKET_SENSOR_CHANNEL:Ljava/lang/String;

    sget-object v6, Lcom/mediatek/location/lppe/main/LPPeService;->LPPE_SOCKET_NETWORK_CHANNEL:Ljava/lang/String;

    sget-object v7, Lcom/mediatek/location/lppe/main/LPPeService;->LPPE_SOCKET_IPADDR_CHANNEL:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/location/lppe/main/LPPeService;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mDebugEnabled:Z

    .line 170
    new-instance v1, Lcom/mediatek/location/lppe/wlan/LPPeWlan$LPPeWlanSender;

    invoke-direct {v1}, Lcom/mediatek/location/lppe/wlan/LPPeWlan$LPPeWlanSender;-><init>()V

    iput-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiSender:Lcom/mediatek/location/lppe/wlan/LPPeWlan$LPPeWlanSender;

    .line 173
    iput v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiState:I

    const-wide/16 v1, 0x0

    .line 174
    iput-wide v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiLastScanTime:J

    .line 186
    new-instance v1, Lcom/mediatek/location/lppe/bluetooth/LPPeBluetooth$LPPeBluetoothSender;

    invoke-direct {v1}, Lcom/mediatek/location/lppe/bluetooth/LPPeBluetooth$LPPeBluetoothSender;-><init>()V

    iput-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtSender:Lcom/mediatek/location/lppe/bluetooth/LPPeBluetooth$LPPeBluetoothSender;

    .line 189
    iput v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtState:I

    const-string v1, "UNCALI_PRESSURE"

    .line 195
    iput-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->LPPE_SENSOR_UNCALI_PRESSURE:Ljava/lang/String;

    .line 202
    new-instance v1, Lcom/mediatek/location/lppe/sensor/LPPeSensor$LPPeSensorSender;

    invoke-direct {v1}, Lcom/mediatek/location/lppe/sensor/LPPeSensor$LPPeSensorSender;-><init>()V

    iput-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mSensorSender:Lcom/mediatek/location/lppe/sensor/LPPeSensor$LPPeSensorSender;

    .line 214
    new-instance v1, Lcom/mediatek/location/lppe/network/LPPeNetwork$LPPeNetworkSender;

    invoke-direct {v1}, Lcom/mediatek/location/lppe/network/LPPeNetwork$LPPeNetworkSender;-><init>()V

    iput-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mNetworkSender:Lcom/mediatek/location/lppe/network/LPPeNetwork$LPPeNetworkSender;

    const/4 v1, 0x6

    .line 222
    iput v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mNetworkCapabilityRecheckCount:I

    .line 229
    new-instance v2, Lcom/mediatek/location/lppe/ipaddr/LPPeIpAddress$LPPeIpAddressSender;

    invoke-direct {v2}, Lcom/mediatek/location/lppe/ipaddr/LPPeIpAddress$LPPeIpAddressSender;-><init>()V

    iput-object v2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mIpAddrSender:Lcom/mediatek/location/lppe/ipaddr/LPPeIpAddress$LPPeIpAddressSender;

    .line 236
    new-instance v2, Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsSender;

    invoke-direct {v2}, Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsSender;-><init>()V

    iput-object v2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLbsSender:Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsSender;

    const/4 v2, -0x1

    .line 238
    iput v2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLastBatteryPercentage:I

    .line 243
    iput v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mVoWifiRegStatus:I

    .line 244
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLock:Ljava/lang/Object;

    .line 245
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mVoWiFiRegHandlerList:Ljava/util/ArrayList;

    .line 418
    new-instance v2, Lcom/mediatek/location/lppe/main/LPPeService$1;

    invoke-direct {v2, p0}, Lcom/mediatek/location/lppe/main/LPPeService$1;-><init>(Lcom/mediatek/location/lppe/main/LPPeService;)V

    iput-object v2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mHandler:Landroid/os/Handler;

    .line 491
    new-instance v2, Lcom/mediatek/location/lppe/main/LPPeService$2;

    invoke-direct {v2, p0}, Lcom/mediatek/location/lppe/main/LPPeService$2;-><init>(Lcom/mediatek/location/lppe/main/LPPeService;)V

    iput-object v2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 534
    new-instance v2, Lcom/mediatek/location/lppe/main/LPPeService$3;

    invoke-direct {v2, p0}, Lcom/mediatek/location/lppe/main/LPPeService$3;-><init>(Lcom/mediatek/location/lppe/main/LPPeService;)V

    iput-object v2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mSensorBaroEventListener:Landroid/hardware/SensorEventListener;

    .line 546
    new-instance v2, Lcom/mediatek/location/lppe/main/LPPeService$4;

    invoke-direct {v2, p0}, Lcom/mediatek/location/lppe/main/LPPeService$4;-><init>(Lcom/mediatek/location/lppe/main/LPPeService;)V

    iput-object v2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLocationListener:Landroid/location/LocationListener;

    .line 565
    new-instance v2, Lcom/mediatek/location/lppe/main/LPPeService$5;

    invoke-direct {v2, p0}, Lcom/mediatek/location/lppe/main/LPPeService$5;-><init>(Lcom/mediatek/location/lppe/main/LPPeService;)V

    iput-object v2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiReceiver:Lcom/mediatek/location/lppe/wlan/LPPeWlan$LPPeWlanReceiver;

    .line 598
    new-instance v2, Lcom/mediatek/location/lppe/main/LPPeService$6;

    invoke-direct {v2, p0}, Lcom/mediatek/location/lppe/main/LPPeService$6;-><init>(Lcom/mediatek/location/lppe/main/LPPeService;)V

    iput-object v2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtReceiver:Lcom/mediatek/location/lppe/bluetooth/LPPeBluetooth$LPPeBluetoothReceiver;

    .line 638
    new-instance v2, Lcom/mediatek/location/lppe/main/LPPeService$7;

    invoke-direct {v2, p0}, Lcom/mediatek/location/lppe/main/LPPeService$7;-><init>(Lcom/mediatek/location/lppe/main/LPPeService;)V

    iput-object v2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mSensorReceiver:Lcom/mediatek/location/lppe/sensor/LPPeSensor$LPPeSensorReceiver;

    .line 673
    new-instance v2, Lcom/mediatek/location/lppe/main/LPPeService$8;

    invoke-direct {v2, p0}, Lcom/mediatek/location/lppe/main/LPPeService$8;-><init>(Lcom/mediatek/location/lppe/main/LPPeService;)V

    iput-object v2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mNetworkReceiver:Lcom/mediatek/location/lppe/network/LPPeNetwork$LPPeNetworkReceiver;

    .line 726
    new-instance v2, Lcom/mediatek/location/lppe/main/LPPeService$9;

    invoke-direct {v2, p0}, Lcom/mediatek/location/lppe/main/LPPeService$9;-><init>(Lcom/mediatek/location/lppe/main/LPPeService;)V

    iput-object v2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mIpAddrReceiver:Lcom/mediatek/location/lppe/ipaddr/LPPeIpAddress$LPPeIpAddressReceiver;

    .line 755
    new-instance v2, Lcom/mediatek/location/lppe/main/LPPeService$10;

    invoke-direct {v2, p0}, Lcom/mediatek/location/lppe/main/LPPeService$10;-><init>(Lcom/mediatek/location/lppe/main/LPPeService;)V

    iput-object v2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLbsReceiver:Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsReceiver;

    const-string v2, "wifi_scan_always_enabled"

    .line 1037
    iput-object v2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->WIFI_SCAN_ALWAYS_AVAILABLE:Ljava/lang/String;

    const-string v2, "LPPeService() ver=11"

    .line 256
    invoke-static {v2}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 258
    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mContext:Landroid/content/Context;

    .line 259
    sput-object p2, Lcom/mediatek/location/lppe/main/LPPeService;->LPPE_SOCKET_AGPS_CHANNEL:Ljava/lang/String;

    .line 260
    sput-object p3, Lcom/mediatek/location/lppe/main/LPPeService;->LPPE_SOCKET_WLAN_CHANNEL:Ljava/lang/String;

    .line 261
    sput-object p4, Lcom/mediatek/location/lppe/main/LPPeService;->LPPE_SOCKET_BT_CHANNEL:Ljava/lang/String;

    .line 262
    sput-object p5, Lcom/mediatek/location/lppe/main/LPPeService;->LPPE_SOCKET_SENSOR_CHANNEL:Ljava/lang/String;

    .line 263
    sput-object p6, Lcom/mediatek/location/lppe/main/LPPeService;->LPPE_SOCKET_NETWORK_CHANNEL:Ljava/lang/String;

    .line 264
    sput-object p7, Lcom/mediatek/location/lppe/main/LPPeService;->LPPE_SOCKET_IPADDR_CHANNEL:Ljava/lang/String;

    const-string p2, "wifi"

    .line 267
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez p2, :cond_0

    const-string p2, "[wlan] getSystemService(WIFI_SERVICE) is not supported"

    .line 269
    invoke-static {p2}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    :cond_0
    const-string p2, "bluetooth"

    .line 273
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothManager;

    iput-object p2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtManager:Landroid/bluetooth/BluetoothManager;

    if-nez p2, :cond_1

    const-string p2, "[bt] getSystemService(BLUETOOTH_SERVICE) is not supported"

    .line 275
    invoke-static {p2}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtAdp:Landroid/bluetooth/BluetoothAdapter;

    if-nez p2, :cond_2

    const-string p2, "[bt] BluetoothAdapter.getDefaultAdapter() is not supported"

    .line 279
    invoke-static {p2}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    const-string p2, "sensor"

    .line 284
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez p2, :cond_3

    const-string p2, "[sensor] getSystemService(Context.SENSOR_SERVICE) is not supported"

    .line 286
    invoke-static {p2}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    goto :goto_1

    .line 288
    :cond_3
    invoke-virtual {p2, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    iput-object p2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBarometer:Landroid/hardware/Sensor;

    if-nez p2, :cond_4

    const-string p2, "[sensor] SensorManager.getDefaultSensor(Sensor.TYPE_PRESSURE) is not supported"

    .line 290
    invoke-static {p2}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    .line 293
    :cond_4
    iget-object p2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 p3, 0xd

    .line 294
    invoke-virtual {p2, p3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    iput-object p2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mTemperature:Landroid/hardware/Sensor;

    if-nez p2, :cond_5

    const-string p2, "[sensor] SensorManager.getDefaultSensor(Sensor.TYPE_AMBIENT_TEMPERATURE) is not supported"

    .line 296
    invoke-static {p2}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    .line 319
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p2, "location"

    .line 321
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/location/LocationManager;

    iput-object p2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLocationManager:Landroid/location/LocationManager;

    if-nez p2, :cond_6

    const-string p2, "[network] getSystemService(Context.LOCATION_SERVICE) is not supported"

    .line 323
    invoke-static {p2}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    const-string p3, "network"

    .line 326
    invoke-virtual {p2, p3}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object p2

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    goto :goto_2

    :cond_7
    move p2, v0

    :goto_2
    iput-boolean p2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mNetworkSupported:Z

    const/16 p3, 0x2710

    const/16 p4, 0x43

    if-nez p2, :cond_8

    const-string p2, "[network] NETWORK_PROVIDER is not supported"

    .line 328
    invoke-static {p2}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    .line 329
    invoke-direct {p0, p4, p3}, Lcom/mediatek/location/lppe/main/LPPeService;->commonSendEventToHandlerWithDelay(II)V

    .line 332
    :cond_8
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result p2

    iput-boolean p2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mCivicAddressSupported:Z

    if-nez p2, :cond_9

    const-string p2, "[network] Geocoder is not supported"

    .line 334
    invoke-static {p2}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    .line 335
    invoke-direct {p0, p4, p3}, Lcom/mediatek/location/lppe/main/LPPeService;->commonSendEventToHandlerWithDelay(II)V

    .line 340
    :cond_9
    :goto_3
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 341
    iget-object p3, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p3, :cond_a

    const-string p3, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 342
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.net.wifi.SCAN_RESULTS"

    .line 343
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    :cond_a
    iget-object p3, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtAdp:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p3, :cond_b

    const-string p3, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 346
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 347
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 348
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.bluetooth.device.action.FOUND"

    .line 349
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_b
    const-string p3, "android.intent.action.BATTERY_CHANGED"

    .line 351
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "com.android.ims.IMS_SERVICE_UP"

    .line 353
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    iget-object p3, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 357
    new-instance p1, Lcom/mediatek/socket/base/UdpClient;

    sget-object p2, Lcom/mediatek/location/lppe/main/LPPeService;->LPPE_SOCKET_AGPS_CHANNEL:Ljava/lang/String;

    sget-object p3, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    .line 358
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->commonGetMaxBuffSize()I

    move-result p4

    invoke-direct {p1, p2, p3, p4}, Lcom/mediatek/socket/base/UdpClient;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;I)V

    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mClient:Lcom/mediatek/socket/base/UdpClient;

    .line 360
    new-instance p1, Lcom/mediatek/socket/base/UdpServer;

    sget-object p2, Lcom/mediatek/location/lppe/main/LPPeService;->LPPE_SOCKET_WLAN_CHANNEL:Ljava/lang/String;

    sget-object p3, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    const/16 p4, 0x10cc

    invoke-direct {p1, p2, p3, p4}, Lcom/mediatek/socket/base/UdpServer;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;I)V

    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiServer:Lcom/mediatek/socket/base/UdpServer;

    .line 362
    new-instance p1, Lcom/mediatek/socket/base/UdpServer;

    sget-object p2, Lcom/mediatek/location/lppe/main/LPPeService;->LPPE_SOCKET_BT_CHANNEL:Ljava/lang/String;

    sget-object p3, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    const/16 p4, 0x24

    invoke-direct {p1, p2, p3, p4}, Lcom/mediatek/socket/base/UdpServer;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;I)V

    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtServer:Lcom/mediatek/socket/base/UdpServer;

    .line 364
    new-instance p1, Lcom/mediatek/socket/base/UdpServer;

    sget-object p2, Lcom/mediatek/location/lppe/main/LPPeService;->LPPE_SOCKET_SENSOR_CHANNEL:Ljava/lang/String;

    sget-object p3, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    const/16 p4, 0x17

    invoke-direct {p1, p2, p3, p4}, Lcom/mediatek/socket/base/UdpServer;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;I)V

    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mSensorServer:Lcom/mediatek/socket/base/UdpServer;

    .line 366
    new-instance p1, Lcom/mediatek/socket/base/UdpServer;

    sget-object p2, Lcom/mediatek/location/lppe/main/LPPeService;->LPPE_SOCKET_NETWORK_CHANNEL:Ljava/lang/String;

    sget-object p3, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    const/16 p4, 0x166

    invoke-direct {p1, p2, p3, p4}, Lcom/mediatek/socket/base/UdpServer;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;I)V

    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mNetworkServer:Lcom/mediatek/socket/base/UdpServer;

    .line 368
    new-instance p1, Lcom/mediatek/socket/base/UdpServer;

    sget-object p2, Lcom/mediatek/location/lppe/main/LPPeService;->LPPE_SOCKET_IPADDR_CHANNEL:Ljava/lang/String;

    sget-object p3, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    const/16 p4, 0xc0

    invoke-direct {p1, p2, p3, p4}, Lcom/mediatek/socket/base/UdpServer;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;I)V

    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mIpAddrServer:Lcom/mediatek/socket/base/UdpServer;

    .line 370
    new-instance p1, Lcom/mediatek/socket/base/UdpServer;

    sget-object p2, Lcom/mediatek/location/lppe/main/LPPeService;->LPPE_SOCKET_LBS_CHANNEL:Ljava/lang/String;

    sget-object p3, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    const/16 p4, 0x100c

    invoke-direct {p1, p2, p3, p4}, Lcom/mediatek/socket/base/UdpServer;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;I)V

    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLbsServer:Lcom/mediatek/socket/base/UdpServer;

    .line 373
    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiServer:Lcom/mediatek/socket/base/UdpServer;

    iget-object p2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiReceiver:Lcom/mediatek/location/lppe/wlan/LPPeWlan$LPPeWlanReceiver;

    invoke-virtual {p1, p2}, Lcom/mediatek/socket/base/UdpServer;->setReceiver(Lcom/mediatek/socket/base/SocketUtils$ProtocolHandler;)V

    .line 374
    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtServer:Lcom/mediatek/socket/base/UdpServer;

    iget-object p2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtReceiver:Lcom/mediatek/location/lppe/bluetooth/LPPeBluetooth$LPPeBluetoothReceiver;

    invoke-virtual {p1, p2}, Lcom/mediatek/socket/base/UdpServer;->setReceiver(Lcom/mediatek/socket/base/SocketUtils$ProtocolHandler;)V

    .line 375
    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mSensorServer:Lcom/mediatek/socket/base/UdpServer;

    iget-object p2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mSensorReceiver:Lcom/mediatek/location/lppe/sensor/LPPeSensor$LPPeSensorReceiver;

    invoke-virtual {p1, p2}, Lcom/mediatek/socket/base/UdpServer;->setReceiver(Lcom/mediatek/socket/base/SocketUtils$ProtocolHandler;)V

    .line 376
    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mNetworkServer:Lcom/mediatek/socket/base/UdpServer;

    iget-object p2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mNetworkReceiver:Lcom/mediatek/location/lppe/network/LPPeNetwork$LPPeNetworkReceiver;

    invoke-virtual {p1, p2}, Lcom/mediatek/socket/base/UdpServer;->setReceiver(Lcom/mediatek/socket/base/SocketUtils$ProtocolHandler;)V

    .line 377
    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mIpAddrServer:Lcom/mediatek/socket/base/UdpServer;

    iget-object p2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mIpAddrReceiver:Lcom/mediatek/location/lppe/ipaddr/LPPeIpAddress$LPPeIpAddressReceiver;

    invoke-virtual {p1, p2}, Lcom/mediatek/socket/base/UdpServer;->setReceiver(Lcom/mediatek/socket/base/SocketUtils$ProtocolHandler;)V

    .line 378
    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLbsServer:Lcom/mediatek/socket/base/UdpServer;

    iget-object p2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLbsReceiver:Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsReceiver;

    invoke-virtual {p1, p2}, Lcom/mediatek/socket/base/UdpServer;->setReceiver(Lcom/mediatek/socket/base/SocketUtils$ProtocolHandler;)V

    .line 381
    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiReceiver:Lcom/mediatek/location/lppe/wlan/LPPeWlan$LPPeWlanReceiver;

    invoke-virtual {p1, v0}, Lcom/mediatek/location/lppe/wlan/LPPeWlan$LPPeWlanReceiver;->requestCapabilities(I)V

    .line 382
    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtReceiver:Lcom/mediatek/location/lppe/bluetooth/LPPeBluetooth$LPPeBluetoothReceiver;

    invoke-virtual {p1, v0}, Lcom/mediatek/location/lppe/bluetooth/LPPeBluetooth$LPPeBluetoothReceiver;->requestCapabilities(I)V

    .line 383
    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mSensorReceiver:Lcom/mediatek/location/lppe/sensor/LPPeSensor$LPPeSensorReceiver;

    invoke-virtual {p1, v0}, Lcom/mediatek/location/lppe/sensor/LPPeSensor$LPPeSensorReceiver;->requestCapabilities(I)V

    .line 384
    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mNetworkReceiver:Lcom/mediatek/location/lppe/network/LPPeNetwork$LPPeNetworkReceiver;

    invoke-virtual {p1, v0}, Lcom/mediatek/location/lppe/network/LPPeNetwork$LPPeNetworkReceiver;->requestCapabilities(I)V

    .line 385
    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mIpAddrReceiver:Lcom/mediatek/location/lppe/ipaddr/LPPeIpAddress$LPPeIpAddressReceiver;

    invoke-virtual {p1, v0}, Lcom/mediatek/location/lppe/ipaddr/LPPeIpAddress$LPPeIpAddressReceiver;->requestCapabilities(I)V

    .line 386
    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLbsReceiver:Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsReceiver;

    invoke-virtual {p1, v0}, Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsReceiver;->requestCapabilities(I)V

    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->registerSettingsObserver()V

    .line 388
    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mContext:Landroid/content/Context;

    const-string p2, "telecom"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mTelecom:Landroid/telecom/TelecomManager;

    .line 389
    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mContext:Landroid/content/Context;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/location/lppe/main/LPPeService;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->wifiProvideCapabilitiesHandler()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/location/lppe/main/LPPeService;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->wifiStartMeasurementHandler()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/location/lppe/main/LPPeService;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->networkProvideCapabilitiesHandler()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/location/lppe/main/LPPeService;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->networkStartMeasurementHandler()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/location/lppe/main/LPPeService;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->networkStopMeasurementHandler()V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/location/lppe/main/LPPeService;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->networkRecheckCapabilitiesHandler()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/location/lppe/main/LPPeService;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->networkCivicAddrRequestHandler()V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/location/Address;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->networkCivicAddrUpdateHandler(Landroid/location/Address;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/location/lppe/main/LPPeService;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->ipaddrProvideCapabilitiesHandler()V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/location/lppe/main/LPPeService;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->ipaddrProvideInformationHandler()V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/location/lppe/main/LPPeService;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->lbsProvideCapabilitiesHandler()V

    return-void
.end method

.method static synthetic access$1900(Ljava/lang/Object;)V
    .locals 0

    .line 103
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/location/lppe/main/LPPeService;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->wifiStopMeasurementHandler()V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/content/Intent;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->wifiScanResultHandler(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/content/Intent;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->wifiStateChangedHandler(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/content/Intent;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->btStateChangedHandler(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/content/Intent;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->btDiscoveryStartedHandler(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/content/Intent;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->btDiscoveryFinishedHandler(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/content/Intent;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->btDeviceFoundHandler(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/content/Intent;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->lbsBatteryChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/content/Intent;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->lbsNlpStatusChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2800(Ljava/lang/Object;)V
    .locals 0

    .line 103
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/location/lppe/main/LPPeService;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->wifiResumeScanHandler()V

    return-void
.end method

.method static synthetic access$3000(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/hardware/Sensor;I)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/mediatek/location/lppe/main/LPPeService;->sensorBaroAccuracyChangedHandler(Landroid/hardware/Sensor;I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->sensorBaroSensorChangedHandler(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/location/Location;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->networkLocationChangedHandler(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/mediatek/location/lppe/main/LPPeService;I)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->commonSendEventToHandler(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/mediatek/location/lppe/main/LPPeService;ILjava/lang/Object;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/mediatek/location/lppe/main/LPPeService;->commonSendEventToHandler(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/mediatek/location/lppe/main/LPPeService;)Landroid/telecom/TelecomManager;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mTelecom:Landroid/telecom/TelecomManager;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/mediatek/location/lppe/main/LPPeService;)Z
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->isInEmergency()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/mediatek/location/lppe/main/LPPeService;)Landroid/content/Context;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/content/Context;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->addPackageInLocationSettingsWhitelist(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/mediatek/location/lppe/main/LPPeService;II)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/mediatek/location/lppe/main/LPPeService;->commonSendEventToHandlerWithDelay(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/location/lppe/main/LPPeService;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->btProvideCapabilitiesHandler()V

    return-void
.end method

.method static synthetic access$4002(Lcom/mediatek/location/lppe/main/LPPeService;Z)Z
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mCivicAddressRequested:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/mediatek/location/lppe/main/LPPeService;)Ljava/lang/Object;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/mediatek/location/lppe/main/LPPeService;)I
    .locals 0

    .line 103
    iget p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mVoWifiRegStatus:I

    return p0
.end method

.method static synthetic access$4372(Lcom/mediatek/location/lppe/main/LPPeService;I)I
    .locals 1

    .line 103
    iget v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mVoWifiRegStatus:I

    and-int/2addr p1, v0

    iput p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mVoWifiRegStatus:I

    return p1
.end method

.method static synthetic access$4376(Lcom/mediatek/location/lppe/main/LPPeService;I)I
    .locals 1

    .line 103
    iget v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mVoWifiRegStatus:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mVoWifiRegStatus:I

    return p1
.end method

.method static synthetic access$4400(Lcom/mediatek/location/lppe/main/LPPeService;)Lcom/mediatek/socket/base/UdpClient;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mClient:Lcom/mediatek/socket/base/UdpClient;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/mediatek/location/lppe/main/LPPeService;)Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsSender;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLbsSender:Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsSender;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/mediatek/location/lppe/main/LPPeService;ILcom/android/ims/ImsManager;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/mediatek/location/lppe/main/LPPeService;->registerVowifiStateChange(ILcom/android/ims/ImsManager;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/location/lppe/main/LPPeService;Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->btStartMeasurementHandler(Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/mediatek/location/lppe/main/LPPeService;)Landroid/os/Handler;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/mediatek/location/lppe/main/LPPeService;I)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->unRegisterVowifiStateChange(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/location/lppe/main/LPPeService;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->btStopMeasurementHandler()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/location/lppe/main/LPPeService;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->sensorProvideCapabilitiesHandler()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/location/lppe/main/LPPeService;Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->sensorStartMeasurementHandler(Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/location/lppe/main/LPPeService;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->sensorStopMeasurementHandler()V

    return-void
.end method

.method private addPackageInLocationSettingsWhitelist(Landroid/content/Context;)V
    .locals 5

    .line 1833
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "location"

    const-string v0, "ignore_settings_allowlist"

    const-string v1, ""

    .line 1835
    invoke-static {p1, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1837
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 1838
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1839
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1840
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore settings outStr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 1841
    invoke-static {p1, v0, p0, v1}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_2
    return-void
.end method

.method private static btConvertTypeToCategory(I)Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 1243
    sget-object p0, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;->unknown:Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    return-object p0

    .line 1241
    :cond_0
    sget-object p0, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;->bt:Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    return-object p0

    .line 1239
    :cond_1
    sget-object p0, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;->btle:Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    return-object p0

    .line 1237
    :cond_2
    sget-object p0, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;->bt:Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    return-object p0
.end method

.method private btDeviceFoundHandler(Landroid/content/Intent;)V
    .locals 3

    .line 1211
    iget v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtState:I

    if-eqz v0, :cond_1

    .line 1212
    invoke-static {p1}, Lcom/mediatek/location/lppe/main/LPPeService;->btDumpDevice(Landroid/content/Intent;)V

    const/4 v0, 0x2

    .line 1214
    iput v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtState:I

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 1216
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1218
    new-instance v1, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;

    invoke-direct {v1}, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;-><init>()V

    if-eqz v0, :cond_0

    .line 1221
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/location/lppe/main/LPPeService;->commonMacStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->mac:[B

    .line 1222
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->btConvertTypeToCategory(I)Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    move-result-object v0

    iput-object v0, v1, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->category:Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    :cond_0
    const/4 v0, 0x1

    .line 1224
    iput-boolean v0, v1, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->rssiValid:Z

    const/16 v0, -0x8000

    const-string v2, "android.bluetooth.device.extra.RSSI"

    .line 1225
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result p1

    iput-short p1, v1, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->rssi:S

    .line 1228
    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtSender:Lcom/mediatek/location/lppe/bluetooth/LPPeBluetooth$LPPeBluetoothSender;

    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mClient:Lcom/mediatek/socket/base/UdpClient;

    invoke-virtual {p1, p0, v1}, Lcom/mediatek/location/lppe/bluetooth/LPPeBluetooth$LPPeBluetoothSender;->provideMeasurement(Lcom/mediatek/socket/base/UdpClient;Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "[bt] DeviceFound() mBtSender.provideMeasurement() failed"

    .line 1229
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private btDiscoveryFinishedHandler(Landroid/content/Intent;)V
    .locals 1

    .line 1198
    iget p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtState:I

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 1199
    iput p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtState:I

    .line 1200
    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtSender:Lcom/mediatek/location/lppe/bluetooth/LPPeBluetooth$LPPeBluetoothSender;

    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mClient:Lcom/mediatek/socket/base/UdpClient;

    invoke-virtual {p1, v0}, Lcom/mediatek/location/lppe/bluetooth/LPPeBluetooth$LPPeBluetoothSender;->provideMeasurementFinished(Lcom/mediatek/socket/base/UdpClient;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "[bt] DiscoveryFinished() mBtSender.provideMeasurementFinished() failed"

    .line 1201
    invoke-static {p1}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    :cond_0
    const-string p1, "[bt] DiscoveryFinished() startDiscovery()"

    .line 1203
    invoke-static {p1}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 1204
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtAdp:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "[bt] DiscoveryFinished() startDiscovery() failed"

    .line 1205
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private btDiscoveryStartedHandler(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method private static btDumpDevice(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 1260
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 1262
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 1263
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 1264
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v0

    const/16 v1, -0x8000

    const-string v2, "android.bluetooth.device.extra.RSSI"

    .line 1265
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result p0

    .line 1267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[bt] DumpDevice() tick=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mediatek/location/lppe/main/LPPeService;->getTick()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] type=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->btGetDevTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] rssi=["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1267
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static btGetDevTypeString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "BR/EDR"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "BLE"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "Dual"

    return-object p0

    :cond_2
    const-string p0, "Unknown"

    return-object p0
.end method

.method private btProvideCapabilitiesHandler()V
    .locals 3

    .line 1117
    new-instance v0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;-><init>()V

    .line 1118
    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtAdp:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1119
    iput-boolean v2, v0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btSupported:Z

    .line 1120
    iput-boolean v2, v0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btRssi:Z

    .line 1121
    iput-boolean v2, v0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleSupported:Z

    .line 1122
    iput-boolean v2, v0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleRssi:Z

    .line 1124
    :cond_0
    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtSender:Lcom/mediatek/location/lppe/bluetooth/LPPeBluetooth$LPPeBluetoothSender;

    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mClient:Lcom/mediatek/socket/base/UdpClient;

    invoke-virtual {v1, p0, v2, v0}, Lcom/mediatek/location/lppe/bluetooth/LPPeBluetooth$LPPeBluetoothSender;->provideCapabilities(Lcom/mediatek/socket/base/UdpClient;ILcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "[bt] ProvideCapabilities() mBtSender.provideCapabilities() failed"

    .line 1125
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private btStartMeasurementHandler(Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;)V
    .locals 2

    .line 1130
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtAdp:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const-string p0, "[bt] StartMeasurement() BT is not supported"

    .line 1131
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    return-void

    .line 1134
    :cond_0
    iget v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtState:I

    if-eqz v1, :cond_1

    .line 1135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[bt] StartMeasurement() already started, state="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    return-void

    .line 1138
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtSettingState:Z

    .line 1139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[bt] StartMeasurement()  request=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 1140
    iget-boolean p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtSettingState:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    .line 1141
    iput p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtState:I

    const-string p1, "[bt] StartMeasurement() startDiscovery()"

    .line 1142
    invoke-static {p1}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 1143
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtAdp:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "[bt] StartMeasurement() startDiscovery() failed"

    .line 1144
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    goto :goto_0

    .line 1146
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->isInEmergency()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 1147
    iput p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtState:I

    const-string p1, "[bt] StartMeasurement() enable() in emergency call"

    .line 1148
    invoke-static {p1}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 1149
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtAdp:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "[bt] StartMeasurement() enable() failed"

    .line 1150
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string p0, "[bt] StartMeasurement() skipped due to non-emergency call with BT OFF"

    .line 1153
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private btStateChangedHandler(Landroid/content/Intent;)V
    .locals 1

    .line 1178
    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtAdp:Landroid/bluetooth/BluetoothAdapter;

    if-nez p1, :cond_0

    const-string p0, "[bt] StateChanged() BT is not supported"

    .line 1179
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    return-void

    .line 1182
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1183
    iget p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    .line 1184
    iput p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtState:I

    const-string p1, "[bt] StateChanged() startDiscovery()"

    .line 1185
    invoke-static {p1}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 1186
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtAdp:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "[bt] StateChanged() startDiscovery() failed"

    .line 1187
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private btStopMeasurementHandler()V
    .locals 1

    .line 1158
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtAdp:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const-string p0, "[bt] StopMeasurement() BT is not supported"

    .line 1159
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    return-void

    .line 1162
    :cond_0
    iget v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtState:I

    if-nez v0, :cond_1

    const-string p0, "[bt] StopMeasurement() already stopped"

    .line 1163
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "[bt] StopMeasurement()"

    .line 1166
    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1167
    iput v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtState:I

    .line 1168
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtAdp:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 1169
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtSettingState:Z

    if-nez v0, :cond_2

    const-string v0, "[bt] StopMeasurement() disable() to restore to previous state"

    .line 1170
    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 1171
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtAdp:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "[bt] StopMeasurement() disable() failed"

    .line 1172
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private checkLocationProxyAppPermission()Z
    .locals 3

    .line 1921
    invoke-virtual {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loadProxyNameFromCarrierConfig()Ljava/lang/String;

    move-result-object v0

    .line 1922
    invoke-direct {p0, v0}, Lcom/mediatek/location/lppe/main/LPPeService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1923
    invoke-direct {p0, v0}, Lcom/mediatek/location/lppe/main/LPPeService;->hasLocationPermission(Ljava/lang/String;)Z

    move-result p0

    .line 1924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proxyApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " proxyAppLocationGranted = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    return p0

    .line 1928
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nfw proxy package is not installed: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method private commonGetMaxBuffSize()I
    .locals 0

    const/16 p0, 0x10cc

    return p0
.end method

.method private static commonMacStringToByteArray(Ljava/lang/String;)[B
    .locals 5

    const-string v0, ":"

    .line 833
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 836
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private commonSendEventToHandler(I)V
    .locals 1

    const/4 v0, 0x0

    .line 795
    invoke-direct {p0, p1, v0}, Lcom/mediatek/location/lppe/main/LPPeService;->commonSendEventToHandler(ILjava/lang/Object;)V

    return-void
.end method

.method private commonSendEventToHandler(ILjava/lang/Object;)V
    .locals 1

    .line 799
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 800
    iput p1, v0, Landroid/os/Message;->what:I

    .line 801
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 802
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private commonSendEventToHandlerWithDelay(II)V
    .locals 1

    .line 806
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 807
    iput p1, v0, Landroid/os/Message;->what:I

    const/4 p1, 0x0

    .line 808
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 809
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mHandler:Landroid/os/Handler;

    int-to-long p1, p2

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private static getTick()J
    .locals 4

    .line 1698
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private hasLocationPermission(Ljava/lang/String;)Z
    .locals 1

    .line 1916
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private ipaddrProvideCapabilitiesHandler()V
    .locals 3

    .line 1515
    new-instance v0, Lcom/mediatek/location/lppe/ipaddr/IpAddressCapabilities;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/ipaddr/IpAddressCapabilities;-><init>()V

    const/4 v1, 0x1

    .line 1516
    iput-boolean v1, v0, Lcom/mediatek/location/lppe/ipaddr/IpAddressCapabilities;->ipv4:Z

    .line 1517
    iput-boolean v1, v0, Lcom/mediatek/location/lppe/ipaddr/IpAddressCapabilities;->ipv6:Z

    const/4 v2, 0x0

    .line 1518
    iput-boolean v2, v0, Lcom/mediatek/location/lppe/ipaddr/IpAddressCapabilities;->nat:Z

    .line 1519
    iget-object v2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mIpAddrSender:Lcom/mediatek/location/lppe/ipaddr/LPPeIpAddress$LPPeIpAddressSender;

    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mClient:Lcom/mediatek/socket/base/UdpClient;

    invoke-virtual {v2, p0, v1, v0}, Lcom/mediatek/location/lppe/ipaddr/LPPeIpAddress$LPPeIpAddressSender;->provideCapabilities(Lcom/mediatek/socket/base/UdpClient;ILcom/mediatek/location/lppe/ipaddr/IpAddressCapabilities;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "[ip] ipaddrProvideCapabilitiesHandler() mIpAddrSender.provideCapabilities() failed"

    .line 1521
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private ipaddrProvideInformationHandler()V
    .locals 8

    .line 1610
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1612
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1613
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 1615
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1618
    :cond_1
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 1619
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_5

    .line 1620
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 1621
    instance-of v5, v3, Ljava/net/Inet4Address;

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 1622
    new-instance v5, Lcom/mediatek/location/lppe/ipaddr/IpAddress;

    invoke-direct {v5}, Lcom/mediatek/location/lppe/ipaddr/IpAddress;-><init>()V

    .line 1623
    sget-object v7, Lcom/mediatek/location/lppe/ipaddr/Bearer;->unknown:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    iput-object v7, v5, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->bearer:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    .line 1624
    iput-boolean v6, v5, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv4Valid:Z

    .line 1625
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    iput-object v7, v5, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv4:[B

    .line 1626
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1628
    :cond_3
    instance-of v5, v3, Ljava/net/Inet6Address;

    if-eqz v5, :cond_4

    .line 1629
    new-instance v5, Lcom/mediatek/location/lppe/ipaddr/IpAddress;

    invoke-direct {v5}, Lcom/mediatek/location/lppe/ipaddr/IpAddress;-><init>()V

    .line 1630
    sget-object v7, Lcom/mediatek/location/lppe/ipaddr/Bearer;->unknown:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    iput-object v7, v5, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->bearer:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    .line 1631
    iput-boolean v6, v5, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv6Valid:Z

    .line 1632
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    iput-object v3, v5, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv6:[B

    .line 1633
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1635
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v4, :cond_2

    .line 1639
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v4, :cond_0

    .line 1644
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ip] ipaddrProvideInformationHandler() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 1645
    new-instance v1, Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;

    invoke-direct {v1}, Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;-><init>()V

    .line 1647
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/mediatek/location/lppe/ipaddr/IpAddress;

    iput-object v2, v1, Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;->list:[Lcom/mediatek/location/lppe/ipaddr/IpAddress;

    const/4 v2, 0x0

    .line 1648
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 1649
    iget-object v3, v1, Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;->list:[Lcom/mediatek/location/lppe/ipaddr/IpAddress;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/location/lppe/ipaddr/IpAddress;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1651
    :cond_7
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mIpAddrSender:Lcom/mediatek/location/lppe/ipaddr/LPPeIpAddress$LPPeIpAddressSender;

    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mClient:Lcom/mediatek/socket/base/UdpClient;

    invoke-virtual {v0, p0, v1}, Lcom/mediatek/location/lppe/ipaddr/LPPeIpAddress$LPPeIpAddressSender;->provideInformation(Lcom/mediatek/socket/base/UdpClient;Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;)Z

    move-result p0

    if-nez p0, :cond_8

    const-string p0, "[ip] ipaddrProvideInformationHandler() mIpAddrSender.provideInformation() failed"

    .line 1652
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1655
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_2
    return-void
.end method

.method private isInEmergency()Z
    .locals 4

    .line 1663
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mTelecom:Landroid/telecom/TelecomManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1664
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInEmergencyCall()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1666
    :goto_0
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_1

    .line 1667
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isInEmergencySmsMode()Z

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-nez v0, :cond_2

    if-nez p0, :cond_2

    .line 1670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Currently is not in ecc mode: isInEmergencyCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isInEmergencySms="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LPPeService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v0, :cond_3

    if-eqz p0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1882
    :try_start_0
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method private isWhitelistPackageNameSet()Z
    .locals 3

    .line 1873
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1874
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p0}, Landroid/location/LocationManager;->getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;

    move-result-object p0

    .line 1875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageTagList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1876
    invoke-virtual {p0, v0}, Landroid/os/PackageTagsList;->includes(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1875
    invoke-static {v1}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 1877
    invoke-virtual {p0, v0}, Landroid/os/PackageTagsList;->includes(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private lbsBatteryChanged(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "level"

    const/4 v1, 0x0

    .line 1580
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "scale"

    const/4 v2, 0x1

    .line 1581
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    mul-int/lit8 v1, v0, 0x64

    .line 1582
    div-int/2addr v1, p1

    .line 1583
    iget v2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLastBatteryPercentage:I

    if-eq v2, v1, :cond_0

    .line 1584
    iput v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLastBatteryPercentage:I

    .line 1585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[lbs] lbsBatteryChanged() level=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] scale=["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] percentage=["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLastBatteryPercentage:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 1587
    rem-int/lit8 p1, v1, 0x5

    if-nez p1, :cond_0

    .line 1588
    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLbsSender:Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsSender;

    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mClient:Lcom/mediatek/socket/base/UdpClient;

    invoke-virtual {p1, p0, v1}, Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsSender;->updateBatteryInfo(Lcom/mediatek/socket/base/UdpClient;I)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "[lbs] lbsBatteryChanged() mLbsSender.updateBatteryInfo() failed"

    .line 1589
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private lbsBatteryForceUpdate()V
    .locals 4

    .line 1562
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 1563
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1564
    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "level"

    .line 1566
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "scale"

    .line 1567
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v2, v1, 0x64

    .line 1568
    div-int/2addr v2, v0

    iput v2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLastBatteryPercentage:I

    .line 1569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[lbs] lbsBatteryForceUpdate() level=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] scale=["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] percentage=["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLastBatteryPercentage:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 1571
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLbsSender:Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsSender;

    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mClient:Lcom/mediatek/socket/base/UdpClient;

    iget p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLastBatteryPercentage:I

    invoke-virtual {v0, v1, p0}, Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsSender;->updateBatteryInfo(Lcom/mediatek/socket/base/UdpClient;I)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "[lbs] lbsBatteryForceUpdate() mLbsSender.updateBatteryInfo() failed"

    .line 1572
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "[lbs] lbsBatteryForceUpdate() get sticky intent fail"

    .line 1575
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private lbsNlpStatusChanged(Landroid/content/Intent;)V
    .locals 0

    .line 1605
    invoke-virtual {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->lbsNlpStatusUpdate()V

    return-void
.end method

.method private registerSettingsObserver()V
    .locals 7

    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_gps_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/mediatek/location/lppe/main/LPPeService$11;

    invoke-direct {v5, p0}, Lcom/mediatek/location/lppe/main/LPPeService$11;-><init>(Lcom/mediatek/location/lppe/main/LPPeService;)V

    sget v6, Landroid/os/UserHandle;->USER_ALL:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private isAssistedGpsEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "assisted_gps_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public lbsNlpStatusUpdate()V
    .locals 3

    .line 1596
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->isAssistedGpsEnabled()Z

    move-result v0

    .line 1598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[lbs] lbsNlpStatusUpdate() isEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 1599
    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLbsSender:Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsSender;

    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mClient:Lcom/mediatek/socket/base/UdpClient;

    invoke-virtual {v1, p0, v0}, Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsSender;->updateNlpStatus(Lcom/mediatek/socket/base/UdpClient;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "[lbs] lbsNlpStatusUpdate() mLbsSender.updateNlpStatus() failed"

    .line 1600
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private lbsProvideCapabilitiesHandler()V
    .locals 5

    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->isInEmergency()Z

    move-result v4

    .line 1527

    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, ""

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    .line 1528
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1529
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1531
    :cond_0
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "[ip] ipaddrProvideCapabilitiesHandler() getImei failed"

    .line 1536
    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move-object v3, v0

    .line 1539
    :goto_1
    new-instance v0, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;-><init>()V

    .line 1540
    iput-boolean v1, v0, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;->suplInitOverSms:Z

    const/4 v1, 0x1

    .line 1541
    iput-boolean v1, v0, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;->batteryInfo:Z

    .line 1542
    iput-object v3, v0, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;->imei:Ljava/lang/String;

    .line 1543
    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLbsSender:Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsSender;

    iget-object v3, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mClient:Lcom/mediatek/socket/base/UdpClient;

    invoke-virtual {v1, v3, v2, v0}, Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsSender;->provideCapabilities(Lcom/mediatek/socket/base/UdpClient;ILcom/mediatek/location/lppe/lbs/LbsCapabilities;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "[lbs] lbsProvideCapabilitiesHandler() mLbsSender.provideCapabilities() failed"

    .line 1545
    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    .line 1547
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->lbsBatteryForceUpdate()V

    .line 1548
    invoke-virtual {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->lbsNlpStatusUpdate()V

    return-void
.end method

.method private static log(Ljava/lang/Object;)V
    .locals 4

    .line 1677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[11]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LPPeService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    sget-object v0, Lcom/mediatek/location/lppe/main/LPPeService;->mLogCallback:Lcom/mediatek/location/lppe/main/LPPeService$LPPeServiceLogCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/mediatek/location/lppe/main/LPPeService$LPPeServiceLogCallback;->onLog(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static loge(Ljava/lang/Object;)V
    .locals 4

    .line 1684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[11]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LPPeService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    sget-object v0, Lcom/mediatek/location/lppe/main/LPPeService;->mLogCallback:Lcom/mediatek/location/lppe/main/LPPeService$LPPeServiceLogCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1686
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/mediatek/location/lppe/main/LPPeService$LPPeServiceLogCallback;->onLog(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private networkCivicAddrRequestHandler()V
    .locals 2

    const/4 v0, 0x1

    .line 1421
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mCivicAddressRequested:Z

    .line 1422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[network] networkCivicAddrRequestHandler mCivicAddressRequested = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mCivicAddressRequested:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    return-void
.end method

.method private networkCivicAddrUpdateHandler(Landroid/location/Address;)V
    .locals 6

    const/4 v0, 0x0

    .line 1427
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mGeolocationRequesting:Z

    .line 1428
    iget-boolean v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mCivicAddressRequested:Z

    if-nez v1, :cond_0

    const-string p1, "[network] onCivicAddrUpdate() skip providing address due to request stopped"

    .line 1429
    invoke-static {p1}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_0
    if-eqz p1, :cond_10

    .line 1446
    new-instance v1, Lcom/mediatek/location/lppe/network/CivicAddress;

    invoke-direct {v1}, Lcom/mediatek/location/lppe/network/CivicAddress;-><init>()V

    .line 1447
    iget-wide v2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mGeolocationTime:J

    iput-wide v2, v1, Lcom/mediatek/location/lppe/network/CivicAddress;->time:J

    .line 1448
    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    iput-boolean v2, v1, Lcom/mediatek/location/lppe/network/CivicAddress;->countryCodeValid:Z

    const-string v4, ""

    if-eqz v2, :cond_2

    .line 1449
    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v4

    :goto_1
    iput-object v2, v1, Lcom/mediatek/location/lppe/network/CivicAddress;->countryCode:Ljava/lang/String;

    .line 1450
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    move v2, v0

    :goto_2
    iput-boolean v2, v1, Lcom/mediatek/location/lppe/network/CivicAddress;->adminAreaValid:Z

    if-eqz v2, :cond_4

    .line 1451
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v4

    :goto_3
    iput-object v2, v1, Lcom/mediatek/location/lppe/network/CivicAddress;->adminArea:Ljava/lang/String;

    .line 1452
    invoke-virtual {p1}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    move v2, v3

    goto :goto_4

    :cond_5
    move v2, v0

    :goto_4
    iput-boolean v2, v1, Lcom/mediatek/location/lppe/network/CivicAddress;->subAdminAreaValid:Z

    if-eqz v2, :cond_6

    .line 1453
    invoke-virtual {p1}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_6
    move-object v2, v4

    :goto_5
    iput-object v2, v1, Lcom/mediatek/location/lppe/network/CivicAddress;->subAdminArea:Ljava/lang/String;

    .line 1454
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    move v2, v3

    goto :goto_6

    :cond_7
    move v2, v0

    :goto_6
    iput-boolean v2, v1, Lcom/mediatek/location/lppe/network/CivicAddress;->localityValid:Z

    if-eqz v2, :cond_8

    .line 1455
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_8
    move-object v2, v4

    :goto_7
    iput-object v2, v1, Lcom/mediatek/location/lppe/network/CivicAddress;->locality:Ljava/lang/String;

    .line 1456
    invoke-virtual {p1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    move v2, v3

    goto :goto_8

    :cond_9
    move v2, v0

    :goto_8
    iput-boolean v2, v1, Lcom/mediatek/location/lppe/network/CivicAddress;->postalCodeValid:Z

    if-eqz v2, :cond_a

    .line 1457
    invoke-virtual {p1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_a
    move-object v2, v4

    :goto_9
    iput-object v2, v1, Lcom/mediatek/location/lppe/network/CivicAddress;->postalCode:Ljava/lang/String;

    .line 1458
    invoke-virtual {p1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    move v2, v3

    goto :goto_a

    :cond_b
    move v2, v0

    :goto_a
    iput-boolean v2, v1, Lcom/mediatek/location/lppe/network/CivicAddress;->thoroughfareValid:Z

    if-eqz v2, :cond_c

    .line 1459
    invoke-virtual {p1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_c
    move-object v2, v4

    :goto_b
    iput-object v2, v1, Lcom/mediatek/location/lppe/network/CivicAddress;->thoroughfare:Ljava/lang/String;

    .line 1460
    invoke-virtual {p1}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    move v0, v3

    :cond_d
    iput-boolean v0, v1, Lcom/mediatek/location/lppe/network/CivicAddress;->subthoroughfareValid:Z

    if-eqz v0, :cond_e

    .line 1461
    invoke-virtual {p1}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v4

    :cond_e
    iput-object v4, v1, Lcom/mediatek/location/lppe/network/CivicAddress;->subthoroughfare:Ljava/lang/String;

    .line 1463
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v4

    iput-wide v4, v1, Lcom/mediatek/location/lppe/network/CivicAddress;->latitude:D

    .line 1464
    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v4

    iput-wide v4, v1, Lcom/mediatek/location/lppe/network/CivicAddress;->longitude:D

    .line 1465
    iput-boolean v3, v1, Lcom/mediatek/location/lppe/network/CivicAddress;->latitudeValid:Z

    .line 1466
    iput-boolean v3, v1, Lcom/mediatek/location/lppe/network/CivicAddress;->longitudeValid:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    const-string p1, "[network] GeoLocation failed to get addr latitude/Longitude"

    .line 1468
    invoke-static {p1}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 1470
    :goto_c
    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mNetworkSender:Lcom/mediatek/location/lppe/network/LPPeNetwork$LPPeNetworkSender;

    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mClient:Lcom/mediatek/socket/base/UdpClient;

    invoke-virtual {p1, v0, v1}, Lcom/mediatek/location/lppe/network/LPPeNetwork$LPPeNetworkSender;->provideCivicAddress(Lcom/mediatek/socket/base/UdpClient;Lcom/mediatek/location/lppe/network/CivicAddress;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "[network] onCivicAddrUpdate() mNetworkSender.provideCivicAddress() failed"

    .line 1471
    invoke-static {p1}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    goto :goto_d

    :cond_f
    const-string p1, "[network] networkCivicAddrUpdateHandler provided civic address to AGPSD"

    .line 1473
    invoke-static {p1}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    :cond_10
    :goto_d
    const/4 p1, 0x0

    .line 1476
    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mGeolocationThread:Lcom/mediatek/location/lppe/main/LPPeService$GeolocationThread;

    return-void
.end method

.method private networkLocationChangedHandler(Landroid/location/Location;)V
    .locals 7

    .line 1480
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mNetworkSupported:Z

    if-nez v0, :cond_0

    const-string p0, "[network] onLocationChanged() network location is not supported"

    .line 1481
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    return-void

    .line 1484
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[network] onLocationChanged() mCivicAddressRequested = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mCivicAddressRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 1485
    new-instance v0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;-><init>()V

    .line 1486
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->time:J

    .line 1487
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->latitude:D

    .line 1488
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->longitude:D

    .line 1489
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    iput-boolean v1, v0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->accuracyValid:Z

    .line 1490
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iput v1, v0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->accuracy:F

    .line 1491
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    iput-boolean v1, v0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->altitudeValid:Z

    .line 1492
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->altitude:D

    .line 1493
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    iput-boolean v1, v0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->confidenceHorizontalValid:Z

    const/16 v1, 0x44

    .line 1494
    iput-byte v1, v0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->confidenceHorizontal:B

    const/4 v2, 0x1

    .line 1495
    iput-boolean v2, v0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->locationSourceValid:Z

    const/16 v3, 0x3c

    .line 1496
    iput v3, v0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->locationSource:I

    .line 1498
    invoke-virtual {p1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v3

    iput-boolean v3, v0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->verticalAccuracyValid:Z

    .line 1499
    invoke-virtual {p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v3

    iput v3, v0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->verticalAccuracy:F

    .line 1500
    invoke-virtual {p1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result p1

    iput-boolean p1, v0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->confidenceVerticalValid:Z

    .line 1501
    iput-byte v1, v0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->confidenceVertical:B

    .line 1503
    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mNetworkSender:Lcom/mediatek/location/lppe/network/LPPeNetwork$LPPeNetworkSender;

    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mClient:Lcom/mediatek/socket/base/UdpClient;

    invoke-virtual {p1, v1, v0}, Lcom/mediatek/location/lppe/network/LPPeNetwork$LPPeNetworkSender;->provideMeasurement(Lcom/mediatek/socket/base/UdpClient;Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "[network] onLocationChanged() mNetworkSender.provideMeasurement() failed"

    .line 1504
    invoke-static {p1}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    .line 1506
    :cond_1
    iget-boolean p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mCivicAddressRequested:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mGeolocationRequesting:Z

    if-nez p1, :cond_2

    .line 1507
    new-instance p1, Lcom/mediatek/location/lppe/main/LPPeService$GeolocationThread;

    invoke-direct {p1, p0}, Lcom/mediatek/location/lppe/main/LPPeService$GeolocationThread;-><init>(Lcom/mediatek/location/lppe/main/LPPeService;)V

    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mGeolocationThread:Lcom/mediatek/location/lppe/main/LPPeService$GeolocationThread;

    .line 1508
    iget-wide v3, v0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->latitude:D

    iget-wide v5, v0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->longitude:D

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/mediatek/location/lppe/main/LPPeService$GeolocationThread;->getGeocoderAddr(DD)V

    .line 1509
    iget-wide v0, v0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->time:J

    iput-wide v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mGeolocationTime:J

    .line 1510
    iput-boolean v2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mGeolocationRequesting:Z

    :cond_2
    return-void
.end method

.method private networkProvideCapabilitiesHandler()V
    .locals 4

    .line 1355
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mNetworkSender:Lcom/mediatek/location/lppe/network/LPPeNetwork$LPPeNetworkSender;

    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mClient:Lcom/mediatek/socket/base/UdpClient;

    iget-boolean v2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mNetworkSupported:Z

    iget-boolean p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mCivicAddressSupported:Z

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2, p0}, Lcom/mediatek/location/lppe/network/LPPeNetwork$LPPeNetworkSender;->provideCapabilities(Lcom/mediatek/socket/base/UdpClient;IZZ)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "[network] ProvideCapabilities() mNetworkSender.provideCapabilities() failed"

    .line 1357
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private networkRecheckCapabilitiesHandler()V
    .locals 3

    .line 1405
    iget v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mNetworkCapabilityRecheckCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mNetworkCapabilityRecheckCount:I

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[network] re-check capability() count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mNetworkCapabilityRecheckCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 1407
    iget v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mNetworkCapabilityRecheckCount:I

    if-ltz v0, :cond_2

    .line 1408
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    .line 1409
    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mNetworkSupported:Z

    if-nez v1, :cond_1

    const-string v0, "[network] NETWORK_PROVIDER is not supported"

    .line 1411
    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    const/16 v0, 0x43

    const/16 v1, 0x2710

    .line 1412
    invoke-direct {p0, v0, v1}, Lcom/mediatek/location/lppe/main/LPPeService;->commonSendEventToHandlerWithDelay(II)V

    goto :goto_1

    .line 1415
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->triggerNetworkRequestCapabilities()V

    :cond_2
    :goto_1
    return-void
.end method

.method private networkStartMeasurementHandler()V
    .locals 5

    .line 1362
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mNetworkSupported:Z

    if-eqz v0, :cond_4

    .line 1363
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->isInEmergency()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->checkLocationProxyAppPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "[network] StartMeasurement() skip due to None emergency call and nonFramework proxy permission is not granted"

    .line 1384
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    :goto_0
    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "fused"

    .line 1364
    invoke-static {v4, v0, v1, v2, v3}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    const/4 v1, 0x1

    .line 1367
    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    const/16 v2, 0x64

    .line 1368
    invoke-virtual {v0, v2}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    .line 1370
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->isInEmergency()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1371
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->isWhitelistPackageNameSet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1372
    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setLocationSettingsIgnored(Z)Landroid/location/LocationRequest;

    goto :goto_1

    :cond_2
    const/16 v0, 0x41

    const/16 v1, 0x3e8

    .line 1374
    invoke-direct {p0, v0, v1}, Lcom/mediatek/location/lppe/main/LPPeService;->commonSendEventToHandlerWithDelay(II)V

    const-string p0, "[network] StartMeasurement() delay for whitelist package name set"

    .line 1376
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    return-void

    .line 1380
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[network] StartMeasurement() requestLocationUpdates() mCivicAddressRequested = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mCivicAddressRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 1381
    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLocationListener:Landroid/location/LocationListener;

    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mHandler:Landroid/os/Handler;

    .line 1382
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    .line 1381
    invoke-virtual {v1, v0, v2, p0}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_2

    :cond_4
    const-string p0, "[network] StartMeasurement() network location is not supported"

    .line 1388
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method private networkStopMeasurementHandler()V
    .locals 2

    .line 1393
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mNetworkSupported:Z

    if-eqz v0, :cond_0

    const-string v0, "[network] StopMeasurement() removeUpdates()"

    .line 1394
    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 1395
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1396
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/mediatek/location/lppe/main/LPPeService;->removePackageInLocationSettingsWhitelist(Landroid/content/Context;)V

    .line 1397
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 1398
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mCivicAddressRequested:Z

    goto :goto_0

    :cond_0
    const-string p0, "[network] StopMeasurement() network location is not supported"

    .line 1400
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private registerVowifiStateChange(ILcom/android/ims/ImsManager;)V
    .locals 3

    .line 2019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[lbs][ims] registerVowifiStateChange() phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 2020
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mVoWiFiRegHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;

    if-eqz v2, :cond_0

    .line 2021
    iget v2, v2, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mPhoneId:I

    if-ne v2, p1, :cond_0

    .line 2022
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " already registered."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 2028
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[lbs][ims] Failed to get mImsManager for phoneId="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    return-void

    .line 2032
    :cond_2
    new-instance v0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;-><init>(Lcom/mediatek/location/lppe/main/LPPeService;Lcom/mediatek/location/lppe/main/LPPeService$1;)V

    .line 2033
    iput p1, v0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mPhoneId:I

    .line 2034
    iput-object p2, v0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mImsManager:Lcom/android/ims/ImsManager;

    .line 2035
    invoke-virtual {v0}, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->registerForImsStateChange()V

    return-void
.end method

.method private removePackageInLocationSettingsWhitelist(Landroid/content/Context;)V
    .locals 7

    .line 1847
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "location"

    const-string v0, "ignore_settings_allowlist"

    const-string v1, ""

    .line 1849
    invoke-static {p1, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1853
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_1

    .line 1854
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 1856
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1858
    :cond_0
    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_2

    .line 1860
    invoke-virtual {v2, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move v3, v4

    :cond_2
    :goto_0
    if-eq v3, v4, :cond_3

    .line 1866
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove ignore settings outStr = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 1867
    invoke-static {p1, v0, v1, p0}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_3
    return-void
.end method

.method private sendDelayedMessage(IJ)V
    .locals 0

    .line 1829
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private sensorBaroAccuracyChangedHandler(Landroid/hardware/Sensor;I)V
    .locals 1

    .line 1314
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[sensor] BaroAccuracyChanged() sensor=["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    const/4 p0, -0x1

    if-eq p2, p0, :cond_4

    if-eqz p2, :cond_3

    const/4 p0, 0x1

    if-eq p2, p0, :cond_2

    const/4 p0, 0x2

    if-eq p2, p0, :cond_1

    const/4 p0, 0x3

    if-eq p2, p0, :cond_0

    .line 1332
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[sensor] BaroAccuracyChanged() unknown accuracy=["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "[sensor] BaroAccuracyChanged() accuracy is high"

    .line 1317
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p0, "[sensor] BaroAccuracyChanged() accuracy is medium"

    .line 1320
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string p0, "[sensor] BaroAccuracyChanged() accuracy is low"

    .line 1323
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string p0, "[sensor] BaroAccuracyChanged() accuracy is unreliable"

    .line 1326
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string p0, "[sensor] BaroAccuracyChanged() accuracy is no contact"

    .line 1329
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private sensorBaroSensorChangedHandler(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 1339
    invoke-static {}, Lcom/mediatek/location/lppe/main/LPPeService;->getTick()J

    move-result-wide v0

    .line 1340
    iget-wide v2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mSensorLastUpdateTime:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 1341
    iput-wide v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mSensorLastUpdateTime:J

    .line 1342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[sensor] BaroSensorChanged()  isUncali=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mIsUncaliBarometer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] accuracy=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] timestamp=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] value=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 1346
    new-instance v0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;-><init>()V

    .line 1347
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, v0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->sensorMeasurement:I

    .line 1348
    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mSensorSender:Lcom/mediatek/location/lppe/sensor/LPPeSensor$LPPeSensorSender;

    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mClient:Lcom/mediatek/socket/base/UdpClient;

    invoke-virtual {p1, p0, v0}, Lcom/mediatek/location/lppe/sensor/LPPeSensor$LPPeSensorSender;->providePressureMeasurement(Lcom/mediatek/socket/base/UdpClient;Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "[sensor] BaroSensorChanged() SensorSender.providePressureMeasurement() failed"

    .line 1349
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private sensorProvideCapabilitiesHandler()V
    .locals 3

    .line 1276
    new-instance v0, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;-><init>()V

    .line 1277
    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBarometer:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1278
    iput-boolean v2, v0, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;->atmosphericPressureSupport:Z

    .line 1280
    :cond_0
    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mSensorSender:Lcom/mediatek/location/lppe/sensor/LPPeSensor$LPPeSensorSender;

    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mClient:Lcom/mediatek/socket/base/UdpClient;

    invoke-virtual {v1, p0, v2, v0}, Lcom/mediatek/location/lppe/sensor/LPPeSensor$LPPeSensorSender;->provideCapabilities(Lcom/mediatek/socket/base/UdpClient;ILcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "[sensor] ProvideCapabilities() mSensorSender.provideCapabilities() failed"

    .line 1282
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private sensorStartMeasurementHandler(Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;)V
    .locals 3

    .line 1287
    iget-boolean v0, p1, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;->atmosphericPressureReq:Z

    if-eqz v0, :cond_1

    .line 1288
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBarometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const-string v0, "[sensor] StartMeasurement() registerListener() for Barometer"

    .line 1289
    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 1290
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mSensorBaroEventListener:Landroid/hardware/SensorEventListener;

    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBarometer:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    :cond_0
    const-string p0, "[sensor] StartMeasurement() Barometer is not supported"

    .line 1293
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    .line 1296
    :cond_1
    :goto_0
    iget-boolean p0, p1, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;->motionStateReq:Z

    if-eqz p0, :cond_2

    const-string p0, "[sensor] StartMeasurement() Motion State is not supported"

    .line 1297
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    .line 1299
    :cond_2
    iget-boolean p0, p1, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;->secondaryMotionStateRequest:Z

    if-eqz p0, :cond_3

    const-string p0, "[sensor] StartMeasurement Secondary Motion State is not supported"

    .line 1300
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private sensorStopMeasurementHandler()V
    .locals 1

    .line 1305
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    const-string v0, "[sensor] StopMeasurement() unregisterListener() for Barometer"

    .line 1306
    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 1307
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mSensorBaroEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    :cond_0
    const-string p0, "[sensor] StopMeasurement() SensorManager is not supported"

    .line 1309
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static stringCompare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1692
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private unRegisterVowifiStateChange(I)V
    .locals 5

    if-gez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2045
    :goto_0
    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mVoWiFiRegHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;

    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    .line 2047
    iget v4, v3, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mPhoneId:I

    if-ne v4, p1, :cond_1

    .line 2048
    :cond_2
    invoke-static {v3}, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->access$4700(Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;)V

    move-object v2, v3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 2054
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mVoWiFiRegHandlerList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    .line 2056
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mVoWiFiRegHandlerList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    return-void
.end method

.method private wifiCheckWifiStateAndScan()V
    .locals 2

    .line 858
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiSettingState:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 861
    iput v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiState:I

    const-string v0, "[wlan] StartMeasurement() startScan()"

    .line 862
    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 863
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiLastScanTime:J

    .line 864
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "[wlan] StartMeasurement() startScan() failed"

    .line 865
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    goto :goto_2

    .line 867
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->isInEmergency()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 868
    iput v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiState:I

    const-string v0, "[wlan] StartMeasurement() setWifiEnabled(true) in emergency call"

    .line 869
    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 870
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "[wlan] StartMeasurement() setWifiEnabled(true) failed"

    .line 871
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    const-string p0, "[wlan] StartMeasurement() skipped due to non-emergency call with WiFi OFF"

    .line 874
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private static wifiConvertFrequencyToChannelNumber(I)I
    .locals 2

    const/16 v0, 0x96c

    if-lt p0, v0, :cond_0

    const/16 v1, 0x9b4

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    .line 1060
    div-int/lit8 p0, p0, 0x5

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/16 v0, 0x1432

    if-lt p0, v0, :cond_1

    const/16 v1, 0x16c1

    if-gt p0, v1, :cond_1

    sub-int/2addr p0, v0

    .line 1063
    div-int/lit8 p0, p0, 0x5

    add-int/lit8 p0, p0, 0x22

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static wifiFilterScanResult(Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 1071
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1072
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 1073
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_1

    .line 1076
    :cond_0
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v3, "00:00:00:00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1079
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private static wifiGetMacAddr()Ljava/lang/String;
    .locals 9

    const-string v0, "02:00:00:00:00:00"

    .line 1087
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 1091
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1092
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 1093
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wlan0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 1096
    :cond_1
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    .line 1101
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1102
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    const/4 v6, 0x1

    if-ge v5, v3, :cond_3

    aget-byte v7, v1, v5

    const-string v8, "%02X:"

    new-array v6, v6, [Ljava/lang/Object;

    .line 1103
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1106
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 1107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1109
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-object v0
.end method

.method private wifiGetServingBSSID()Ljava/lang/String;
    .locals 2

    .line 980
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 982
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "00:00:00:00:00:00"

    .line 984
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private wifiProvideCapabilitiesHandler()V
    .locals 3

    .line 842
    new-instance v0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;-><init>()V

    .line 843
    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 844
    iput-boolean v2, v0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->isWlanSupported:Z

    .line 845
    invoke-static {}, Lcom/mediatek/location/lppe/main/LPPeService;->wifiGetMacAddr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/location/lppe/main/LPPeService;->commonMacStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->ueMACAddress:[B

    .line 846
    iget-object v1, v0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->measSupported:Lcom/mediatek/location/lppe/wlan/WlanMeasurements;

    iput-boolean v2, v1, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->nonServing:Z

    .line 847
    iput-boolean v2, v1, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apSSID:Z

    .line 848
    iput-boolean v2, v1, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apRSSI:Z

    .line 849
    iput-boolean v2, v1, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apChanFreq:Z

    .line 851
    :cond_0
    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiSender:Lcom/mediatek/location/lppe/wlan/LPPeWlan$LPPeWlanSender;

    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mClient:Lcom/mediatek/socket/base/UdpClient;

    invoke-virtual {v1, p0, v2, v0}, Lcom/mediatek/location/lppe/wlan/LPPeWlan$LPPeWlanSender;->provideCapabilities(Lcom/mediatek/socket/base/UdpClient;ILcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "[wlan] ProvideCapabilities() mWifiSender.provideCapabilities() failed"

    .line 853
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private wifiProvideMeasurementHandler(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1008
    new-instance v0, Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;-><init>()V

    .line 1009
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;

    iput-object v1, v0, Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;->meas:[Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;

    .line 1010
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->wifiGetServingBSSID()Ljava/lang/String;

    move-result-object v1

    .line 1012
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 1013
    iget-object v4, v0, Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;->meas:[Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;

    new-instance v5, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;

    invoke-direct {v5}, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;-><init>()V

    aput-object v5, v4, v2

    .line 1014
    iget-object v4, v0, Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;->meas:[Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;

    aget-object v4, v4, v2

    .line 1016
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/mediatek/location/lppe/main/LPPeService;->stringCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->servingFlag:Z

    .line 1017
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/mediatek/location/lppe/main/LPPeService;->commonMacStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, v4, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apMACAddress:[B

    .line 1018
    iget v5, v4, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->valid:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->valid:I

    or-int/lit8 v5, v5, 0x2

    .line 1019
    iput v5, v4, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->valid:I

    .line 1020
    iget v5, v3, Landroid/net/wifi/ScanResult;->level:I

    int-to-float v5, v5

    iput v5, v4, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apRSSI:F

    .line 1021
    iget v5, v3, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v5}, Lcom/mediatek/location/lppe/main/LPPeService;->wifiConvertFrequencyToChannelNumber(I)I

    move-result v5

    int-to-short v5, v5

    iput-short v5, v4, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apChanFreq:S

    .line 1022
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    const/16 v6, 0x20

    if-gt v5, v6, :cond_0

    .line 1023
    iget v5, v4, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->valid:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->valid:I

    .line 1024
    iget-object v3, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, v4, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apSSID:[B

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1029
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[wlan] ProvideMeasurement() update wifi measurement to AGPSD, size=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;->meas:[Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 1031
    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiSender:Lcom/mediatek/location/lppe/wlan/LPPeWlan$LPPeWlanSender;

    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mClient:Lcom/mediatek/socket/base/UdpClient;

    invoke-virtual {p1, p0, v0}, Lcom/mediatek/location/lppe/wlan/LPPeWlan$LPPeWlanSender;->provideMeasurement(Lcom/mediatek/socket/base/UdpClient;Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "[wlan] ProvideMeasurement() mWifiSender.provideMeasurement() failed"

    .line 1032
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private wifiResumeScanHandler()V
    .locals 2

    .line 963
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const-string p0, "[wlan] wifiResumeScanHandler() WiFi is not supported"

    .line 964
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    return-void

    .line 967
    :cond_0
    iget v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    const-string v0, "[wlan] wifiResumeScanHandler() startScan()"

    .line 971
    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 972
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiLastScanTime:J

    .line 973
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "[wlan] wifiResumeScanHandler() startScan() failed"

    .line 974
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private wifiScanResultDump(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 992
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->wifiGetServingBSSID()Ljava/lang/String;

    move-result-object p0

    .line 994
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 995
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 996
    iget-object v4, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 997
    iget v5, v2, Landroid/net/wifi/ScanResult;->level:I

    .line 998
    iget v6, v2, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v6}, Lcom/mediatek/location/lppe/main/LPPeService;->wifiConvertFrequencyToChannelNumber(I)I

    move-result v6

    .line 999
    iget-object v2, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/mediatek/location/lppe/main/LPPeService;->stringCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1000
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[wlan] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v8, v0, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const-string v9, "%3d"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " MAC=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] RSSI=["

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] channelNum=["

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] servingFlag=["

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] SSID=["

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private wifiScanResultHandler(Landroid/content/Intent;)V
    .locals 5

    .line 930
    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez p1, :cond_0

    const-string p0, "[wlan] ScanResult() WiFi is not supported"

    .line 931
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    return-void

    .line 934
    :cond_0
    iget v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    return-void

    .line 937
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/16 v0, 0x40

    .line 941
    invoke-static {p1, v0}, Lcom/mediatek/location/lppe/main/LPPeService;->wifiFilterScanResult(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 943
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mDebugEnabled:Z

    if-eqz v0, :cond_3

    .line 944
    invoke-direct {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->wifiScanResultDump(Ljava/util/List;)V

    .line 946
    :cond_3
    invoke-direct {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->wifiProvideMeasurementHandler(Ljava/util/List;)V

    .line 948
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiLastScanTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p1, v0, v2

    if-gez p1, :cond_4

    .line 950
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[wlan] delay scan after "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 951
    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 952
    invoke-direct {p0, v0, v2, v3}, Lcom/mediatek/location/lppe/main/LPPeService;->sendDelayedMessage(IJ)V

    goto :goto_0

    :cond_4
    const-string p1, "[wlan] ScanResult() startScan()"

    .line 954
    invoke-static {p1}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 955
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiLastScanTime:J

    .line 956
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "[wlan] ScanResult() startScan() failed"

    .line 957
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private wifiStartMeasurementHandler()V
    .locals 2

    .line 879
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const-string p0, "[wlan] StartMeasurement() WiFi is not supported"

    .line 880
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    return-void

    .line 883
    :cond_0
    iget v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiState:I

    if-eqz v0, :cond_1

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[wlan] StartMeasurement() already started, state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    return-void

    .line 889
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->wifiCheckWifiStateAndScan()V

    return-void
.end method

.method private wifiStateChangedHandler(Landroid/content/Intent;)V
    .locals 2

    .line 912
    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez p1, :cond_0

    const-string p0, "[wlan] StateChanged() WiFi is not supported"

    .line 913
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    return-void

    .line 916
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 918
    iget p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    .line 919
    iput p1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiState:I

    const-string p1, "[wlan] StateChanged() startScan()"

    .line 920
    invoke-static {p1}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 921
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiLastScanTime:J

    .line 922
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "[wlan] StateChanged() startScan() failed"

    .line 923
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private wifiStopMeasurementHandler()V
    .locals 2

    .line 893
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const-string p0, "[wlan] StopMeasurement() WiFi is not supported"

    .line 894
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    return-void

    .line 897
    :cond_0
    iget v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiState:I

    if-nez v0, :cond_1

    const-string p0, "[wlan] StopMeasurement() already stopped"

    .line 898
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "[wlan] StopMeasurement()"

    .line 901
    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 902
    iput v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiState:I

    .line 903
    iget-boolean v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiSettingState:Z

    if-nez v1, :cond_2

    const-string v1, "[wlan] StopMeasurement() setWifiEnabled(false) to restore to previous state"

    .line 904
    invoke-static {v1}, Lcom/mediatek/location/lppe/main/LPPeService;->log(Ljava/lang/Object;)V

    .line 905
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "[wlan] StopMeasurement() setWifiEnabled(false) failed"

    .line 906
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->loge(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiServer:Lcom/mediatek/socket/base/UdpServer;

    invoke-virtual {v0}, Lcom/mediatek/socket/base/UdpServer;->close()V

    .line 398
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtServer:Lcom/mediatek/socket/base/UdpServer;

    invoke-virtual {v0}, Lcom/mediatek/socket/base/UdpServer;->close()V

    .line 399
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mSensorServer:Lcom/mediatek/socket/base/UdpServer;

    invoke-virtual {v0}, Lcom/mediatek/socket/base/UdpServer;->close()V

    .line 400
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mNetworkServer:Lcom/mediatek/socket/base/UdpServer;

    invoke-virtual {v0}, Lcom/mediatek/socket/base/UdpServer;->close()V

    .line 401
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mIpAddrServer:Lcom/mediatek/socket/base/UdpServer;

    invoke-virtual {v0}, Lcom/mediatek/socket/base/UdpServer;->close()V

    .line 402
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 403
    iget v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mWifiState:I

    if-eqz v0, :cond_0

    .line 404
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->wifiStopMeasurementHandler()V

    .line 406
    :cond_0
    iget v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mBtState:I

    if-eqz v0, :cond_1

    .line 407
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->btStopMeasurementHandler()V

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    .line 410
    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mSensorBaroEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 412
    :cond_2
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mNetworkSupported:Z

    if-eqz v0, :cond_3

    .line 413
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_3
    const/4 v0, -0x1

    .line 415
    invoke-direct {p0, v0}, Lcom/mediatek/location/lppe/main/LPPeService;->unRegisterVowifiStateChange(I)V

    return-void
.end method

.method loadProxyNameFromCarrierConfig()Ljava/lang/String;
    .locals 4

    .line 1890
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mContext:Landroid/content/Context;

    const-string v0, "carrier_config"

    .line 1891
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 1896
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 1897
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1898
    invoke-virtual {p0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const-string v1, "LPPeService"

    if-nez p0, :cond_2

    const-string p0, "SIM not ready, use default carrier config."

    .line 1900
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    :cond_2
    const-string v2, "gps.nfw_proxy_apps"

    .line 1904
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1905
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gps.nfw_proxy_apps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_3

    .line 1907
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 1909
    aget-object p0, p0, v0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public triggerNetworkRequestCapabilities()V
    .locals 4

    .line 1766
    new-instance v0, Lcom/mediatek/socket/base/UdpClient;

    sget-object v1, Lcom/mediatek/location/lppe/main/LPPeService;->LPPE_SOCKET_NETWORK_CHANNEL:Ljava/lang/String;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    const/16 v3, 0x166

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/socket/base/UdpClient;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;I)V

    .line 1768
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService;->mNetworkSender:Lcom/mediatek/location/lppe/network/LPPeNetwork$LPPeNetworkSender;

    const/16 v1, 0x68

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/location/lppe/network/LPPeNetwork$LPPeNetworkSender;->requestCapabilities(Lcom/mediatek/socket/base/UdpClient;I)Z

    return-void
.end method
