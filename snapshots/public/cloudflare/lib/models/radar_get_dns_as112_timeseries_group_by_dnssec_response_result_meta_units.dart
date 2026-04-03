// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetDnsAs112TimeseriesGroupByDnssecResponseResultMetaUnits {const RadarGetDnsAs112TimeseriesGroupByDnssecResponseResultMetaUnits({required this.name, required this.value, });

factory RadarGetDnsAs112TimeseriesGroupByDnssecResponseResultMetaUnits.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TimeseriesGroupByDnssecResponseResultMetaUnits(
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
RadarGetDnsAs112TimeseriesGroupByDnssecResponseResultMetaUnits copyWith({String? name, String? value, }) { return RadarGetDnsAs112TimeseriesGroupByDnssecResponseResultMetaUnits(
  name: name ?? this.name,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TimeseriesGroupByDnssecResponseResultMetaUnits &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesGroupByDnssecResponseResultMetaUnits(name: $name, value: $value)'; } 
 }
