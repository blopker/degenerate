// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'item_edited_changes_variant2_body.dart';@immutable final class ItemEditedChangesVariant2 {const ItemEditedChangesVariant2({required this.body});

factory ItemEditedChangesVariant2.fromJson(Map<String, dynamic> json) { return ItemEditedChangesVariant2(
  body: ItemEditedChangesVariant2Body.fromJson(json['body'] as Map<String, dynamic>),
); }

final ItemEditedChangesVariant2Body body;

Map<String, dynamic> toJson() { return {
  'body': body.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('body'); } 
ItemEditedChangesVariant2 copyWith({ItemEditedChangesVariant2Body? body}) { return ItemEditedChangesVariant2(
  body: body ?? this.body,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ItemEditedChangesVariant2 &&
          body == other.body; } 
@override int get hashCode { return body.hashCode; } 
@override String toString() { return 'ItemEditedChangesVariant2(body: $body)'; } 
 }
