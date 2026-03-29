// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAnnotationsResponseResultAnnotationsLocationsDetails {const RadarGetAnnotationsResponseResultAnnotationsLocationsDetails({required this.code, required this.name, });

factory RadarGetAnnotationsResponseResultAnnotationsLocationsDetails.fromJson(Map<String, dynamic> json) { return RadarGetAnnotationsResponseResultAnnotationsLocationsDetails(
  code: json['code'] as String,
  name: json['name'] as String,
); }

final String code;

final String name;

Map<String, dynamic> toJson() { return {
  'code': code,
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') && json['code'] is String &&
      json.containsKey('name') && json['name'] is String; } 
RadarGetAnnotationsResponseResultAnnotationsLocationsDetails copyWith({String? code, String? name, }) { return RadarGetAnnotationsResponseResultAnnotationsLocationsDetails(
  code: code ?? this.code,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAnnotationsResponseResultAnnotationsLocationsDetails &&
          code == other.code &&
          name == other.name; } 
@override int get hashCode { return Object.hash(code, name); } 
@override String toString() { return 'RadarGetAnnotationsResponseResultAnnotationsLocationsDetails(code: $code, name: $name)'; } 
 }
