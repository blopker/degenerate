// GENERATED CODE - DO NOT MODIFY BY HAND

import 'response6.dart';final class VectorizeUpsertVectorResponse {const VectorizeUpsertVectorResponse({this.result});

factory VectorizeUpsertVectorResponse.fromJson(Map<String, dynamic> json) { return VectorizeUpsertVectorResponse(
  result: json['result'] != null ? Response6.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final Response6? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
VectorizeUpsertVectorResponse copyWith({Response6 Function()? result}) { return VectorizeUpsertVectorResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeUpsertVectorResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'VectorizeUpsertVectorResponse(result: $result)'; } 
 }
