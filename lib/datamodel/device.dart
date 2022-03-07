import 'dart:convert';

class BatteryHealth {
  String? health;
  int? scale;
  BatteryHealth({
    this.health,
    this.scale,
  });

  BatteryHealth copyWith({
    String? health,
    int? scale,
  }) {
    return BatteryHealth(
      health: health ?? this.health,
      scale: scale ?? this.scale,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'health': health,
      'scale': scale,
    };
  }

  factory BatteryHealth.fromMap(Map<String, dynamic> map) {
    return BatteryHealth(
      health: map['health'],
      scale: map['scale']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory BatteryHealth.fromJson(String source) =>
      BatteryHealth.fromMap(json.decode(source));

  @override
  String toString() => 'BatteryHealth(health: $health, scale: $scale)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BatteryHealth &&
        other.health == health &&
        other.scale == scale;
  }

  @override
  int get hashCode => health.hashCode ^ scale.hashCode;
}

class Device {
  BatteryHealth? batteryHealth;
  bool? fingerPrint;
  bool? frontcamera;
  bool? backcamera;
  bool? flashlight;
  bool? accelerationsensor;
  bool? vibrationmotor;
  bool? touchscreen;
  bool? simcard;
  bool? wifi;
  bool? chargingsocket;
  Device({
    this.batteryHealth,
    this.fingerPrint,
    this.frontcamera,
    this.backcamera,
    this.flashlight,
    this.accelerationsensor,
    this.vibrationmotor,
    this.touchscreen,
    this.simcard,
    this.wifi,
    this.chargingsocket,
  });

  Device copyWith({
    BatteryHealth? batteryHealth,
    bool? fingerPrint,
    bool? frontcamera,
    bool? backcamera,
    bool? flashlight,
    bool? accelerationsensor,
    bool? vibrationmotor,
    bool? touchscreen,
    bool? simcard,
    bool? wifi,
    bool? chargingsocket,
  }) {
    return Device(
      batteryHealth: batteryHealth ?? this.batteryHealth,
      fingerPrint: fingerPrint ?? this.fingerPrint,
      frontcamera: frontcamera ?? this.frontcamera,
      backcamera: backcamera ?? this.backcamera,
      flashlight: flashlight ?? this.flashlight,
      accelerationsensor: accelerationsensor ?? this.accelerationsensor,
      vibrationmotor: vibrationmotor ?? this.vibrationmotor,
      touchscreen: touchscreen ?? this.touchscreen,
      simcard: simcard ?? this.simcard,
      wifi: wifi ?? this.wifi,
      chargingsocket: chargingsocket ?? this.chargingsocket,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'batteryHealth': batteryHealth?.toMap(),
      'fingerPrint': fingerPrint,
      'frontcamera': frontcamera,
      'backcamera': backcamera,
      'flashlight': flashlight,
      'accelerationsensor': accelerationsensor,
      'vibrationmotor': vibrationmotor,
      'touchscreen': touchscreen,
      'simcard': simcard,
      'wifi': wifi,
      'chargingsocket': chargingsocket,
    };
  }

  factory Device.fromMap(Map<String, dynamic> map) {
    return Device(
      batteryHealth: map['batteryHealth'] != null
          ? BatteryHealth.fromMap(map['batteryHealth'])
          : null,
      fingerPrint: map['fingerPrint'],
      frontcamera: map['frontcamera'],
      backcamera: map['backcamera'],
      flashlight: map['flashlight'],
      accelerationsensor: map['accelerationsensor'],
      vibrationmotor: map['vibrationmotor'],
      touchscreen: map['touchscreen'],
      simcard: map['simcard'],
      wifi: map['wifi'],
      chargingsocket: map['chargingsocket'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Device.fromJson(String source) => Device.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Device(batteryHealth: $batteryHealth, fingerPrint: $fingerPrint, frontcamera: $frontcamera, backcamera: $backcamera, flashlight: $flashlight, accelerationsensor: $accelerationsensor, vibrationmotor: $vibrationmotor, touchscreen: $touchscreen, simcard: $simcard, wifi: $wifi, chargingsocket: $chargingsocket)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Device &&
        other.batteryHealth == batteryHealth &&
        other.fingerPrint == fingerPrint &&
        other.frontcamera == frontcamera &&
        other.backcamera == backcamera &&
        other.flashlight == flashlight &&
        other.accelerationsensor == accelerationsensor &&
        other.vibrationmotor == vibrationmotor &&
        other.touchscreen == touchscreen &&
        other.simcard == simcard &&
        other.wifi == wifi &&
        other.chargingsocket == chargingsocket;
  }

  @override
  int get hashCode {
    return batteryHealth.hashCode ^
        fingerPrint.hashCode ^
        frontcamera.hashCode ^
        backcamera.hashCode ^
        flashlight.hashCode ^
        accelerationsensor.hashCode ^
        vibrationmotor.hashCode ^
        touchscreen.hashCode ^
        simcard.hashCode ^
        wifi.hashCode ^
        chargingsocket.hashCode;
  }
}
