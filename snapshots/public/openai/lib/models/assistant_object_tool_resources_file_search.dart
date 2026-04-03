// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AssistantObjectToolResourcesFileSearch {const AssistantObjectToolResourcesFileSearch({this.vectorStoreIds});

factory AssistantObjectToolResourcesFileSearch.fromJson(Map<String, dynamic> json) { return AssistantObjectToolResourcesFileSearch(
  vectorStoreIds: (json['vector_store_ids'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// The ID of the [vector store](/docs/api-reference/vector-stores/object) attached to this assistant. There can be a maximum of 1 vector store attached to the assistant.
/// 
final List<String>? vectorStoreIds;

Map<String, dynamic> toJson() { return {
  'vector_store_ids': ?vectorStoreIds,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'vector_store_ids'}.contains(key)); } 
AssistantObjectToolResourcesFileSearch copyWith({List<String> Function()? vectorStoreIds}) { return AssistantObjectToolResourcesFileSearch(
  vectorStoreIds: vectorStoreIds != null ? vectorStoreIds() : this.vectorStoreIds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AssistantObjectToolResourcesFileSearch &&
          listEquals(vectorStoreIds, other.vectorStoreIds); } 
@override int get hashCode { return Object.hashAll(vectorStoreIds ?? const []).hashCode; } 
@override String toString() { return 'AssistantObjectToolResourcesFileSearch(vectorStoreIds: $vectorStoreIds)'; } 
 }
