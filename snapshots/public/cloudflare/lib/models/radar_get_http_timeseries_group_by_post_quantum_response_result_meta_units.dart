// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTimeseriesGroupByPostQuantumResponseResultMetaUnits {const RadarGetHttpTimeseriesGroupByPostQuantumResponseResultMetaUnits({required this.name, required this.value, });

factory RadarGetHttpTimeseriesGroupByPostQuantumResponseResultMetaUnits.fromJson(Map<String, dynamic> json) { return RadarGetHttpTimeseriesGroupByPostQuantumResponseResultMetaUnits(
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
RadarGetHttpTimeseriesGroupByPostQuantumResponseResultMetaUnits copyWith({String? name, String? value, }) { return RadarGetHttpTimeseriesGroupByPostQuantumResponseResultMetaUnits(
  name: name ?? this.name,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTimeseriesGroupByPostQuantumResponseResultMetaUnits &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByPostQuantumResponseResultMetaUnits(name: $name, value: $value)'; } 
 }
