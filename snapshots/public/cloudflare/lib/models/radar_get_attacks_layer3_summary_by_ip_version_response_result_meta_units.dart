// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetAttacksLayer3SummaryByIpVersionResponseResultMetaUnits {const RadarGetAttacksLayer3SummaryByIpVersionResponseResultMetaUnits({required this.name, required this.value, });

factory RadarGetAttacksLayer3SummaryByIpVersionResponseResultMetaUnits.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3SummaryByIpVersionResponseResultMetaUnits(
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
RadarGetAttacksLayer3SummaryByIpVersionResponseResultMetaUnits copyWith({String? name, String? value, }) { return RadarGetAttacksLayer3SummaryByIpVersionResponseResultMetaUnits(
  name: name ?? this.name,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3SummaryByIpVersionResponseResultMetaUnits &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'RadarGetAttacksLayer3SummaryByIpVersionResponseResultMetaUnits(name: $name, value: $value)'; } 
 }
