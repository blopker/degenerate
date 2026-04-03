// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class MconnControllerUpdateConnectorResponse {const MconnControllerUpdateConnectorResponse({this.result});

factory MconnControllerUpdateConnectorResponse.fromJson(Map<String, dynamic> json) { return MconnControllerUpdateConnectorResponse(
  result: (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
); }

final Map<String,dynamic>? result;

Map<String, dynamic> toJson() { return {
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnControllerUpdateConnectorResponse copyWith({Map<String, dynamic> Function()? result}) { return MconnControllerUpdateConnectorResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnControllerUpdateConnectorResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnControllerUpdateConnectorResponse(result: $result)'; } 
 }
