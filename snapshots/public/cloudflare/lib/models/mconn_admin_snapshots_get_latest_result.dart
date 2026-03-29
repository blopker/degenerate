// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_snapshot.dart';final class MconnAdminSnapshotsGetLatestResult {const MconnAdminSnapshotsGetLatestResult({required this.count, required this.items, });

factory MconnAdminSnapshotsGetLatestResult.fromJson(Map<String, dynamic> json) { return MconnAdminSnapshotsGetLatestResult(
  count: (json['count'] as num).toDouble(),
  items: (json['items'] as List<dynamic>).map((e) => MconnSnapshot.fromJson(e as Map<String, dynamic>)).toList(),
); }

final double count;

final List<MconnSnapshot> items;

Map<String, dynamic> toJson() { return {
  'count': count,
  'items': items.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('count') && json['count'] is num &&
      json.containsKey('items'); } 
MconnAdminSnapshotsGetLatestResult copyWith({double? count, List<MconnSnapshot>? items, }) { return MconnAdminSnapshotsGetLatestResult(
  count: count ?? this.count,
  items: items ?? this.items,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminSnapshotsGetLatestResult &&
          count == other.count &&
          listEquals(items, other.items); } 
@override int get hashCode { return Object.hash(count, Object.hashAll(items)); } 
@override String toString() { return 'MconnAdminSnapshotsGetLatestResult(count: $count, items: $items)'; } 
 }
