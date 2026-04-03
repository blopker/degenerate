// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'vectorize_delete_metadata_index_response.dart';@immutable final class VectorizeDeleteMetadataIndexResponse2 {const VectorizeDeleteMetadataIndexResponse2({this.result});

factory VectorizeDeleteMetadataIndexResponse2.fromJson(Map<String, dynamic> json) { return VectorizeDeleteMetadataIndexResponse2(
  result: json['result'] != null ? VectorizeDeleteMetadataIndexResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final VectorizeDeleteMetadataIndexResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
VectorizeDeleteMetadataIndexResponse2 copyWith({VectorizeDeleteMetadataIndexResponse Function()? result}) { return VectorizeDeleteMetadataIndexResponse2(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeDeleteMetadataIndexResponse2 &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'VectorizeDeleteMetadataIndexResponse2(result: $result)'; } 
 }
