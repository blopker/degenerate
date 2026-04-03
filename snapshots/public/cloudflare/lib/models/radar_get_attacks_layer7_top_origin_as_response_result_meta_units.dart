// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetAttacksLayer7TopOriginAsResponseResultMetaUnits {const RadarGetAttacksLayer7TopOriginAsResponseResultMetaUnits({required this.name, required this.value, });

factory RadarGetAttacksLayer7TopOriginAsResponseResultMetaUnits.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer7TopOriginAsResponseResultMetaUnits(
  name: json['name'] as String,
  value: json['value'] as String,
); }

final String name;

final String value;

Map<String, dynamic> toJson() { return {
  'name': name,
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('value') && json['value'] is String; } 
RadarGetAttacksLayer7TopOriginAsResponseResultMetaUnits copyWith({String? name, String? value, }) { return RadarGetAttacksLayer7TopOriginAsResponseResultMetaUnits(
  name: name ?? this.name,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer7TopOriginAsResponseResultMetaUnits &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'RadarGetAttacksLayer7TopOriginAsResponseResultMetaUnits(name: $name, value: $value)'; } 
 }
