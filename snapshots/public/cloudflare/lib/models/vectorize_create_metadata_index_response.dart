// GENERATED CODE - DO NOT MODIFY BY HAND

import 'vectorize_mutation_uuid.dart';final class VectorizeCreateMetadataIndexResponse {const VectorizeCreateMetadataIndexResponse({this.mutationId});

factory VectorizeCreateMetadataIndexResponse.fromJson(Map<String, dynamic> json) { return VectorizeCreateMetadataIndexResponse(
  mutationId: json['mutationId'] != null ? VectorizeMutationUuid.fromJson(json['mutationId'] as dynamic) : null,
); }

final VectorizeMutationUuid? mutationId;

Map<String, dynamic> toJson() { return {
  if (mutationId != null) 'mutationId': mutationId?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mutationId'}.contains(key)); } 
VectorizeCreateMetadataIndexResponse copyWith({VectorizeMutationUuid? Function()? mutationId}) { return VectorizeCreateMetadataIndexResponse(
  mutationId: mutationId != null ? mutationId() : this.mutationId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeCreateMetadataIndexResponse &&
          mutationId == other.mutationId; } 
@override int get hashCode { return mutationId.hashCode; } 
@override String toString() { return 'VectorizeCreateMetadataIndexResponse(mutationId: $mutationId)'; } 
 }
