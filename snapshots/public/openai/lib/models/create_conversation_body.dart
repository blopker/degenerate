// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'input_item.dart';@immutable final class CreateConversationBody {const CreateConversationBody({this.metadata = const Omittable.absent(), this.items = const Omittable.absent(), });

factory CreateConversationBody.fromJson(Map<String, dynamic> json) { return CreateConversationBody(
  metadata: json.containsKey('metadata') ? Omittable((json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String))) : const Omittable.absent(),
  items: json.containsKey('items') ? Omittable((json['items'] as List<dynamic>?)?.map((e) => InputItem.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
); }

/// Set of 16 key-value pairs that can be attached to an object. This can be
/// useful for storing additional information about the object in a structured
/// format, and querying for objects via API or the dashboard.
/// 
/// Keys are strings with a maximum length of 64 characters. Values are strings
/// with a maximum length of 512 characters.
/// 
final Omittable<Map<String,String>?> metadata;

/// Initial items to include in the conversation context. You may add up to 20 items at a time.
final Omittable<List<InputItem>?> items;

Map<String, dynamic> toJson() { return {
  if (metadata.isPresent) 'metadata': metadata.value,
  if (items.isPresent) 'items': items.value?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'metadata', 'items'}.contains(key)); } 
CreateConversationBody copyWith({Omittable<Map<String,String>?>? metadata, Omittable<List<InputItem>?>? items, }) { return CreateConversationBody(
  metadata: metadata ?? this.metadata,
  items: items ?? this.items,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateConversationBody &&
          metadata == other.metadata &&
          items.isPresent == other.items.isPresent &&
          listEquals(items.value, other.items.value); } 
@override int get hashCode { return Object.hash(metadata, Object.hashAll(items.value ?? const [])); } 
@override String toString() { return 'CreateConversationBody(metadata: $metadata, items: $items)'; } 
 }
