// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetCtTimeseriesGroupResponseResultMetaUnits {const RadarGetCtTimeseriesGroupResponseResultMetaUnits({required this.name, required this.value, });

factory RadarGetCtTimeseriesGroupResponseResultMetaUnits.fromJson(Map<String, dynamic> json) { return RadarGetCtTimeseriesGroupResponseResultMetaUnits(
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
RadarGetCtTimeseriesGroupResponseResultMetaUnits copyWith({String? name, String? value, }) { return RadarGetCtTimeseriesGroupResponseResultMetaUnits(
  name: name ?? this.name,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetCtTimeseriesGroupResponseResultMetaUnits &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'RadarGetCtTimeseriesGroupResponseResultMetaUnits(name: $name, value: $value)'; } 
 }
