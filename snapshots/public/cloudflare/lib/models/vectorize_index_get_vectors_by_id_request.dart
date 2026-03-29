// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'vectorize_vector_identifier.dart';final class VectorizeIndexGetVectorsByIdRequest {const VectorizeIndexGetVectorsByIdRequest({this.ids});

factory VectorizeIndexGetVectorsByIdRequest.fromJson(Map<String, dynamic> json) { return VectorizeIndexGetVectorsByIdRequest(
  ids: (json['ids'] as List<dynamic>?)?.map((e) => VectorizeVectorIdentifier.fromJson(e as String)).toList(),
); }

/// A list of vector identifiers to retrieve from the index indicated by the path.
final List<VectorizeVectorIdentifier>? ids;

Map<String, dynamic> toJson() { return {
  if (ids != null) 'ids': ids?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
VectorizeIndexGetVectorsByIdRequest copyWith({List<VectorizeVectorIdentifier> Function()? ids}) { return VectorizeIndexGetVectorsByIdRequest(
  ids: ids != null ? ids() : this.ids,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeIndexGetVectorsByIdRequest &&
          listEquals(ids, other.ids); } 
@override int get hashCode { return Object.hashAll(ids ?? const []).hashCode; } 
@override String toString() { return 'VectorizeIndexGetVectorsByIdRequest(ids: $ids)'; } 
 }
