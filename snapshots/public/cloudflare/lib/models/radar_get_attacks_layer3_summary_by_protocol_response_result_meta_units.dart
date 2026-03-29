// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAttacksLayer3SummaryByProtocolResponseResultMetaUnits {const RadarGetAttacksLayer3SummaryByProtocolResponseResultMetaUnits({required this.name, required this.value, });

factory RadarGetAttacksLayer3SummaryByProtocolResponseResultMetaUnits.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3SummaryByProtocolResponseResultMetaUnits(
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
RadarGetAttacksLayer3SummaryByProtocolResponseResultMetaUnits copyWith({String? name, String? value, }) { return RadarGetAttacksLayer3SummaryByProtocolResponseResultMetaUnits(
  name: name ?? this.name,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3SummaryByProtocolResponseResultMetaUnits &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'RadarGetAttacksLayer3SummaryByProtocolResponseResultMetaUnits(name: $name, value: $value)'; } 
 }
