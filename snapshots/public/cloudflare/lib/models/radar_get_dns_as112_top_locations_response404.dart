// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetDnsAs112TopLocationsResponse404 {const RadarGetDnsAs112TopLocationsResponse404({required this.error});

factory RadarGetDnsAs112TopLocationsResponse404.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TopLocationsResponse404(
  error: json['error'] as String,
); }

final String error;

Map<String, dynamic> toJson() { return {
  'error': error,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('error') && json['error'] is String; } 
RadarGetDnsAs112TopLocationsResponse404 copyWith({String? error}) { return RadarGetDnsAs112TopLocationsResponse404(
  error: error ?? this.error,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TopLocationsResponse404 &&
          error == other.error; } 
@override int get hashCode { return error.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112TopLocationsResponse404(error: $error)'; } 
 }
