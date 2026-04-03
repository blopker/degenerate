// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetAttacksLayer3SummaryResponseResultMetaUnits {const RadarGetAttacksLayer3SummaryResponseResultMetaUnits({required this.name, required this.value, });

factory RadarGetAttacksLayer3SummaryResponseResultMetaUnits.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3SummaryResponseResultMetaUnits(
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
RadarGetAttacksLayer3SummaryResponseResultMetaUnits copyWith({String? name, String? value, }) { return RadarGetAttacksLayer3SummaryResponseResultMetaUnits(
  name: name ?? this.name,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3SummaryResponseResultMetaUnits &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'RadarGetAttacksLayer3SummaryResponseResultMetaUnits(name: $name, value: $value)'; } 
 }
