// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'vectorize_vector_identifier.dart';@immutable final class Response5Matches {const Response5Matches({this.id, this.metadata = const Omittable.absent(), this.namespace = const Omittable.absent(), this.score, this.values = const Omittable.absent(), });

factory Response5Matches.fromJson(Map<String, dynamic> json) { return Response5Matches(
  id: json['id'] != null ? VectorizeVectorIdentifier.fromJson(json['id'] as String) : null,
  metadata: json.containsKey('metadata') ? Omittable(json['metadata'] as Map<String, dynamic>?) : const Omittable.absent(),
  namespace: json.containsKey('namespace') ? Omittable(json['namespace'] as String?) : const Omittable.absent(),
  score: json['score'] != null ? (json['score'] as num).toDouble() : null,
  values: json.containsKey('values') ? Omittable((json['values'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList()) : const Omittable.absent(),
); }

final VectorizeVectorIdentifier? id;

final Omittable<Map<String,dynamic>?> metadata;

final Omittable<String?> namespace;

/// The score of the vector according to the index's distance metric
final double? score;

final Omittable<List<double>?> values;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (metadata.isPresent) 'metadata': metadata.value,
  if (namespace.isPresent) 'namespace': namespace.value,
  'score': ?score,
  if (values.isPresent) 'values': values.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'metadata', 'namespace', 'score', 'values'}.contains(key)); } 
Response5Matches copyWith({VectorizeVectorIdentifier? Function()? id, Omittable<Map<String,dynamic>?>? metadata, Omittable<String?>? namespace, double? Function()? score, Omittable<List<double>?>? values, }) { return Response5Matches(
  id: id != null ? id() : this.id,
  metadata: metadata ?? this.metadata,
  namespace: namespace ?? this.namespace,
  score: score != null ? score() : this.score,
  values: values ?? this.values,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Response5Matches &&
          id == other.id &&
          metadata == other.metadata &&
          namespace == other.namespace &&
          score == other.score &&
          values.isPresent == other.values.isPresent &&
          listEquals(values.value, other.values.value); } 
@override int get hashCode { return Object.hash(id, metadata, namespace, score, Object.hashAll(values.value ?? const [])); } 
@override String toString() { return 'Response5Matches(id: $id, metadata: $metadata, namespace: $namespace, score: $score, values: $values)'; } 
 }
