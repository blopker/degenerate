// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetOriginDetailsResponse404 {const RadarGetOriginDetailsResponse404({required this.error});

factory RadarGetOriginDetailsResponse404.fromJson(Map<String, dynamic> json) { return RadarGetOriginDetailsResponse404(
  error: json['error'] as String,
); }

final String error;

Map<String, dynamic> toJson() { return {
  'error': error,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('error') && json['error'] is String; } 
RadarGetOriginDetailsResponse404 copyWith({String? error}) { return RadarGetOriginDetailsResponse404(
  error: error ?? this.error,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetOriginDetailsResponse404 &&
          error == other.error; } 
@override int get hashCode { return error.hashCode; } 
@override String toString() { return 'RadarGetOriginDetailsResponse404(error: $error)'; } 
 }
