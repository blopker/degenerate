// GENERATED CODE - DO NOT MODIFY BY HAND

import 'vectorize_create_index_response.dart';final class VectorizeDeprecatedGetVectorizeIndexResponse {const VectorizeDeprecatedGetVectorizeIndexResponse({this.result});

factory VectorizeDeprecatedGetVectorizeIndexResponse.fromJson(Map<String, dynamic> json) { return VectorizeDeprecatedGetVectorizeIndexResponse(
  result: json['result'] != null ? VectorizeCreateIndexResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final VectorizeCreateIndexResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
VectorizeDeprecatedGetVectorizeIndexResponse copyWith({VectorizeCreateIndexResponse Function()? result}) { return VectorizeDeprecatedGetVectorizeIndexResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeDeprecatedGetVectorizeIndexResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'VectorizeDeprecatedGetVectorizeIndexResponse(result: $result)'; } 
 }
