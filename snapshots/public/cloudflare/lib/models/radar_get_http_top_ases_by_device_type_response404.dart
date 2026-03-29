// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopAsesByDeviceTypeResponse404 {const RadarGetHttpTopAsesByDeviceTypeResponse404({required this.error});

factory RadarGetHttpTopAsesByDeviceTypeResponse404.fromJson(Map<String, dynamic> json) { return RadarGetHttpTopAsesByDeviceTypeResponse404(
  error: json['error'] as String,
); }

final String error;

Map<String, dynamic> toJson() { return {
  'error': error,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('error') && json['error'] is String; } 
RadarGetHttpTopAsesByDeviceTypeResponse404 copyWith({String? error}) { return RadarGetHttpTopAsesByDeviceTypeResponse404(
  error: error ?? this.error,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTopAsesByDeviceTypeResponse404 &&
          error == other.error; } 
@override int get hashCode { return error.hashCode; } 
@override String toString() { return 'RadarGetHttpTopAsesByDeviceTypeResponse404(error: $error)'; } 
 }
