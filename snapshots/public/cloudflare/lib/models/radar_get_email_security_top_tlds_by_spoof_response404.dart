// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailSecurityTopTldsBySpoofResponse404 {const RadarGetEmailSecurityTopTldsBySpoofResponse404({required this.error});

factory RadarGetEmailSecurityTopTldsBySpoofResponse404.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecurityTopTldsBySpoofResponse404(
  error: json['error'] as String,
); }

final String error;

Map<String, dynamic> toJson() { return {
  'error': error,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('error') && json['error'] is String; } 
RadarGetEmailSecurityTopTldsBySpoofResponse404 copyWith({String? error}) { return RadarGetEmailSecurityTopTldsBySpoofResponse404(
  error: error ?? this.error,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecurityTopTldsBySpoofResponse404 &&
          error == other.error; } 
@override int get hashCode { return error.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTopTldsBySpoofResponse404(error: $error)'; } 
 }
