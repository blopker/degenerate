// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetOriginsTimeseriesGroupResponseResultMetaUnits {const RadarGetOriginsTimeseriesGroupResponseResultMetaUnits({required this.name, required this.value, });

factory RadarGetOriginsTimeseriesGroupResponseResultMetaUnits.fromJson(Map<String, dynamic> json) { return RadarGetOriginsTimeseriesGroupResponseResultMetaUnits(
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
RadarGetOriginsTimeseriesGroupResponseResultMetaUnits copyWith({String? name, String? value, }) { return RadarGetOriginsTimeseriesGroupResponseResultMetaUnits(
  name: name ?? this.name,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetOriginsTimeseriesGroupResponseResultMetaUnits &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'RadarGetOriginsTimeseriesGroupResponseResultMetaUnits(name: $name, value: $value)'; } 
 }
