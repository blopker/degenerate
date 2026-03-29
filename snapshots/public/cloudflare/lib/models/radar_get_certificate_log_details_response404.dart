// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetCertificateLogDetailsResponse404 {const RadarGetCertificateLogDetailsResponse404({required this.error});

factory RadarGetCertificateLogDetailsResponse404.fromJson(Map<String, dynamic> json) { return RadarGetCertificateLogDetailsResponse404(
  error: json['error'] as String,
); }

final String error;

Map<String, dynamic> toJson() { return {
  'error': error,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('error') && json['error'] is String; } 
RadarGetCertificateLogDetailsResponse404 copyWith({String? error}) { return RadarGetCertificateLogDetailsResponse404(
  error: error ?? this.error,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetCertificateLogDetailsResponse404 &&
          error == other.error; } 
@override int get hashCode { return error.hashCode; } 
@override String toString() { return 'RadarGetCertificateLogDetailsResponse404(error: $error)'; } 
 }
