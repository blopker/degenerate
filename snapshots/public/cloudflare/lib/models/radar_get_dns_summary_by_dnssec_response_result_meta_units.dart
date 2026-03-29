// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetDnsSummaryByDnssecResponseResultMetaUnits {const RadarGetDnsSummaryByDnssecResponseResultMetaUnits({required this.name, required this.value, });

factory RadarGetDnsSummaryByDnssecResponseResultMetaUnits.fromJson(Map<String, dynamic> json) { return RadarGetDnsSummaryByDnssecResponseResultMetaUnits(
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
RadarGetDnsSummaryByDnssecResponseResultMetaUnits copyWith({String? name, String? value, }) { return RadarGetDnsSummaryByDnssecResponseResultMetaUnits(
  name: name ?? this.name,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsSummaryByDnssecResponseResultMetaUnits &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'RadarGetDnsSummaryByDnssecResponseResultMetaUnits(name: $name, value: $value)'; } 
 }
