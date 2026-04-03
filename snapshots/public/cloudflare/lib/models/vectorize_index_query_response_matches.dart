// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'vectorize_vector_identifier.dart';@immutable final class VectorizeIndexQueryResponseMatches {const VectorizeIndexQueryResponseMatches({this.id, this.metadata, this.score, this.values, });

factory VectorizeIndexQueryResponseMatches.fromJson(Map<String, dynamic> json) { return VectorizeIndexQueryResponseMatches(
  id: json['id'] != null ? VectorizeVectorIdentifier.fromJson(json['id'] as String) : null,
  metadata: json['metadata'] as Map<String, dynamic>?,
  score: json['score'] != null ? (json['score'] as num).toDouble() : null,
  values: (json['values'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList(),
); }

final VectorizeVectorIdentifier? id;

final Map<String,dynamic>? metadata;

/// The score of the vector according to the index's distance metric
final double? score;

final List<double>? values;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  'metadata': ?metadata,
  'score': ?score,
  'values': ?values,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'metadata', 'score', 'values'}.contains(key)); } 
VectorizeIndexQueryResponseMatches copyWith({VectorizeVectorIdentifier Function()? id, Map<String, dynamic>? Function()? metadata, double Function()? score, List<double>? Function()? values, }) { return VectorizeIndexQueryResponseMatches(
  id: id != null ? id() : this.id,
  metadata: metadata != null ? metadata() : this.metadata,
  score: score != null ? score() : this.score,
  values: values != null ? values() : this.values,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeIndexQueryResponseMatches &&
          id == other.id &&
          metadata == other.metadata &&
          score == other.score &&
          listEquals(values, other.values); } 
@override int get hashCode { return Object.hash(id, metadata, score, Object.hashAll(values ?? const [])); } 
@override String toString() { return 'VectorizeIndexQueryResponseMatches(id: $id, metadata: $metadata, score: $score, values: $values)'; } 
 }
