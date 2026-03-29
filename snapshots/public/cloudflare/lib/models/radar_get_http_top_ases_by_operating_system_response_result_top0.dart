// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopAsesByOperatingSystemResponseResultTop0 {const RadarGetHttpTopAsesByOperatingSystemResponseResultTop0({required this.clientAsn, required this.clientAsName, required this.value, });

factory RadarGetHttpTopAsesByOperatingSystemResponseResultTop0.fromJson(Map<String, dynamic> json) { return RadarGetHttpTopAsesByOperatingSystemResponseResultTop0(
  clientAsn: (json['clientASN'] as num).toInt(),
  clientAsName: json['clientASName'] as String,
  value: json['value'] as String,
); }

final int clientAsn;

final String clientAsName;

/// A numeric string.
final String value;

Map<String, dynamic> toJson() { return {
  'clientASN': clientAsn,
  'clientASName': clientAsName,
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('clientASN') && json['clientASN'] is num &&
      json.containsKey('clientASName') && json['clientASName'] is String &&
      json.containsKey('value') && json['value'] is String; } 
RadarGetHttpTopAsesByOperatingSystemResponseResultTop0 copyWith({int? clientAsn, String? clientAsName, String? value, }) { return RadarGetHttpTopAsesByOperatingSystemResponseResultTop0(
  clientAsn: clientAsn ?? this.clientAsn,
  clientAsName: clientAsName ?? this.clientAsName,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTopAsesByOperatingSystemResponseResultTop0 &&
          clientAsn == other.clientAsn &&
          clientAsName == other.clientAsName &&
          value == other.value; } 
@override int get hashCode { return Object.hash(clientAsn, clientAsName, value); } 
@override String toString() { return 'RadarGetHttpTopAsesByOperatingSystemResponseResultTop0(clientAsn: $clientAsn, clientAsName: $clientAsName, value: $value)'; } 
 }
