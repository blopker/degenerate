// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetDnsSummaryByResponseCodeResponseResultMetaUnits {const RadarGetDnsSummaryByResponseCodeResponseResultMetaUnits({required this.name, required this.value, });

factory RadarGetDnsSummaryByResponseCodeResponseResultMetaUnits.fromJson(Map<String, dynamic> json) { return RadarGetDnsSummaryByResponseCodeResponseResultMetaUnits(
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
RadarGetDnsSummaryByResponseCodeResponseResultMetaUnits copyWith({String? name, String? value, }) { return RadarGetDnsSummaryByResponseCodeResponseResultMetaUnits(
  name: name ?? this.name,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsSummaryByResponseCodeResponseResultMetaUnits &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'RadarGetDnsSummaryByResponseCodeResponseResultMetaUnits(name: $name, value: $value)'; } 
 }
