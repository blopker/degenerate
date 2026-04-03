// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'input_item.dart';@immutable final class CreateConversationItemsRequest {const CreateConversationItemsRequest({required this.items});

factory CreateConversationItemsRequest.fromJson(Map<String, dynamic> json) { return CreateConversationItemsRequest(
  items: (json['items'] as List<dynamic>).map((e) => InputItem.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The items to add to the conversation. You may add up to 20 items at a time.
/// 
final List<InputItem> items;

Map<String, dynamic> toJson() { return {
  'items': items.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('items'); } 
CreateConversationItemsRequest copyWith({List<InputItem>? items}) { return CreateConversationItemsRequest(
  items: items ?? this.items,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateConversationItemsRequest &&
          listEquals(items, other.items); } 
@override int get hashCode { return Object.hashAll(items).hashCode; } 
@override String toString() { return 'CreateConversationItemsRequest(items: $items)'; } 
 }
