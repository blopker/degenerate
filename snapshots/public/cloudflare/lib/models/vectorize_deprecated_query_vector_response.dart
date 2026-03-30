// GENERATED CODE - DO NOT MODIFY BY HAND

import 'vectorize_index_query_response.dart';final class VectorizeDeprecatedQueryVectorResponse {const VectorizeDeprecatedQueryVectorResponse({this.result});

factory VectorizeDeprecatedQueryVectorResponse.fromJson(Map<String, dynamic> json) { return VectorizeDeprecatedQueryVectorResponse(
  result: json['result'] != null ? VectorizeIndexQueryResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final VectorizeIndexQueryResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
VectorizeDeprecatedQueryVectorResponse copyWith({VectorizeIndexQueryResponse Function()? result}) { return VectorizeDeprecatedQueryVectorResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeDeprecatedQueryVectorResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'VectorizeDeprecatedQueryVectorResponse(result: $result)'; } 
 }
