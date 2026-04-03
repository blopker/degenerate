// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class MconnControllerUpdateDeviceResponse {const MconnControllerUpdateDeviceResponse({this.result});

factory MconnControllerUpdateDeviceResponse.fromJson(Map<String, dynamic> json) { return MconnControllerUpdateDeviceResponse(
  result: (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
); }

final Map<String,dynamic>? result;

Map<String, dynamic> toJson() { return {
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnControllerUpdateDeviceResponse copyWith({Map<String, dynamic> Function()? result}) { return MconnControllerUpdateDeviceResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnControllerUpdateDeviceResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnControllerUpdateDeviceResponse(result: $result)'; } 
 }
