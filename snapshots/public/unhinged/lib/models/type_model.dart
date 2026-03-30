// GENERATED CODE - DO NOT MODIFY BY HAND

final class TypeModelEventType {
  const TypeModelEventType._(this.value);

  factory TypeModelEventType.fromJson(String json) {
    return switch (json) {
      'ectoplasm_spike' => ectoplasmSpike,
      'null' => $null,
      'true' => $true,
      'false' => $false,
      '0' => $0,
      'NaN' => naN,
      '' => $empty,
      ' ' => $empty2,
      '  ' => $empty3,
      'ectoplasm spike' => ectoplasmSpike2,
      'ectoplasm_spike ' => ectoplasmSpike3,
      '\t' => $empty4,
      '🔥' => $empty5,
      '🔥🔥' => $empty6,
      'toString' => $toString,
      'hasOwnProperty' => hasOwnProperty,
      '__proto__' => proto,
      'constructor' => constructor,
      _ => TypeModelEventType._(json),
    };
  }

  static const TypeModelEventType ectoplasmSpike = TypeModelEventType._(
    'ectoplasm_spike',
  );

  static const TypeModelEventType $null = TypeModelEventType._('null');

  static const TypeModelEventType $true = TypeModelEventType._('true');

  static const TypeModelEventType $false = TypeModelEventType._('false');

  static const TypeModelEventType $0 = TypeModelEventType._('0');

  static const TypeModelEventType naN = TypeModelEventType._('NaN');

  static const TypeModelEventType $empty = TypeModelEventType._('');

  static const TypeModelEventType $empty2 = TypeModelEventType._(' ');

  static const TypeModelEventType $empty3 = TypeModelEventType._('  ');

  static const TypeModelEventType ectoplasmSpike2 = TypeModelEventType._(
    'ectoplasm spike',
  );

  static const TypeModelEventType ectoplasmSpike3 = TypeModelEventType._(
    'ectoplasm_spike ',
  );

  static const TypeModelEventType $empty4 = TypeModelEventType._('\t');

  static const TypeModelEventType $empty5 = TypeModelEventType._('🔥');

  static const TypeModelEventType $empty6 = TypeModelEventType._('🔥🔥');

  static const TypeModelEventType $toString = TypeModelEventType._('toString');

  static const TypeModelEventType hasOwnProperty = TypeModelEventType._(
    'hasOwnProperty',
  );

  static const TypeModelEventType proto = TypeModelEventType._('__proto__');

  static const TypeModelEventType constructor = TypeModelEventType._(
    'constructor',
  );

  static const List<TypeModelEventType> values = [
    ectoplasmSpike,
    $null,
    $true,
    $false,
    $0,
    naN,
    $empty,
    $empty2,
    $empty3,
    ectoplasmSpike2,
    ectoplasmSpike3,
    $empty4,
    $empty5,
    $empty6,
    $toString,
    hasOwnProperty,
    proto,
    constructor,
  ];

  final String value;

  String toJson() {
    return value;
  }

  /// Whether this value is unknown (not defined in the OpenAPI spec).
  bool get isUnknown {
    return !values.contains(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is TypeModelEventType && other.value == value;
  }

  @override
  int get hashCode {
    return value.hashCode;
  }

  @override
  String toString() {
    return 'TypeModelEventType($value)';
  }
}

final class TypeModel {
  const TypeModel({this.eventType, this.timestamp, this.details});

  factory TypeModel.fromJson(Map<String, dynamic> json) {
    return TypeModel(
      eventType: json['event_type'] != null
          ? TypeModelEventType.fromJson(json['event_type'] as String)
          : null,
      timestamp: json['timestamp'] != null
          ? DateTime.parse(json['timestamp'] as String)
          : null,
      details: json['details'] as String?,
    );
  }

  final TypeModelEventType? eventType;

  final DateTime? timestamp;

  final String? details;

  Map<String, dynamic> toJson() {
    return {
      if (eventType != null) 'event_type': eventType?.toJson(),
      if (timestamp != null) 'timestamp': timestamp?.toIso8601String(),
      'details': ?details,
    };
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.keys.any(
      (key) => const {'event_type', 'timestamp', 'details'}.contains(key),
    );
  }

  TypeModel copyWith({
    TypeModelEventType Function()? eventType,
    DateTime Function()? timestamp,
    String Function()? details,
  }) {
    return TypeModel(
      eventType: eventType != null ? eventType() : this.eventType,
      timestamp: timestamp != null ? timestamp() : this.timestamp,
      details: details != null ? details() : this.details,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is TypeModel &&
            eventType == other.eventType &&
            timestamp == other.timestamp &&
            details == other.details;
  }

  @override
  int get hashCode {
    return Object.hash(eventType, timestamp, details);
  }

  @override
  String toString() {
    return 'TypeModel(eventType: $eventType, timestamp: $timestamp, details: $details)';
  }
}
