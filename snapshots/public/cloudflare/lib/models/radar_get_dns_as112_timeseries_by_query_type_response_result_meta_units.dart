// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaUnits {const RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaUnits({required this.name, required this.value, });

factory RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaUnits.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaUnits(
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
RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaUnits copyWith({String? name, String? value, }) { return RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaUnits(
  name: name ?? this.name,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaUnits &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaUnits(name: $name, value: $value)'; } 
 }
