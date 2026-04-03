// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'vectorize_create_index_response.dart';@immutable final class VectorizeDeprecatedCreateVectorizeIndexResponse {const VectorizeDeprecatedCreateVectorizeIndexResponse({this.result});

factory VectorizeDeprecatedCreateVectorizeIndexResponse.fromJson(Map<String, dynamic> json) { return VectorizeDeprecatedCreateVectorizeIndexResponse(
  result: json['result'] != null ? VectorizeCreateIndexResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final VectorizeCreateIndexResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
VectorizeDeprecatedCreateVectorizeIndexResponse copyWith({VectorizeCreateIndexResponse Function()? result}) { return VectorizeDeprecatedCreateVectorizeIndexResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeDeprecatedCreateVectorizeIndexResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'VectorizeDeprecatedCreateVectorizeIndexResponse(result: $result)'; } 
 }
