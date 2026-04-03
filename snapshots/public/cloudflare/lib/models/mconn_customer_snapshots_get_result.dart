// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_snapshot_metadata.dart';@immutable final class MconnCustomerSnapshotsGetResult {const MconnCustomerSnapshotsGetResult({required this.count, required this.items, this.cursor, });

factory MconnCustomerSnapshotsGetResult.fromJson(Map<String, dynamic> json) { return MconnCustomerSnapshotsGetResult(
  count: (json['count'] as num).toDouble(),
  cursor: json['cursor'] as String?,
  items: (json['items'] as List<dynamic>).map((e) => MconnSnapshotMetadata.fromJson(e as Map<String, dynamic>)).toList(),
); }

final double count;

final String? cursor;

final List<MconnSnapshotMetadata> items;

Map<String, dynamic> toJson() { return {
  'count': count,
  'cursor': ?cursor,
  'items': items.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('count') && json['count'] is num &&
      json.containsKey('items'); } 
MconnCustomerSnapshotsGetResult copyWith({double? count, String Function()? cursor, List<MconnSnapshotMetadata>? items, }) { return MconnCustomerSnapshotsGetResult(
  count: count ?? this.count,
  cursor: cursor != null ? cursor() : this.cursor,
  items: items ?? this.items,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnCustomerSnapshotsGetResult &&
          count == other.count &&
          cursor == other.cursor &&
          listEquals(items, other.items); } 
@override int get hashCode { return Object.hash(count, cursor, Object.hashAll(items)); } 
@override String toString() { return 'MconnCustomerSnapshotsGetResult(count: $count, cursor: $cursor, items: $items)'; } 
 }
