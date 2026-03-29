// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopAsesByOperatingSystemResponse404 {const RadarGetHttpTopAsesByOperatingSystemResponse404({required this.error});

factory RadarGetHttpTopAsesByOperatingSystemResponse404.fromJson(Map<String, dynamic> json) { return RadarGetHttpTopAsesByOperatingSystemResponse404(
  error: json['error'] as String,
); }

final String error;

Map<String, dynamic> toJson() { return {
  'error': error,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('error') && json['error'] is String; } 
RadarGetHttpTopAsesByOperatingSystemResponse404 copyWith({String? error}) { return RadarGetHttpTopAsesByOperatingSystemResponse404(
  error: error ?? this.error,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTopAsesByOperatingSystemResponse404 &&
          error == other.error; } 
@override int get hashCode { return error.hashCode; } 
@override String toString() { return 'RadarGetHttpTopAsesByOperatingSystemResponse404(error: $error)'; } 
 }
