// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ResourceTaggingCursorResultInfo {const ResourceTaggingCursorResultInfo({this.count, this.cursor, });

factory ResourceTaggingCursorResultInfo.fromJson(Map<String, dynamic> json) { return ResourceTaggingCursorResultInfo(
  count: json['count'] != null ? (json['count'] as num).toInt() : null,
  cursor: json['cursor'] as String?,
); }

/// Indicates the number of results returned in the current page.
final int? count;

/// Provides a cursor for the next page of results. Include this value in the next request to continue pagination.
final String? cursor;

Map<String, dynamic> toJson() { return {
  'count': ?count,
  'cursor': ?cursor,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'count', 'cursor'}.contains(key)); } 
ResourceTaggingCursorResultInfo copyWith({int Function()? count, String? Function()? cursor, }) { return ResourceTaggingCursorResultInfo(
  count: count != null ? count() : this.count,
  cursor: cursor != null ? cursor() : this.cursor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResourceTaggingCursorResultInfo &&
          count == other.count &&
          cursor == other.cursor; } 
@override int get hashCode { return Object.hash(count, cursor); } 
@override String toString() { return 'ResourceTaggingCursorResultInfo(count: $count, cursor: $cursor)'; } 
 }
