// GENERATED CODE - DO NOT MODIFY BY HAND

import 'vectorize_list_metadata_index_response.dart';final class VectorizeListMetadataIndexesResponse {const VectorizeListMetadataIndexesResponse({this.result});

factory VectorizeListMetadataIndexesResponse.fromJson(Map<String, dynamic> json) { return VectorizeListMetadataIndexesResponse(
  result: json['result'] != null ? VectorizeListMetadataIndexResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final VectorizeListMetadataIndexResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
VectorizeListMetadataIndexesResponse copyWith({VectorizeListMetadataIndexResponse Function()? result}) { return VectorizeListMetadataIndexesResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeListMetadataIndexesResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'VectorizeListMetadataIndexesResponse(result: $result)'; } 
 }
