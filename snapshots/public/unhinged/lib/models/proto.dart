// GENERATED CODE - DO NOT MODIFY BY HAND

import 'true.dart';

final class Proto {
  const Proto({
    this.constructor,
    this.$toString = '[object Object]',
    this.valueOf,
    this.prototype,
  });

  factory Proto.fromJson(Map<String, dynamic> json) {
    return Proto(
      constructor: json['constructor'] != null
          ? True.fromJson(json['constructor'] as Map<String, dynamic>)
          : null,
      $toString: json.containsKey('toString')
          ? json['toString'] as String
          : '[object Object]',
      valueOf: json['valueOf'] != null
          ? (json['valueOf'] as num).toInt()
          : null,
      prototype: json['prototype'] != null
          ? Proto.fromJson(json['prototype'] as Map<String, dynamic>)
          : null,
    );
  }

  final True? constructor;

  final String $toString;

  final int? valueOf;

  final Proto? prototype;

  Map<String, dynamic> toJson() {
    return {
      if (constructor != null) 'constructor': constructor?.toJson(),
      'toString': $toString,
      'valueOf': ?valueOf,
      if (prototype != null) 'prototype': prototype?.toJson(),
    };
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.keys.any(
      (key) => const {
        'constructor',
        'toString',
        'valueOf',
        'prototype',
      }.contains(key),
    );
  }

  Proto copyWith({
    True Function()? constructor,
    String Function()? $toString,
    int Function()? valueOf,
    Proto Function()? prototype,
  }) {
    return Proto(
      constructor: constructor != null ? constructor() : this.constructor,
      $toString: $toString != null ? $toString() : this.$toString,
      valueOf: valueOf != null ? valueOf() : this.valueOf,
      prototype: prototype != null ? prototype() : this.prototype,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is Proto &&
            constructor == other.constructor &&
            $toString == other.$toString &&
            valueOf == other.valueOf &&
            prototype == other.prototype;
  }

  @override
  int get hashCode {
    return Object.hash(constructor, $toString, valueOf, prototype);
  }

  @override
  String toString() {
    return 'Proto(constructor: $constructor, \$toString: ${$toString}, valueOf: $valueOf, prototype: $prototype)';
  }
}
