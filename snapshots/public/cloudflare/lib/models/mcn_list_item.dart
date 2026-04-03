// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mcn_list_item_list.dart';@immutable final class McnListItem {const McnListItem({required this.itemType, required this.list, });

factory McnListItem.fromJson(Map<String, dynamic> json) { return McnListItem(
  itemType: json['item_type'] as String,
  list: (json['list'] as List<dynamic>).map((e) => McnListItemList.fromJson(e as Map<String, dynamic>)).toList(),
); }

final String itemType;

final List<McnListItemList> list;

Map<String, dynamic> toJson() { return {
  'item_type': itemType,
  'list': list.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('item_type') && json['item_type'] is String &&
      json.containsKey('list'); } 
McnListItem copyWith({String? itemType, List<McnListItemList>? list, }) { return McnListItem(
  itemType: itemType ?? this.itemType,
  list: list ?? this.list,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnListItem &&
          itemType == other.itemType &&
          listEquals(list, other.list); } 
@override int get hashCode { return Object.hash(itemType, Object.hashAll(list)); } 
@override String toString() { return 'McnListItem(itemType: $itemType, list: $list)'; } 
 }
