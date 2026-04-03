// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_version_item_short.dart';@immutable final class WorkersVersionsListResponseResult {const WorkersVersionsListResponseResult({this.items});

factory WorkersVersionsListResponseResult.fromJson(Map<String, dynamic> json) { return WorkersVersionsListResponseResult(
  items: (json['items'] as List<dynamic>?)?.map((e) => WorkersVersionItemShort.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<WorkersVersionItemShort>? items;

Map<String, dynamic> toJson() { return {
  if (items != null) 'items': items?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'items'}.contains(key)); } 
WorkersVersionsListResponseResult copyWith({List<WorkersVersionItemShort> Function()? items}) { return WorkersVersionsListResponseResult(
  items: items != null ? items() : this.items,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersVersionsListResponseResult &&
          listEquals(items, other.items); } 
@override int get hashCode { return Object.hashAll(items ?? const []).hashCode; } 
@override String toString() { return 'WorkersVersionsListResponseResult(items: $items)'; } 
 }
