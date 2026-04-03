// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetAttacksLayer3TopVerticalsResponse404 {const RadarGetAttacksLayer3TopVerticalsResponse404({required this.error});

factory RadarGetAttacksLayer3TopVerticalsResponse404.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3TopVerticalsResponse404(
  error: json['error'] as String,
); }

final String error;

Map<String, dynamic> toJson() { return {
  'error': error,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('error') && json['error'] is String; } 
RadarGetAttacksLayer3TopVerticalsResponse404 copyWith({String? error}) { return RadarGetAttacksLayer3TopVerticalsResponse404(
  error: error ?? this.error,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3TopVerticalsResponse404 &&
          error == other.error; } 
@override int get hashCode { return error.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TopVerticalsResponse404(error: $error)'; } 
 }
