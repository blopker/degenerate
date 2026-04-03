// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetDnsTimeseriesGroupByIpVersionResponseResultMetaUnits {const RadarGetDnsTimeseriesGroupByIpVersionResponseResultMetaUnits({required this.name, required this.value, });

factory RadarGetDnsTimeseriesGroupByIpVersionResponseResultMetaUnits.fromJson(Map<String, dynamic> json) { return RadarGetDnsTimeseriesGroupByIpVersionResponseResultMetaUnits(
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
RadarGetDnsTimeseriesGroupByIpVersionResponseResultMetaUnits copyWith({String? name, String? value, }) { return RadarGetDnsTimeseriesGroupByIpVersionResponseResultMetaUnits(
  name: name ?? this.name,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsTimeseriesGroupByIpVersionResponseResultMetaUnits &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByIpVersionResponseResultMetaUnits(name: $name, value: $value)'; } 
 }
