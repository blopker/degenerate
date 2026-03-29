// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_event_metadata.dart';final class MconnAdminEventsGetResult {const MconnAdminEventsGetResult({required this.count, this.cursor, required this.items, });

factory MconnAdminEventsGetResult.fromJson(Map<String, dynamic> json) { return MconnAdminEventsGetResult(
  count: (json['count'] as num).toDouble(),
  cursor: json['cursor'] as String?,
  items: (json['items'] as List<dynamic>).map((e) => MconnEventMetadata.fromJson(e as Map<String, dynamic>)).toList(),
); }

final double count;

final String? cursor;

final List<MconnEventMetadata> items;

Map<String, dynamic> toJson() { return {
  'count': count,
  'cursor': ?cursor,
  'items': items.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('count') && json['count'] is num &&
      json.containsKey('items'); } 
MconnAdminEventsGetResult copyWith({double? count, String Function()? cursor, List<MconnEventMetadata>? items, }) { return MconnAdminEventsGetResult(
  count: count ?? this.count,
  cursor: cursor != null ? cursor() : this.cursor,
  items: items ?? this.items,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminEventsGetResult &&
          count == other.count &&
          cursor == other.cursor &&
          listEquals(items, other.items); } 
@override int get hashCode { return Object.hash(count, cursor, Object.hashAll(items)); } 
@override String toString() { return 'MconnAdminEventsGetResult(count: $count, cursor: $cursor, items: $items)'; } 
 }
