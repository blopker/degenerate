// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of input messages. Always `item_reference`.
@immutable final class InputMessagesItemReferenceType {const InputMessagesItemReferenceType._(this.value);

factory InputMessagesItemReferenceType.fromJson(String json) { return switch (json) {
  'item_reference' => itemReference,
  _ => InputMessagesItemReferenceType._(json),
}; }

static const InputMessagesItemReferenceType itemReference = InputMessagesItemReferenceType._('item_reference');

static const List<InputMessagesItemReferenceType> values = [itemReference];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InputMessagesItemReferenceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InputMessagesItemReferenceType($value)'; } 
 }
@immutable final class InputMessagesItemReference {const InputMessagesItemReference({required this.type, required this.itemReference, });

factory InputMessagesItemReference.fromJson(Map<String, dynamic> json) { return InputMessagesItemReference(
  type: InputMessagesItemReferenceType.fromJson(json['type'] as String),
  itemReference: json['item_reference'] as String,
); }

/// The type of input messages. Always `item_reference`.
final InputMessagesItemReferenceType type;

/// A reference to a variable in the `item` namespace. Ie, "item.name"
final String itemReference;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'item_reference': itemReference,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('item_reference') && json['item_reference'] is String; } 
InputMessagesItemReference copyWith({InputMessagesItemReferenceType? type, String? itemReference, }) { return InputMessagesItemReference(
  type: type ?? this.type,
  itemReference: itemReference ?? this.itemReference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InputMessagesItemReference &&
          type == other.type &&
          itemReference == other.itemReference; } 
@override int get hashCode { return Object.hash(type, itemReference); } 
@override String toString() { return 'InputMessagesItemReference(type: $type, itemReference: $itemReference)'; } 
 }
