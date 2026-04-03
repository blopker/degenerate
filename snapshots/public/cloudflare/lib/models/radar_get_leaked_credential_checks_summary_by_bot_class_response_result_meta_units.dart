// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetLeakedCredentialChecksSummaryByBotClassResponseResultMetaUnits {const RadarGetLeakedCredentialChecksSummaryByBotClassResponseResultMetaUnits({required this.name, required this.value, });

factory RadarGetLeakedCredentialChecksSummaryByBotClassResponseResultMetaUnits.fromJson(Map<String, dynamic> json) { return RadarGetLeakedCredentialChecksSummaryByBotClassResponseResultMetaUnits(
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
RadarGetLeakedCredentialChecksSummaryByBotClassResponseResultMetaUnits copyWith({String? name, String? value, }) { return RadarGetLeakedCredentialChecksSummaryByBotClassResponseResultMetaUnits(
  name: name ?? this.name,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetLeakedCredentialChecksSummaryByBotClassResponseResultMetaUnits &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'RadarGetLeakedCredentialChecksSummaryByBotClassResponseResultMetaUnits(name: $name, value: $value)'; } 
 }
