// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'vectorize_vector_identifier.dart';final class VectorizeIndexUpsertResponse {const VectorizeIndexUpsertResponse({this.count, this.ids, });

factory VectorizeIndexUpsertResponse.fromJson(Map<String, dynamic> json) { return VectorizeIndexUpsertResponse(
  count: json['count'] != null ? (json['count'] as num).toInt() : null,
  ids: (json['ids'] as List<dynamic>?)?.map((e) => VectorizeVectorIdentifier.fromJson(e as String)).toList(),
); }

/// Specifies the count of the vectors successfully inserted.
final int? count;

/// Array of vector identifiers of the vectors successfully inserted.
final List<VectorizeVectorIdentifier>? ids;

Map<String, dynamic> toJson() { return {
  'count': ?count,
  if (ids != null) 'ids': ids?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'count', 'ids'}.contains(key)); } 
VectorizeIndexUpsertResponse copyWith({int Function()? count, List<VectorizeVectorIdentifier> Function()? ids, }) { return VectorizeIndexUpsertResponse(
  count: count != null ? count() : this.count,
  ids: ids != null ? ids() : this.ids,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeIndexUpsertResponse &&
          count == other.count &&
          listEquals(ids, other.ids); } 
@override int get hashCode { return Object.hash(count, Object.hashAll(ids ?? const [])); } 
@override String toString() { return 'VectorizeIndexUpsertResponse(count: $count, ids: $ids)'; } 
 }
