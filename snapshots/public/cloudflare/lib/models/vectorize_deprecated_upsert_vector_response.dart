// GENERATED CODE - DO NOT MODIFY BY HAND

import 'vectorize_index_upsert_response.dart';final class VectorizeDeprecatedUpsertVectorResponse {const VectorizeDeprecatedUpsertVectorResponse({this.result});

factory VectorizeDeprecatedUpsertVectorResponse.fromJson(Map<String, dynamic> json) { return VectorizeDeprecatedUpsertVectorResponse(
  result: json['result'] != null ? VectorizeIndexUpsertResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final VectorizeIndexUpsertResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
VectorizeDeprecatedUpsertVectorResponse copyWith({VectorizeIndexUpsertResponse Function()? result}) { return VectorizeDeprecatedUpsertVectorResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeDeprecatedUpsertVectorResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'VectorizeDeprecatedUpsertVectorResponse(result: $result)'; } 
 }
