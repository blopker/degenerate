// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAttacksLayer3TopVerticalsResponseResultMetaUnits {const RadarGetAttacksLayer3TopVerticalsResponseResultMetaUnits({required this.name, required this.value, });

factory RadarGetAttacksLayer3TopVerticalsResponseResultMetaUnits.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3TopVerticalsResponseResultMetaUnits(
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
RadarGetAttacksLayer3TopVerticalsResponseResultMetaUnits copyWith({String? name, String? value, }) { return RadarGetAttacksLayer3TopVerticalsResponseResultMetaUnits(
  name: name ?? this.name,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3TopVerticalsResponseResultMetaUnits &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'RadarGetAttacksLayer3TopVerticalsResponseResultMetaUnits(name: $name, value: $value)'; } 
 }
