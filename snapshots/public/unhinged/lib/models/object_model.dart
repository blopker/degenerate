// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

@immutable
final class ObjectModelNaN {
  const ObjectModelNaN._(this.value);

  factory ObjectModelNaN.fromJson(String json) {
    return switch (json) {
      'NaN' => naN,
      'nan' => nan,
      'NAN' => nan2,
      '+NaN' => naN2,
      '-NaN' => naN3,
      _ => ObjectModelNaN._(json),
    };
  }

  static const ObjectModelNaN naN = ObjectModelNaN._('NaN');

  static const ObjectModelNaN nan = ObjectModelNaN._('nan');

  static const ObjectModelNaN nan2 = ObjectModelNaN._('NAN');

  static const ObjectModelNaN naN2 = ObjectModelNaN._('+NaN');

  static const ObjectModelNaN naN3 = ObjectModelNaN._('-NaN');

  static const List<ObjectModelNaN> values = [naN, nan, nan2, naN2, naN3];

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
        other is ObjectModelNaN && other.value == value;
  }

  @override
  int get hashCode {
    return value.hashCode;
  }

  @override
  String toString() {
    return 'ObjectModelNaN($value)';
  }
}

@immutable
final class ObjectModelInfinity {
  const ObjectModelInfinity._(this.value);

  factory ObjectModelInfinity.fromJson(double json) {
    return switch (json) {
      0 => $0,
      1 => $1,
      -1 => minus1,
      1.7976931348623157e+308 => $17976931348623157e308,
      5e-324 => $5e324,
      _ => ObjectModelInfinity._(json),
    };
  }

  static const ObjectModelInfinity $0 = ObjectModelInfinity._(0);

  static const ObjectModelInfinity $1 = ObjectModelInfinity._(1);

  static const ObjectModelInfinity minus1 = ObjectModelInfinity._(-1);

  static const ObjectModelInfinity $17976931348623157e308 =
      ObjectModelInfinity._(1.7976931348623157e+308);

  static const ObjectModelInfinity $5e324 = ObjectModelInfinity._(5e-324);

  static const List<ObjectModelInfinity> values = [
    $0,
    $1,
    minus1,
    $17976931348623157e308,
    $5e324,
  ];

  final double value;

  double toJson() {
    return value;
  }

  /// Whether this value is unknown (not defined in the OpenAPI spec).
  bool get isUnknown {
    return !values.contains(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is ObjectModelInfinity && other.value == value;
  }

  @override
  int get hashCode {
    return value.hashCode;
  }

  @override
  String toString() {
    return 'ObjectModelInfinity($value)';
  }
}

@immutable
final class ObjectModel {
  const ObjectModel({required this.$return, this.naN, this.infinity});

  factory ObjectModel.fromJson(Map<String, dynamic> json) {
    return ObjectModel(
      $return: json['return'] as bool,
      naN: json['NaN'] != null
          ? ObjectModelNaN.fromJson(json['NaN'] as String)
          : null,
      infinity: json['Infinity'] != null
          ? ObjectModelInfinity.fromJson((json['Infinity'] as num).toDouble())
          : null,
    );
  }

  final bool $return;

  final ObjectModelNaN? naN;

  final ObjectModelInfinity? infinity;

  Map<String, dynamic> toJson() {
    return {
      'return': $return,
      if (naN != null) 'NaN': naN?.toJson(),
      if (infinity != null) 'Infinity': infinity?.toJson(),
    };
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.containsKey('return') && json['return'] is bool;
  }

  ObjectModel copyWith({
    bool? $return,
    ObjectModelNaN Function()? naN,
    ObjectModelInfinity Function()? infinity,
  }) {
    return ObjectModel(
      $return: $return ?? this.$return,
      naN: naN != null ? naN() : this.naN,
      infinity: infinity != null ? infinity() : this.infinity,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is ObjectModel &&
            $return == other.$return &&
            naN == other.naN &&
            infinity == other.infinity;
  }

  @override
  int get hashCode {
    return Object.hash($return, naN, infinity);
  }

  @override
  String toString() {
    return 'ObjectModel(\$return: ${$return}, naN: $naN, infinity: $infinity)';
  }
}
