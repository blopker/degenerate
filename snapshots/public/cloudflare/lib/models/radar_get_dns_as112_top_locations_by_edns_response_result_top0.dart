// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetDnsAs112TopLocationsByEdnsResponseResultTop0 {const RadarGetDnsAs112TopLocationsByEdnsResponseResultTop0({required this.clientCountryAlpha2, required this.clientCountryName, required this.value, });

factory RadarGetDnsAs112TopLocationsByEdnsResponseResultTop0.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TopLocationsByEdnsResponseResultTop0(
  clientCountryAlpha2: json['clientCountryAlpha2'] as String,
  clientCountryName: json['clientCountryName'] as String,
  value: json['value'] as String,
); }

final String clientCountryAlpha2;

final String clientCountryName;

/// A numeric string.
final String value;

Map<String, dynamic> toJson() { return {
  'clientCountryAlpha2': clientCountryAlpha2,
  'clientCountryName': clientCountryName,
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('clientCountryAlpha2') && json['clientCountryAlpha2'] is String &&
      json.containsKey('clientCountryName') && json['clientCountryName'] is String &&
      json.containsKey('value') && json['value'] is String; } 
RadarGetDnsAs112TopLocationsByEdnsResponseResultTop0 copyWith({String? clientCountryAlpha2, String? clientCountryName, String? value, }) { return RadarGetDnsAs112TopLocationsByEdnsResponseResultTop0(
  clientCountryAlpha2: clientCountryAlpha2 ?? this.clientCountryAlpha2,
  clientCountryName: clientCountryName ?? this.clientCountryName,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TopLocationsByEdnsResponseResultTop0 &&
          clientCountryAlpha2 == other.clientCountryAlpha2 &&
          clientCountryName == other.clientCountryName &&
          value == other.value; } 
@override int get hashCode { return Object.hash(clientCountryAlpha2, clientCountryName, value); } 
@override String toString() { return 'RadarGetDnsAs112TopLocationsByEdnsResponseResultTop0(clientCountryAlpha2: $clientCountryAlpha2, clientCountryName: $clientCountryName, value: $value)'; } 
 }
