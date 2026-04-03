// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'vectorize_index_list_vectors_response.dart';@immutable final class VectorizeListVectorsResponse {const VectorizeListVectorsResponse({this.result});

factory VectorizeListVectorsResponse.fromJson(Map<String, dynamic> json) { return VectorizeListVectorsResponse(
  result: json['result'] != null ? VectorizeIndexListVectorsResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final VectorizeIndexListVectorsResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
VectorizeListVectorsResponse copyWith({VectorizeIndexListVectorsResponse Function()? result}) { return VectorizeListVectorsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeListVectorsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'VectorizeListVectorsResponse(result: $result)'; } 
 }
