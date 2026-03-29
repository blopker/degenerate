// GENERATED CODE - DO NOT MODIFY BY HAND

final class ObjectModelNaN {
  const ObjectModelNaN._(this.value);

  factory ObjectModelNaN.fromJson(String json) {
    return switch (json) {
      'NaN' => naN,
      'nan' => nan,
      'NAN' => nan2,
      '+NaN' => NaN,
      '-NaN' => naN2,
      _ => ObjectModelNaN._(json),
    };
  }

  static const ObjectModelNaN naN = ObjectModelNaN._('NaN');

  static const ObjectModelNaN nan = ObjectModelNaN._('nan');

  static const ObjectModelNaN nan2 = ObjectModelNaN._('NAN');

  static const ObjectModelNaN NaN = ObjectModelNaN._('+NaN');

  static const ObjectModelNaN naN2 = ObjectModelNaN._('-NaN');

  static const List<ObjectModelNaN> values = [naN, nan, nan2, NaN, naN2];

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

final class ObjectModel {
  const ObjectModel({required this.$return, this.naN, this.infinity});

  factory ObjectModel.fromJson(Map<String, dynamic> json) {
    return ObjectModel(
      $return: json['return'] as bool,
      naN: json['NaN'] != null
          ? ObjectModelNaN.fromJson(json['NaN'] as String)
          : null,
      infinity: json['Infinity'] != null
          ? (json['Infinity'] as num).toDouble()
          : null,
    );
  }

  final bool $return;

  final ObjectModelNaN? naN;

  final double? infinity;

  Map<String, dynamic> toJson() {
    return {
      'return': $return,
      if (naN != null) 'NaN': naN?.toJson(),
      'Infinity': ?infinity,
    };
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.containsKey('return') && json['return'] is bool;
  }

  ObjectModel copyWith({
    bool? $return,
    ObjectModelNaN Function()? naN,
    double Function()? infinity,
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
