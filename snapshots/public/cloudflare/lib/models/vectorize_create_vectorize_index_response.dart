// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'vectorize_create_index_response.dart';@immutable final class VectorizeCreateVectorizeIndexResponse {const VectorizeCreateVectorizeIndexResponse({this.result});

factory VectorizeCreateVectorizeIndexResponse.fromJson(Map<String, dynamic> json) { return VectorizeCreateVectorizeIndexResponse(
  result: json['result'] != null ? VectorizeCreateIndexResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final VectorizeCreateIndexResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
VectorizeCreateVectorizeIndexResponse copyWith({VectorizeCreateIndexResponse Function()? result}) { return VectorizeCreateVectorizeIndexResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeCreateVectorizeIndexResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'VectorizeCreateVectorizeIndexResponse(result: $result)'; } 
 }
