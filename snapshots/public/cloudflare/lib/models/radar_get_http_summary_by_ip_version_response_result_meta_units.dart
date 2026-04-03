// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpSummaryByIpVersionResponseResultMetaUnits {const RadarGetHttpSummaryByIpVersionResponseResultMetaUnits({required this.name, required this.value, });

factory RadarGetHttpSummaryByIpVersionResponseResultMetaUnits.fromJson(Map<String, dynamic> json) { return RadarGetHttpSummaryByIpVersionResponseResultMetaUnits(
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
RadarGetHttpSummaryByIpVersionResponseResultMetaUnits copyWith({String? name, String? value, }) { return RadarGetHttpSummaryByIpVersionResponseResultMetaUnits(
  name: name ?? this.name,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpSummaryByIpVersionResponseResultMetaUnits &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'RadarGetHttpSummaryByIpVersionResponseResultMetaUnits(name: $name, value: $value)'; } 
 }
