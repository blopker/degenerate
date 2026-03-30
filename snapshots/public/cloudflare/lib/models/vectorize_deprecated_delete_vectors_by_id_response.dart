// GENERATED CODE - DO NOT MODIFY BY HAND

import 'vectorize_index_delete_vectors_by_id_response.dart';final class VectorizeDeprecatedDeleteVectorsByIdResponse {const VectorizeDeprecatedDeleteVectorsByIdResponse({this.result});

factory VectorizeDeprecatedDeleteVectorsByIdResponse.fromJson(Map<String, dynamic> json) { return VectorizeDeprecatedDeleteVectorsByIdResponse(
  result: json['result'] != null ? VectorizeIndexDeleteVectorsByIdResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final VectorizeIndexDeleteVectorsByIdResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
VectorizeDeprecatedDeleteVectorsByIdResponse copyWith({VectorizeIndexDeleteVectorsByIdResponse Function()? result}) { return VectorizeDeprecatedDeleteVectorsByIdResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeDeprecatedDeleteVectorsByIdResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'VectorizeDeprecatedDeleteVectorsByIdResponse(result: $result)'; } 
 }
