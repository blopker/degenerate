// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetNetflowsTopAsesResponse404 {const RadarGetNetflowsTopAsesResponse404({required this.error});

factory RadarGetNetflowsTopAsesResponse404.fromJson(Map<String, dynamic> json) { return RadarGetNetflowsTopAsesResponse404(
  error: json['error'] as String,
); }

final String error;

Map<String, dynamic> toJson() { return {
  'error': error,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('error') && json['error'] is String; } 
RadarGetNetflowsTopAsesResponse404 copyWith({String? error}) { return RadarGetNetflowsTopAsesResponse404(
  error: error ?? this.error,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetNetflowsTopAsesResponse404 &&
          error == other.error; } 
@override int get hashCode { return error.hashCode; } 
@override String toString() { return 'RadarGetNetflowsTopAsesResponse404(error: $error)'; } 
 }
