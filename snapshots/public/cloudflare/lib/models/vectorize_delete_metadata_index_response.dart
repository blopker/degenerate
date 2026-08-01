// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'vectorize_mutation_uuid.dart';@immutable final class VectorizeDeleteMetadataIndexResponse {const VectorizeDeleteMetadataIndexResponse({this.mutationId = const Omittable.absent()});

factory VectorizeDeleteMetadataIndexResponse.fromJson(Map<String, dynamic> json) { return VectorizeDeleteMetadataIndexResponse(
  mutationId: json.containsKey('mutationId') ? Omittable(json['mutationId'] != null ? VectorizeMutationUuid.fromJson(json['mutationId'] as dynamic) : null) : const Omittable.absent(),
); }

final Omittable<VectorizeMutationUuid?> mutationId;

Map<String, dynamic> toJson() { return {
  if (mutationId.isPresent) 'mutationId': mutationId.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mutationId'}.contains(key)); } 
VectorizeDeleteMetadataIndexResponse copyWith({Omittable<VectorizeMutationUuid?>? mutationId}) { return VectorizeDeleteMetadataIndexResponse(
  mutationId: mutationId ?? this.mutationId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeDeleteMetadataIndexResponse &&
          mutationId == other.mutationId; } 
@override int get hashCode { return mutationId.hashCode; } 
@override String toString() { return 'VectorizeDeleteMetadataIndexResponse(mutationId: $mutationId)'; } 
 }
