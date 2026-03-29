// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAttacksLayer7SummaryByIpVersionResponseResultMetaUnits {const RadarGetAttacksLayer7SummaryByIpVersionResponseResultMetaUnits({required this.name, required this.value, });

factory RadarGetAttacksLayer7SummaryByIpVersionResponseResultMetaUnits.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer7SummaryByIpVersionResponseResultMetaUnits(
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
RadarGetAttacksLayer7SummaryByIpVersionResponseResultMetaUnits copyWith({String? name, String? value, }) { return RadarGetAttacksLayer7SummaryByIpVersionResponseResultMetaUnits(
  name: name ?? this.name,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer7SummaryByIpVersionResponseResultMetaUnits &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'RadarGetAttacksLayer7SummaryByIpVersionResponseResultMetaUnits(name: $name, value: $value)'; } 
 }
