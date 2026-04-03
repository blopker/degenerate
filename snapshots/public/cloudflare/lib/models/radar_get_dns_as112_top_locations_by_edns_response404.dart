// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetDnsAs112TopLocationsByEdnsResponse404 {const RadarGetDnsAs112TopLocationsByEdnsResponse404({required this.error});

factory RadarGetDnsAs112TopLocationsByEdnsResponse404.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TopLocationsByEdnsResponse404(
  error: json['error'] as String,
); }

final String error;

Map<String, dynamic> toJson() { return {
  'error': error,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('error') && json['error'] is String; } 
RadarGetDnsAs112TopLocationsByEdnsResponse404 copyWith({String? error}) { return RadarGetDnsAs112TopLocationsByEdnsResponse404(
  error: error ?? this.error,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TopLocationsByEdnsResponse404 &&
          error == other.error; } 
@override int get hashCode { return error.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112TopLocationsByEdnsResponse404(error: $error)'; } 
 }
