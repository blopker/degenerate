// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'lists_delete_list_items_request_items.dart';@immutable final class ListsDeleteListItemsRequest {const ListsDeleteListItemsRequest({this.items});

factory ListsDeleteListItemsRequest.fromJson(Map<String, dynamic> json) { return ListsDeleteListItemsRequest(
  items: (json['items'] as List<dynamic>?)?.map((e) => ListsDeleteListItemsRequestItems.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ListsDeleteListItemsRequestItems>? items;

Map<String, dynamic> toJson() { return {
  if (items != null) 'items': items?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'items'}.contains(key)); } 
ListsDeleteListItemsRequest copyWith({List<ListsDeleteListItemsRequestItems> Function()? items}) { return ListsDeleteListItemsRequest(
  items: items != null ? items() : this.items,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListsDeleteListItemsRequest &&
          listEquals(items, other.items); } 
@override int get hashCode { return Object.hashAll(items ?? const []).hashCode; } 
@override String toString() { return 'ListsDeleteListItemsRequest(items: $items)'; } 
 }
