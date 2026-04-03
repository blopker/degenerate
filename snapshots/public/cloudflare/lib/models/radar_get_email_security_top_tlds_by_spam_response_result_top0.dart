// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecurityTopTldsBySpamResponseResultTop0 {const RadarGetEmailSecurityTopTldsBySpamResponseResultTop0({required this.name, required this.value, });

factory RadarGetEmailSecurityTopTldsBySpamResponseResultTop0.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecurityTopTldsBySpamResponseResultTop0(
  name: json['name'] as String,
  value: json['value'] as String,
); }

final String name;

/// A numeric string.
final String value;

Map<String, dynamic> toJson() { return {
  'name': name,
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('value') && json['value'] is String; } 
RadarGetEmailSecurityTopTldsBySpamResponseResultTop0 copyWith({String? name, String? value, }) { return RadarGetEmailSecurityTopTldsBySpamResponseResultTop0(
  name: name ?? this.name,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecurityTopTldsBySpamResponseResultTop0 &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'RadarGetEmailSecurityTopTldsBySpamResponseResultTop0(name: $name, value: $value)'; } 
 }
