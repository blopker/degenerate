// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'vectorize_index_get_vectors_by_id_response2.dart';@immutable final class VectorizeDeprecatedGetVectorsByIdResponse {const VectorizeDeprecatedGetVectorsByIdResponse({this.result});

factory VectorizeDeprecatedGetVectorsByIdResponse.fromJson(Map<String, dynamic> json) { return VectorizeDeprecatedGetVectorsByIdResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => VectorizeIndexGetVectorsByIdResponse2.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Array of vectors with matching ids.
final List<VectorizeIndexGetVectorsByIdResponse2>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
VectorizeDeprecatedGetVectorsByIdResponse copyWith({List<VectorizeIndexGetVectorsByIdResponse2> Function()? result}) { return VectorizeDeprecatedGetVectorsByIdResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeDeprecatedGetVectorsByIdResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'VectorizeDeprecatedGetVectorsByIdResponse(result: $result)'; } 
 }
