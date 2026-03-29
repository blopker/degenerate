// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_namespace_script_delete_bulk_response_deleted.dart';/// Detail about bulk deletion of scripts in a namespace.
final class WorkersNamespaceScriptDeleteBulkResponse {const WorkersNamespaceScriptDeleteBulkResponse({this.deleted, this.deletedCount, this.hasMore, });

factory WorkersNamespaceScriptDeleteBulkResponse.fromJson(Map<String, dynamic> json) { return WorkersNamespaceScriptDeleteBulkResponse(
  deleted: (json['deleted'] as List<dynamic>?)?.map((e) => WorkersNamespaceScriptDeleteBulkResponseDeleted.fromJson(e as Map<String, dynamic>)).toList(),
  deletedCount: json['deleted_count'] != null ? (json['deleted_count'] as num).toInt() : null,
  hasMore: json['has_more'] as bool?,
); }

final List<WorkersNamespaceScriptDeleteBulkResponseDeleted>? deleted;

final int? deletedCount;

final bool? hasMore;

Map<String, dynamic> toJson() { return {
  if (deleted != null) 'deleted': deleted?.map((e) => e.toJson()).toList(),
  'deleted_count': ?deletedCount,
  'has_more': ?hasMore,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'deleted', 'deleted_count', 'has_more'}.contains(key)); } 
WorkersNamespaceScriptDeleteBulkResponse copyWith({List<WorkersNamespaceScriptDeleteBulkResponseDeleted> Function()? deleted, int Function()? deletedCount, bool Function()? hasMore, }) { return WorkersNamespaceScriptDeleteBulkResponse(
  deleted: deleted != null ? deleted() : this.deleted,
  deletedCount: deletedCount != null ? deletedCount() : this.deletedCount,
  hasMore: hasMore != null ? hasMore() : this.hasMore,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersNamespaceScriptDeleteBulkResponse &&
          listEquals(deleted, other.deleted) &&
          deletedCount == other.deletedCount &&
          hasMore == other.hasMore; } 
@override int get hashCode { return Object.hash(Object.hashAll(deleted ?? const []), deletedCount, hasMore); } 
@override String toString() { return 'WorkersNamespaceScriptDeleteBulkResponse(deleted: $deleted, deletedCount: $deletedCount, hasMore: $hasMore)'; } 
 }
