// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of item to reference. Always `item_reference`.
@immutable final class ItemReferenceParamType {const ItemReferenceParamType._(this.value);

factory ItemReferenceParamType.fromJson(String json) { return switch (json) {
  'item_reference' => itemReference,
  _ => ItemReferenceParamType._(json),
}; }

static const ItemReferenceParamType itemReference = ItemReferenceParamType._('item_reference');

static const List<ItemReferenceParamType> values = [itemReference];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemReferenceParamType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ItemReferenceParamType($value)'; } 
 }
/// An internal identifier for an item to reference.
@immutable final class ItemReferenceParam {const ItemReferenceParam({required this.id, this.type, });

factory ItemReferenceParam.fromJson(Map<String, dynamic> json) { return ItemReferenceParam(
  type: json['type'] != null ? ItemReferenceParamType.fromJson(json['type'] as String) : null,
  id: json['id'] as String,
); }

/// The type of item to reference. Always `item_reference`.
final ItemReferenceParamType? type;

/// The ID of the item to reference.
final String id;

Map<String, dynamic> toJson() { return {
  if (type != null) 'type': type?.toJson(),
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String; } 
ItemReferenceParam copyWith({ItemReferenceParamType? Function()? type, String? id, }) { return ItemReferenceParam(
  type: type != null ? type() : this.type,
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ItemReferenceParam &&
          type == other.type &&
          id == other.id; } 
@override int get hashCode { return Object.hash(type, id); } 
@override String toString() { return 'ItemReferenceParam(type: $type, id: $id)'; } 
 }
