// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'vectorize_vector_identifier.dart';@immutable final class VectorizeIndexDeleteVectorsByIdRequest {const VectorizeIndexDeleteVectorsByIdRequest({this.ids});

factory VectorizeIndexDeleteVectorsByIdRequest.fromJson(Map<String, dynamic> json) { return VectorizeIndexDeleteVectorsByIdRequest(
  ids: (json['ids'] as List<dynamic>?)?.map((e) => VectorizeVectorIdentifier.fromJson(e as String)).toList(),
); }

/// A list of vector identifiers to delete from the index indicated by the path.
final List<VectorizeVectorIdentifier>? ids;

Map<String, dynamic> toJson() { return {
  if (ids != null) 'ids': ids?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ids'}.contains(key)); } 
VectorizeIndexDeleteVectorsByIdRequest copyWith({List<VectorizeVectorIdentifier> Function()? ids}) { return VectorizeIndexDeleteVectorsByIdRequest(
  ids: ids != null ? ids() : this.ids,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeIndexDeleteVectorsByIdRequest &&
          listEquals(ids, other.ids); } 
@override int get hashCode { return Object.hashAll(ids ?? const []).hashCode; } 
@override String toString() { return 'VectorizeIndexDeleteVectorsByIdRequest(ids: $ids)'; } 
 }
