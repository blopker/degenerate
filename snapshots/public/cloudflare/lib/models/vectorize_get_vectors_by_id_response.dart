// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'vectorize_index_get_vectors_by_id_response2.dart';@immutable final class VectorizeGetVectorsByIdResponse {const VectorizeGetVectorsByIdResponse({this.result});

factory VectorizeGetVectorsByIdResponse.fromJson(Map<String, dynamic> json) { return VectorizeGetVectorsByIdResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => VectorizeIndexGetVectorsByIdResponse2.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Array of vectors with matching ids.
final List<VectorizeIndexGetVectorsByIdResponse2>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
VectorizeGetVectorsByIdResponse copyWith({List<VectorizeIndexGetVectorsByIdResponse2> Function()? result}) { return VectorizeGetVectorsByIdResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeGetVectorsByIdResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'VectorizeGetVectorsByIdResponse(result: $result)'; } 
 }
