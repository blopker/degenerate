// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'session_list_schema.dart';final class PagedSessionListSchema {const PagedSessionListSchema({required this.items, required this.count, });

factory PagedSessionListSchema.fromJson(Map<String, dynamic> json) { return PagedSessionListSchema(
  items: (json['items'] as List<dynamic>).map((e) => SessionListSchema.fromJson(e as Map<String, dynamic>)).toList(),
  count: (json['count'] as num).toInt(),
); }

final List<SessionListSchema> items;

final int count;

Map<String, dynamic> toJson() { return {
  'items': items.map((e) => e.toJson()).toList(),
  'count': count,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('items') &&
      json.containsKey('count') && json['count'] is num; } 
PagedSessionListSchema copyWith({List<SessionListSchema>? items, int? count, }) { return PagedSessionListSchema(
  items: items ?? this.items,
  count: count ?? this.count,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagedSessionListSchema &&
          listEquals(items, other.items) &&
          count == other.count; } 
@override int get hashCode { return Object.hash(Object.hashAll(items), count); } 
@override String toString() { return 'PagedSessionListSchema(items: $items, count: $count)'; } 
 }
