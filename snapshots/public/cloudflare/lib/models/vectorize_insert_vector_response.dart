// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response4.dart';@immutable final class VectorizeInsertVectorResponse {const VectorizeInsertVectorResponse({this.result});

factory VectorizeInsertVectorResponse.fromJson(Map<String, dynamic> json) { return VectorizeInsertVectorResponse(
  result: json['result'] != null ? Response4.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final Response4? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
VectorizeInsertVectorResponse copyWith({Response4 Function()? result}) { return VectorizeInsertVectorResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeInsertVectorResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'VectorizeInsertVectorResponse(result: $result)'; } 
 }
