// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAttacksLayer3TopTargetLocationsResponseResultMetaUnits {const RadarGetAttacksLayer3TopTargetLocationsResponseResultMetaUnits({required this.name, required this.value, });

factory RadarGetAttacksLayer3TopTargetLocationsResponseResultMetaUnits.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3TopTargetLocationsResponseResultMetaUnits(
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
RadarGetAttacksLayer3TopTargetLocationsResponseResultMetaUnits copyWith({String? name, String? value, }) { return RadarGetAttacksLayer3TopTargetLocationsResponseResultMetaUnits(
  name: name ?? this.name,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3TopTargetLocationsResponseResultMetaUnits &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'RadarGetAttacksLayer3TopTargetLocationsResponseResultMetaUnits(name: $name, value: $value)'; } 
 }
