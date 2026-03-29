// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class ModifyAssistantRequestToolResourcesFileSearch {const ModifyAssistantRequestToolResourcesFileSearch({this.vectorStoreIds});

factory ModifyAssistantRequestToolResourcesFileSearch.fromJson(Map<String, dynamic> json) { return ModifyAssistantRequestToolResourcesFileSearch(
  vectorStoreIds: (json['vector_store_ids'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// Overrides the [vector store](/docs/api-reference/vector-stores/object) attached to this assistant. There can be a maximum of 1 vector store attached to the assistant.
/// 
final List<String>? vectorStoreIds;

Map<String, dynamic> toJson() { return {
  'vector_store_ids': ?vectorStoreIds,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ModifyAssistantRequestToolResourcesFileSearch copyWith({List<String> Function()? vectorStoreIds}) { return ModifyAssistantRequestToolResourcesFileSearch(
  vectorStoreIds: vectorStoreIds != null ? vectorStoreIds() : this.vectorStoreIds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ModifyAssistantRequestToolResourcesFileSearch &&
          listEquals(vectorStoreIds, other.vectorStoreIds); } 
@override int get hashCode { return Object.hashAll(vectorStoreIds ?? const []).hashCode; } 
@override String toString() { return 'ModifyAssistantRequestToolResourcesFileSearch(vectorStoreIds: $vectorStoreIds)'; } 
 }
