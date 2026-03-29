// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class ThreadObjectToolResourcesFileSearch {const ThreadObjectToolResourcesFileSearch({this.vectorStoreIds});

factory ThreadObjectToolResourcesFileSearch.fromJson(Map<String, dynamic> json) { return ThreadObjectToolResourcesFileSearch(
  vectorStoreIds: (json['vector_store_ids'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// The [vector store](/docs/api-reference/vector-stores/object) attached to this thread. There can be a maximum of 1 vector store attached to the thread.
/// 
final List<String>? vectorStoreIds;

Map<String, dynamic> toJson() { return {
  'vector_store_ids': ?vectorStoreIds,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ThreadObjectToolResourcesFileSearch copyWith({List<String> Function()? vectorStoreIds}) { return ThreadObjectToolResourcesFileSearch(
  vectorStoreIds: vectorStoreIds != null ? vectorStoreIds() : this.vectorStoreIds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ThreadObjectToolResourcesFileSearch &&
          listEquals(vectorStoreIds, other.vectorStoreIds); } 
@override int get hashCode { return Object.hashAll(vectorStoreIds ?? const []).hashCode; } 
@override String toString() { return 'ThreadObjectToolResourcesFileSearch(vectorStoreIds: $vectorStoreIds)'; } 
 }
