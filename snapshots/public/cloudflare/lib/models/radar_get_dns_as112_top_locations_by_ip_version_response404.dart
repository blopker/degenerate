// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetDnsAs112TopLocationsByIpVersionResponse404 {const RadarGetDnsAs112TopLocationsByIpVersionResponse404({required this.error});

factory RadarGetDnsAs112TopLocationsByIpVersionResponse404.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TopLocationsByIpVersionResponse404(
  error: json['error'] as String,
); }

final String error;

Map<String, dynamic> toJson() { return {
  'error': error,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('error') && json['error'] is String; } 
RadarGetDnsAs112TopLocationsByIpVersionResponse404 copyWith({String? error}) { return RadarGetDnsAs112TopLocationsByIpVersionResponse404(
  error: error ?? this.error,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TopLocationsByIpVersionResponse404 &&
          error == other.error; } 
@override int get hashCode { return error.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112TopLocationsByIpVersionResponse404(error: $error)'; } 
 }
