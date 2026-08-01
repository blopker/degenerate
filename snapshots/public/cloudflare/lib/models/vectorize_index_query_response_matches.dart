// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'vectorize_vector_identifier.dart';@immutable final class VectorizeIndexQueryResponseMatches {const VectorizeIndexQueryResponseMatches({this.id, this.metadata = const Omittable.absent(), this.score, this.values = const Omittable.absent(), });

factory VectorizeIndexQueryResponseMatches.fromJson(Map<String, dynamic> json) { return VectorizeIndexQueryResponseMatches(
  id: json['id'] != null ? VectorizeVectorIdentifier.fromJson(json['id'] as String) : null,
  metadata: json.containsKey('metadata') ? Omittable(json['metadata'] as Map<String, dynamic>?) : const Omittable.absent(),
  score: json['score'] != null ? (json['score'] as num).toDouble() : null,
  values: json.containsKey('values') ? Omittable((json['values'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList()) : const Omittable.absent(),
); }

final VectorizeVectorIdentifier? id;

final Omittable<Map<String,dynamic>?> metadata;

/// The score of the vector according to the index's distance metric
final double? score;

final Omittable<List<double>?> values;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (metadata.isPresent) 'metadata': metadata.value,
  'score': ?score,
  if (values.isPresent) 'values': values.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'metadata', 'score', 'values'}.contains(key)); } 
VectorizeIndexQueryResponseMatches copyWith({VectorizeVectorIdentifier? Function()? id, Omittable<Map<String,dynamic>?>? metadata, double? Function()? score, Omittable<List<double>?>? values, }) { return VectorizeIndexQueryResponseMatches(
  id: id != null ? id() : this.id,
  metadata: metadata ?? this.metadata,
  score: score != null ? score() : this.score,
  values: values ?? this.values,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeIndexQueryResponseMatches &&
          id == other.id &&
          metadata == other.metadata &&
          score == other.score &&
          values.isPresent == other.values.isPresent &&
          listEquals(values.value, other.values.value); } 
@override int get hashCode { return Object.hash(id, metadata, score, Object.hashAll(values.value ?? const [])); } 
@override String toString() { return 'VectorizeIndexQueryResponseMatches(id: $id, metadata: $metadata, score: $score, values: $values)'; } 
 }
