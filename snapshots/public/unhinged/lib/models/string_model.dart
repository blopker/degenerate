// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

@immutable
final class StringModel {
  const StringModel({required this.value, this.length, this.charAt, this.trim});

  factory StringModel.fromJson(Map<String, dynamic> json) {
    return StringModel(
      length: json['length'] != null ? (json['length'] as num).toInt() : null,
      value: json['value'] as String,
      charAt: json['charAt'] as String?,
      trim: json['trim'] as bool?,
    );
  }

  final int? length;

  final String value;

  final String? charAt;

  final bool? trim;

  Map<String, dynamic> toJson() {
    return {
      'length': ?length,
      'value': value,
      'charAt': ?charAt,
      'trim': ?trim,
    };
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.containsKey('value') && json['value'] is String;
  }

  StringModel copyWith({
    int Function()? length,
    String? value,
    String Function()? charAt,
    bool Function()? trim,
  }) {
    return StringModel(
      length: length != null ? length() : this.length,
      value: value ?? this.value,
      charAt: charAt != null ? charAt() : this.charAt,
      trim: trim != null ? trim() : this.trim,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is StringModel &&
            length == other.length &&
            value == other.value &&
            charAt == other.charAt &&
            trim == other.trim;
  }

  @override
  int get hashCode {
    return Object.hash(length, value, charAt, trim);
  }

  @override
  String toString() {
    return 'StringModel(length: $length, value: $value, charAt: $charAt, trim: $trim)';
  }
}
