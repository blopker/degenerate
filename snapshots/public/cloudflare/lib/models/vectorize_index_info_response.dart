// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'vectorize_index_dimensions.dart';import 'vectorize_mutation_uuid.dart';@immutable final class VectorizeIndexInfoResponse {const VectorizeIndexInfoResponse({this.dimensions, this.processedUpToDatetime = const Omittable.absent(), this.processedUpToMutation = const Omittable.absent(), this.vectorCount, });

factory VectorizeIndexInfoResponse.fromJson(Map<String, dynamic> json) { return VectorizeIndexInfoResponse(
  dimensions: json['dimensions'] != null ? VectorizeIndexDimensions.fromJson(json['dimensions'] as num) : null,
  processedUpToDatetime: json.containsKey('processedUpToDatetime') ? Omittable(json['processedUpToDatetime'] != null ? DateTime.parse(json['processedUpToDatetime'] as String) : null) : const Omittable.absent(),
  processedUpToMutation: json.containsKey('processedUpToMutation') ? Omittable(json['processedUpToMutation'] != null ? VectorizeMutationUuid.fromJson(json['processedUpToMutation'] as dynamic) : null) : const Omittable.absent(),
  vectorCount: json['vectorCount'] != null ? (json['vectorCount'] as num).toInt() : null,
); }

/// Specifies the number of dimensions for the index
final VectorizeIndexDimensions? dimensions;

/// Specifies the timestamp the last mutation batch was processed as an ISO8601 string.
final Omittable<DateTime?> processedUpToDatetime;

final Omittable<VectorizeMutationUuid?> processedUpToMutation;

/// Specifies the number of vectors present in the index
final int? vectorCount;

Map<String, dynamic> toJson() { return {
  if (dimensions != null) 'dimensions': dimensions?.toJson(),
  if (processedUpToDatetime.isPresent) 'processedUpToDatetime': processedUpToDatetime.value?.toIso8601String(),
  if (processedUpToMutation.isPresent) 'processedUpToMutation': processedUpToMutation.value?.toJson(),
  'vectorCount': ?vectorCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'dimensions', 'processedUpToDatetime', 'processedUpToMutation', 'vectorCount'}.contains(key)); } 
VectorizeIndexInfoResponse copyWith({VectorizeIndexDimensions? Function()? dimensions, Omittable<DateTime?>? processedUpToDatetime, Omittable<VectorizeMutationUuid?>? processedUpToMutation, int? Function()? vectorCount, }) { return VectorizeIndexInfoResponse(
  dimensions: dimensions != null ? dimensions() : this.dimensions,
  processedUpToDatetime: processedUpToDatetime ?? this.processedUpToDatetime,
  processedUpToMutation: processedUpToMutation ?? this.processedUpToMutation,
  vectorCount: vectorCount != null ? vectorCount() : this.vectorCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeIndexInfoResponse &&
          dimensions == other.dimensions &&
          processedUpToDatetime == other.processedUpToDatetime &&
          processedUpToMutation == other.processedUpToMutation &&
          vectorCount == other.vectorCount; } 
@override int get hashCode { return Object.hash(dimensions, processedUpToDatetime, processedUpToMutation, vectorCount); } 
@override String toString() { return 'VectorizeIndexInfoResponse(dimensions: $dimensions, processedUpToDatetime: $processedUpToDatetime, processedUpToMutation: $processedUpToMutation, vectorCount: $vectorCount)'; } 
 }
