// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'vectorize_vector_identifier.dart';final class Response5Matches {const Response5Matches({this.id, this.metadata, this.namespace, this.score, this.values, });

factory Response5Matches.fromJson(Map<String, dynamic> json) { return Response5Matches(
  id: json['id'] != null ? VectorizeVectorIdentifier.fromJson(json['id'] as String) : null,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  namespace: json['namespace'] as String?,
  score: json['score'] != null ? (json['score'] as num).toDouble() : null,
  values: (json['values'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList(),
); }

final VectorizeVectorIdentifier? id;

final Map<String,dynamic>? metadata;

final String? namespace;

/// The score of the vector according to the index's distance metric
final double? score;

final List<double>? values;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  'metadata': ?metadata,
  'namespace': ?namespace,
  'score': ?score,
  'values': ?values,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'metadata', 'namespace', 'score', 'values'}.contains(key)); } 
Response5Matches copyWith({VectorizeVectorIdentifier Function()? id, Map<String, dynamic>? Function()? metadata, String? Function()? namespace, double Function()? score, List<double>? Function()? values, }) { return Response5Matches(
  id: id != null ? id() : this.id,
  metadata: metadata != null ? metadata() : this.metadata,
  namespace: namespace != null ? namespace() : this.namespace,
  score: score != null ? score() : this.score,
  values: values != null ? values() : this.values,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Response5Matches &&
          id == other.id &&
          metadata == other.metadata &&
          namespace == other.namespace &&
          score == other.score &&
          listEquals(values, other.values); } 
@override int get hashCode { return Object.hash(id, metadata, namespace, score, Object.hashAll(values ?? const [])); } 
@override String toString() { return 'Response5Matches(id: $id, metadata: $metadata, namespace: $namespace, score: $score, values: $values)'; } 
 }
