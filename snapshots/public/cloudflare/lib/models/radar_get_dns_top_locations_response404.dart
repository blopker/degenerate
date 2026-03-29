// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetDnsTopLocationsResponse404 {const RadarGetDnsTopLocationsResponse404({required this.error});

factory RadarGetDnsTopLocationsResponse404.fromJson(Map<String, dynamic> json) { return RadarGetDnsTopLocationsResponse404(
  error: json['error'] as String,
); }

final String error;

Map<String, dynamic> toJson() { return {
  'error': error,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('error') && json['error'] is String; } 
RadarGetDnsTopLocationsResponse404 copyWith({String? error}) { return RadarGetDnsTopLocationsResponse404(
  error: error ?? this.error,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsTopLocationsResponse404 &&
          error == other.error; } 
@override int get hashCode { return error.hashCode; } 
@override String toString() { return 'RadarGetDnsTopLocationsResponse404(error: $error)'; } 
 }
