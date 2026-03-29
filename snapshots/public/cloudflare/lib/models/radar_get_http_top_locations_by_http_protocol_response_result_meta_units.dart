// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaUnits {const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaUnits({required this.name, required this.value, });

factory RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaUnits.fromJson(Map<String, dynamic> json) { return RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaUnits(
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
RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaUnits copyWith({String? name, String? value, }) { return RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaUnits(
  name: name ?? this.name,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaUnits &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaUnits(name: $name, value: $value)'; } 
 }
