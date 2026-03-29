// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTimeseriesGroupByOperatingSystemResponseResultMetaUnits {const RadarGetHttpTimeseriesGroupByOperatingSystemResponseResultMetaUnits({required this.name, required this.value, });

factory RadarGetHttpTimeseriesGroupByOperatingSystemResponseResultMetaUnits.fromJson(Map<String, dynamic> json) { return RadarGetHttpTimeseriesGroupByOperatingSystemResponseResultMetaUnits(
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
RadarGetHttpTimeseriesGroupByOperatingSystemResponseResultMetaUnits copyWith({String? name, String? value, }) { return RadarGetHttpTimeseriesGroupByOperatingSystemResponseResultMetaUnits(
  name: name ?? this.name,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTimeseriesGroupByOperatingSystemResponseResultMetaUnits &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByOperatingSystemResponseResultMetaUnits(name: $name, value: $value)'; } 
 }
