// GENERATED CODE - DO NOT MODIFY BY HAND

import 'vectorize_mutation_uuid.dart';final class VectorizeDeleteMetadataIndexResponse {const VectorizeDeleteMetadataIndexResponse({this.mutationId});

factory VectorizeDeleteMetadataIndexResponse.fromJson(Map<String, dynamic> json) { return VectorizeDeleteMetadataIndexResponse(
  mutationId: json['mutationId'] != null ? VectorizeMutationUuid.fromJson(json['mutationId'] as dynamic) : null,
); }

final VectorizeMutationUuid? mutationId;

Map<String, dynamic> toJson() { return {
  if (mutationId != null) 'mutationId': mutationId?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mutationId'}.contains(key)); } 
VectorizeDeleteMetadataIndexResponse copyWith({VectorizeMutationUuid? Function()? mutationId}) { return VectorizeDeleteMetadataIndexResponse(
  mutationId: mutationId != null ? mutationId() : this.mutationId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeDeleteMetadataIndexResponse &&
          mutationId == other.mutationId; } 
@override int get hashCode { return mutationId.hashCode; } 
@override String toString() { return 'VectorizeDeleteMetadataIndexResponse(mutationId: $mutationId)'; } 
 }
