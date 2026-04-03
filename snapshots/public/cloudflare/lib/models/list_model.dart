// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cloudflare_pipelines_source_field.dart';@immutable final class ListModelType {const ListModelType._(this.value);

factory ListModelType.fromJson(String json) { return switch (json) {
  'list' => list,
  _ => ListModelType._(json),
}; }

static const ListModelType list = ListModelType._('list');

static const List<ListModelType> values = [list];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ListModelType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ListModelType($value)'; } 
 }
@immutable final class ListModel {const ListModel({required this.items, required this.type, });

factory ListModel.fromJson(Map<String, dynamic> json) { return ListModel(
  items: CloudflarePipelinesSourceField.fromJson(json['items'] as Map<String, dynamic>),
  type: ListModelType.fromJson(json['type'] as String),
); }

final CloudflarePipelinesSourceField items;

final ListModelType type;

Map<String, dynamic> toJson() { return {
  'items': items.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('items') &&
      json.containsKey('type'); } 
ListModel copyWith({CloudflarePipelinesSourceField? items, ListModelType? type, }) { return ListModel(
  items: items ?? this.items,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListModel &&
          items == other.items &&
          type == other.type; } 
@override int get hashCode { return Object.hash(items, type); } 
@override String toString() { return 'ListModel(items: $items, type: $type)'; } 
 }
