// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetBgpTopAsnsByPrefixesResponse404 {const RadarGetBgpTopAsnsByPrefixesResponse404({required this.error});

factory RadarGetBgpTopAsnsByPrefixesResponse404.fromJson(Map<String, dynamic> json) { return RadarGetBgpTopAsnsByPrefixesResponse404(
  error: json['error'] as String,
); }

final String error;

Map<String, dynamic> toJson() { return {
  'error': error,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('error') && json['error'] is String; } 
RadarGetBgpTopAsnsByPrefixesResponse404 copyWith({String? error}) { return RadarGetBgpTopAsnsByPrefixesResponse404(
  error: error ?? this.error,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBgpTopAsnsByPrefixesResponse404 &&
          error == other.error; } 
@override int get hashCode { return error.hashCode; } 
@override String toString() { return 'RadarGetBgpTopAsnsByPrefixesResponse404(error: $error)'; } 
 }
