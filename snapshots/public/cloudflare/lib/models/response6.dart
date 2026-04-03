// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'vectorize_mutation_uuid.dart';@immutable final class Response6 {const Response6({this.mutationId});

factory Response6.fromJson(Map<String, dynamic> json) { return Response6(
  mutationId: json['mutationId'] != null ? VectorizeMutationUuid.fromJson(json['mutationId'] as dynamic) : null,
); }

final VectorizeMutationUuid? mutationId;

Map<String, dynamic> toJson() { return {
  if (mutationId != null) 'mutationId': mutationId?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mutationId'}.contains(key)); } 
Response6 copyWith({VectorizeMutationUuid? Function()? mutationId}) { return Response6(
  mutationId: mutationId != null ? mutationId() : this.mutationId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Response6 &&
          mutationId == other.mutationId; } 
@override int get hashCode { return mutationId.hashCode; } 
@override String toString() { return 'Response6(mutationId: $mutationId)'; } 
 }
