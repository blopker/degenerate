// GENERATED CODE - DO NOT MODIFY BY HAND

final class TrueNull {
  const TrueNull._(this.value);

  factory TrueNull.fromJson(String json) {
    return switch (json) {
      'null' => $null,
      'Null' => $null2,
      'NULL' => $null3,
      '~' => $empty,
      '' => $empty2,
      ' ' => $empty3,
      '\t' => $empty4,
      '\n' => $empty5,
      _ => TrueNull._(json),
    };
  }

  static const TrueNull $null = TrueNull._('null');

  static const TrueNull $null2 = TrueNull._('Null');

  static const TrueNull $null3 = TrueNull._('NULL');

  static const TrueNull $empty = TrueNull._('~');

  static const TrueNull $empty2 = TrueNull._('');

  static const TrueNull $empty3 = TrueNull._(' ');

  static const TrueNull $empty4 = TrueNull._('\t');

  static const TrueNull $empty5 = TrueNull._('\n');

  static const List<TrueNull> values = [
    $null,
    $null2,
    $null3,
    $empty,
    $empty2,
    $empty3,
    $empty4,
    $empty5,
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
    return identical(this, other) || other is TrueNull && other.value == value;
  }

  @override
  int get hashCode {
    return value.hashCode;
  }

  @override
  String toString() {
    return 'TrueNull($value)';
  }
}

final class True {
  const True({
    this.$false = true,
    required this.none,
    this.$null = TrueNull.$null,
    this.$0 = 0,
    required this.$empty,
    this.constructor,
    this.proto,
    this.hasOwnProperty,
    this.type,
    this.$ref,
    this.$id,
    this.xExtensionLookalike,
  });

  factory True.fromJson(Map<String, dynamic> json) {
    return True(
      $false: json['false'] as bool,
      none: json['none'] as String,
      $null: TrueNull.fromJson(json['null'] as String),
      $0: (json['0'] as num).toInt(),
      $empty: json[''] as String,
      constructor: json['constructor'] as String?,
      proto: json['__proto__'] as String?,
      hasOwnProperty: json['hasOwnProperty'] as String?,
      type: json['type'] as String?,
      $ref: json['\$ref'] as String?,
      $id: json['\$id'] as String?,
      xExtensionLookalike: json['x-extension-lookalike'] as String?,
    );
  }

  final bool $false;

  final String none;

  final TrueNull $null;

  final int $0;

  final String $empty;

  final String? constructor;

  final String? proto;

  final String? hasOwnProperty;

  final String? type;

  /// A property literally named $ref. Not a reference.
  final String? $ref;

  final String? $id;

  /// Looks like a vendor extension but it is a property.
  final String? xExtensionLookalike;

  Map<String, dynamic> toJson() {
    return {
      'false': $false,
      'none': none,
      'null': $null.toJson(),
      '0': $0,
      '': $empty,
      'constructor': ?constructor,
      '__proto__': ?proto,
      'hasOwnProperty': ?hasOwnProperty,
      'type': ?type,
      '\$ref': ?$ref,
      '\$id': ?$id,
      'x-extension-lookalike': ?xExtensionLookalike,
    };
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.containsKey('false') &&
        json['false'] is bool &&
        json.containsKey('none') &&
        json['none'] is String &&
        json.containsKey('null') &&
        json.containsKey('0') &&
        json['0'] is num &&
        json.containsKey('') &&
        json[''] is String;
  }

  True copyWith({
    bool? $false,
    String? none,
    TrueNull? $null,
    int? $0,
    String? $empty,
    String Function()? constructor,
    String Function()? proto,
    String Function()? hasOwnProperty,
    String Function()? type,
    String Function()? $ref,
    String Function()? $id,
    String Function()? xExtensionLookalike,
  }) {
    return True(
      $false: $false ?? this.$false,
      none: none ?? this.none,
      $null: $null ?? this.$null,
      $0: $0 ?? this.$0,
      $empty: $empty ?? this.$empty,
      constructor: constructor != null ? constructor() : this.constructor,
      proto: proto != null ? proto() : this.proto,
      hasOwnProperty: hasOwnProperty != null
          ? hasOwnProperty()
          : this.hasOwnProperty,
      type: type != null ? type() : this.type,
      $ref: $ref != null ? $ref() : this.$ref,
      $id: $id != null ? $id() : this.$id,
      xExtensionLookalike: xExtensionLookalike != null
          ? xExtensionLookalike()
          : this.xExtensionLookalike,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is True &&
            $false == other.$false &&
            none == other.none &&
            $null == other.$null &&
            $0 == other.$0 &&
            $empty == other.$empty &&
            constructor == other.constructor &&
            proto == other.proto &&
            hasOwnProperty == other.hasOwnProperty &&
            type == other.type &&
            $ref == other.$ref &&
            $id == other.$id &&
            xExtensionLookalike == other.xExtensionLookalike;
  }

  @override
  int get hashCode {
    return Object.hash(
      $false,
      none,
      $null,
      $0,
      $empty,
      constructor,
      proto,
      hasOwnProperty,
      type,
      $ref,
      $id,
      xExtensionLookalike,
    );
  }

  @override
  String toString() {
    return 'True(\$false: ${$false}, none: $none, \$null: ${$null}, \$0: ${$0}, \$empty: ${$empty}, constructor: $constructor, proto: $proto, hasOwnProperty: $hasOwnProperty, type: $type, \$ref: ${$ref}, \$id: ${$id}, xExtensionLookalike: $xExtensionLookalike)';
  }
}
