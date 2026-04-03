// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetDnsTopAsesResponse404 {const RadarGetDnsTopAsesResponse404({required this.error});

factory RadarGetDnsTopAsesResponse404.fromJson(Map<String, dynamic> json) { return RadarGetDnsTopAsesResponse404(
  error: json['error'] as String,
); }

final String error;

Map<String, dynamic> toJson() { return {
  'error': error,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('error') && json['error'] is String; } 
RadarGetDnsTopAsesResponse404 copyWith({String? error}) { return RadarGetDnsTopAsesResponse404(
  error: error ?? this.error,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsTopAsesResponse404 &&
          error == other.error; } 
@override int get hashCode { return error.hashCode; } 
@override String toString() { return 'RadarGetDnsTopAsesResponse404(error: $error)'; } 
 }
