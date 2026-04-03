// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'vectorize_create_metadata_index_response.dart';@immutable final class VectorizeCreateMetadataIndexResponse2 {const VectorizeCreateMetadataIndexResponse2({this.result});

factory VectorizeCreateMetadataIndexResponse2.fromJson(Map<String, dynamic> json) { return VectorizeCreateMetadataIndexResponse2(
  result: json['result'] != null ? VectorizeCreateMetadataIndexResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final VectorizeCreateMetadataIndexResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
VectorizeCreateMetadataIndexResponse2 copyWith({VectorizeCreateMetadataIndexResponse Function()? result}) { return VectorizeCreateMetadataIndexResponse2(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeCreateMetadataIndexResponse2 &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'VectorizeCreateMetadataIndexResponse2(result: $result)'; } 
 }
