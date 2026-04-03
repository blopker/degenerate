// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

@immutable
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

@immutable
final class True0 {
  const True0._(this.value);

  factory True0.fromJson(int json) {
    return switch (json) {
      0 => $0,
      1 => $1,
      -1 => minus1,
      2147483647 => $2147483647,
      -2147483648 => minus2147483648,
      9999999999999999 => $9999999999999999,
      _ => True0._(json),
    };
  }

  static const True0 $0 = True0._(0);

  static const True0 $02 = True0._(0);

  static const True0 $1 = True0._(1);

  static const True0 minus1 = True0._(-1);

  static const True0 $2147483647 = True0._(2147483647);

  static const True0 minus2147483648 = True0._(-2147483648);

  static const True0 $9999999999999999 = True0._(9999999999999999);

  static const List<True0> values = [
    $0,
    $02,
    $1,
    minus1,
    $2147483647,
    minus2147483648,
    $9999999999999999,
  ];

  final int value;

  int toJson() {
    return value;
  }

  /// Whether this value is unknown (not defined in the OpenAPI spec).
  bool get isUnknown {
    return !values.contains(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || other is True0 && other.value == value;
  }

  @override
  int get hashCode {
    return value.hashCode;
  }

  @override
  String toString() {
    return 'True0($value)';
  }
}

@immutable
final class True {
  const True({
    required this.none,
    required this.$0,
    required this.$empty,
    this.$false = true,
    this.$null = TrueNull.$null,
    this.constructor,
    this.proto,
    this.hasOwnProperty,
    this.type,
    this.$ref,
    this.$id,
    this.xExtensionLookalike,
    this.additionalProperties = const {},
  });

  factory True.fromJson(Map<String, dynamic> json) {
    return True(
      $false: json['false'] as bool,
      none: json['none'],
      $null: TrueNull.fromJson(json['null'] as String),
      $0: True0.fromJson((json['0'] as num).toInt()),
      $empty: json[''] as String,
      constructor: json['constructor'] as String?,
      proto: json['__proto__'] as String?,
      hasOwnProperty: json['hasOwnProperty'] as String?,
      type: json['type'] as String?,
      $ref: json['\$ref'] as String?,
      $id: json['\$id'] as String?,
      xExtensionLookalike: json['x-extension-lookalike'] as String?,
      additionalProperties: Map.fromEntries(
        json.entries
            .where(
              (e) => !const {
                'false',
                'none',
                'null',
                '0',
                '',
                'constructor',
                '__proto__',
                'hasOwnProperty',
                'type',
                '\$ref',
                '\$id',
                'x-extension-lookalike',
              }.contains(e.key),
            )
            .map(
              (e) => MapEntry(
                e.key,
                True.fromJson(e.value as Map<String, dynamic>),
              ),
            ),
      ),
    );
  }

  final bool $false;

  final dynamic none;

  final TrueNull $null;

  final True0 $0;

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

  final Map<String, True> additionalProperties;

  Map<String, dynamic> toJson() {
    return {
      'false': $false,
      'none': ?none,
      'null': $null.toJson(),
      '0': $0.toJson(),
      '': $empty,
      'constructor': ?constructor,
      '__proto__': ?proto,
      'hasOwnProperty': ?hasOwnProperty,
      'type': ?type,
      '\$ref': ?$ref,
      '\$id': ?$id,
      'x-extension-lookalike': ?xExtensionLookalike,
      ...additionalProperties.map((k, v) => MapEntry(k, v.toJson())),
    };
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.containsKey('false') &&
        json['false'] is bool &&
        json.containsKey('none') &&
        json.containsKey('null') &&
        json.containsKey('0') &&
        json.containsKey('') &&
        json[''] is String;
  }

  True copyWith({
    bool? $false,
    dynamic Function()? none,
    TrueNull? $null,
    True0? $0,
    String? $empty,
    String Function()? constructor,
    String Function()? proto,
    String Function()? hasOwnProperty,
    String Function()? type,
    String Function()? $ref,
    String Function()? $id,
    String Function()? xExtensionLookalike,
    Map<String, True>? additionalProperties,
  }) {
    return True(
      $false: $false ?? this.$false,
      none: none != null ? none() : this.none,
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
      additionalProperties: additionalProperties ?? this.additionalProperties,
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
            xExtensionLookalike == other.xExtensionLookalike &&
            mapEquals(additionalProperties, other.additionalProperties);
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
      Object.hashAll(additionalProperties.entries),
    );
  }

  @override
  String toString() {
    return 'True(\$false: ${$false}, none: $none, \$null: ${$null}, \$0: ${$0}, \$empty: ${$empty}, constructor: $constructor, proto: $proto, hasOwnProperty: $hasOwnProperty, type: $type, \$ref: ${$ref}, \$id: ${$id}, xExtensionLookalike: $xExtensionLookalike, additionalProperties: $additionalProperties)';
  }
}
