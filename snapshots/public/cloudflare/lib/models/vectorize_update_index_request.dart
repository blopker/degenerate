// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'vectorize_index_description.dart';@immutable final class VectorizeUpdateIndexRequest {const VectorizeUpdateIndexRequest({required this.description});

factory VectorizeUpdateIndexRequest.fromJson(Map<String, dynamic> json) { return VectorizeUpdateIndexRequest(
  description: VectorizeIndexDescription.fromJson(json['description'] as String),
); }

/// Specifies the description of the index.
final VectorizeIndexDescription description;

Map<String, dynamic> toJson() { return {
  'description': description.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('description'); } 
VectorizeUpdateIndexRequest copyWith({VectorizeIndexDescription? description}) { return VectorizeUpdateIndexRequest(
  description: description ?? this.description,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeUpdateIndexRequest &&
          description == other.description; } 
@override int get hashCode { return description.hashCode; } 
@override String toString() { return 'VectorizeUpdateIndexRequest(description: $description)'; } 
 }
