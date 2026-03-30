// GENERATED CODE - DO NOT MODIFY BY HAND

import 'vectorize_index_insert_response.dart';final class VectorizeDeprecatedInsertVectorResponse {const VectorizeDeprecatedInsertVectorResponse({this.result});

factory VectorizeDeprecatedInsertVectorResponse.fromJson(Map<String, dynamic> json) { return VectorizeDeprecatedInsertVectorResponse(
  result: json['result'] != null ? VectorizeIndexInsertResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final VectorizeIndexInsertResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
VectorizeDeprecatedInsertVectorResponse copyWith({VectorizeIndexInsertResponse Function()? result}) { return VectorizeDeprecatedInsertVectorResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeDeprecatedInsertVectorResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'VectorizeDeprecatedInsertVectorResponse(result: $result)'; } 
 }
