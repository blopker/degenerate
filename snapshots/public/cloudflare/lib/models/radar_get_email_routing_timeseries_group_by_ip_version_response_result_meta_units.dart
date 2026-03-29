// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultMetaUnits {const RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultMetaUnits({required this.name, required this.value, });

factory RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultMetaUnits.fromJson(Map<String, dynamic> json) { return RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultMetaUnits(
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
RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultMetaUnits copyWith({String? name, String? value, }) { return RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultMetaUnits(
  name: name ?? this.name,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultMetaUnits &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultMetaUnits(name: $name, value: $value)'; } 
 }
