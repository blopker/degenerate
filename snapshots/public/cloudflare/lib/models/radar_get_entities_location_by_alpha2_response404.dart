// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEntitiesLocationByAlpha2Response404 {const RadarGetEntitiesLocationByAlpha2Response404({required this.error});

factory RadarGetEntitiesLocationByAlpha2Response404.fromJson(Map<String, dynamic> json) { return RadarGetEntitiesLocationByAlpha2Response404(
  error: json['error'] as String,
); }

final String error;

Map<String, dynamic> toJson() { return {
  'error': error,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('error') && json['error'] is String; } 
RadarGetEntitiesLocationByAlpha2Response404 copyWith({String? error}) { return RadarGetEntitiesLocationByAlpha2Response404(
  error: error ?? this.error,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEntitiesLocationByAlpha2Response404 &&
          error == other.error; } 
@override int get hashCode { return error.hashCode; } 
@override String toString() { return 'RadarGetEntitiesLocationByAlpha2Response404(error: $error)'; } 
 }
