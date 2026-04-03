// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_recorded_event.dart';@immutable final class MconnAdminEventsGetLatestResult {const MconnAdminEventsGetLatestResult({required this.count, required this.items, });

factory MconnAdminEventsGetLatestResult.fromJson(Map<String, dynamic> json) { return MconnAdminEventsGetLatestResult(
  count: (json['count'] as num).toDouble(),
  items: (json['items'] as List<dynamic>).map((e) => MconnRecordedEvent.fromJson(e as Map<String, dynamic>)).toList(),
); }

final double count;

final List<MconnRecordedEvent> items;

Map<String, dynamic> toJson() { return {
  'count': count,
  'items': items.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('count') && json['count'] is num &&
      json.containsKey('items'); } 
MconnAdminEventsGetLatestResult copyWith({double? count, List<MconnRecordedEvent>? items, }) { return MconnAdminEventsGetLatestResult(
  count: count ?? this.count,
  items: items ?? this.items,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminEventsGetLatestResult &&
          count == other.count &&
          listEquals(items, other.items); } 
@override int get hashCode { return Object.hash(count, Object.hashAll(items)); } 
@override String toString() { return 'MconnAdminEventsGetLatestResult(count: $count, items: $items)'; } 
 }
