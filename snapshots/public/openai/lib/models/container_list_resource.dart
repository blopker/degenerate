// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'container_resource.dart';/// The type of object returned, must be 'list'.
@immutable final class ContainerListResourceObject {const ContainerListResourceObject._(this.value);

factory ContainerListResourceObject.fromJson(String json) { return switch (json) {
  'list' => list,
  _ => ContainerListResourceObject._(json),
}; }

static const ContainerListResourceObject list = ContainerListResourceObject._('list');

static const List<ContainerListResourceObject> values = [list];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ContainerListResourceObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ContainerListResourceObject($value)'; } 
 }
@immutable final class ContainerListResource {const ContainerListResource({required this.object, required this.data, required this.firstId, required this.lastId, required this.hasMore, });

factory ContainerListResource.fromJson(Map<String, dynamic> json) { return ContainerListResource(
  object: ContainerListResourceObject.fromJson(json['object'] as String),
  data: (json['data'] as List<dynamic>).map((e) => ContainerResource.fromJson(e as Map<String, dynamic>)).toList(),
  firstId: json['first_id'] as String,
  lastId: json['last_id'] as String,
  hasMore: json['has_more'] as bool,
); }

/// The type of object returned, must be 'list'.
final ContainerListResourceObject object;

/// A list of containers.
final List<ContainerResource> data;

/// The ID of the first container in the list.
final String firstId;

/// The ID of the last container in the list.
final String lastId;

/// Whether there are more containers available.
final bool hasMore;

Map<String, dynamic> toJson() { return {
  'object': object.toJson(),
  'data': data.map((e) => e.toJson()).toList(),
  'first_id': firstId,
  'last_id': lastId,
  'has_more': hasMore,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('object') &&
      json.containsKey('data') &&
      json.containsKey('first_id') && json['first_id'] is String &&
      json.containsKey('last_id') && json['last_id'] is String &&
      json.containsKey('has_more') && json['has_more'] is bool; } 
ContainerListResource copyWith({ContainerListResourceObject? object, List<ContainerResource>? data, String? firstId, String? lastId, bool? hasMore, }) { return ContainerListResource(
  object: object ?? this.object,
  data: data ?? this.data,
  firstId: firstId ?? this.firstId,
  lastId: lastId ?? this.lastId,
  hasMore: hasMore ?? this.hasMore,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ContainerListResource &&
          object == other.object &&
          listEquals(data, other.data) &&
          firstId == other.firstId &&
          lastId == other.lastId &&
          hasMore == other.hasMore; } 
@override int get hashCode { return Object.hash(object, Object.hashAll(data), firstId, lastId, hasMore); } 
@override String toString() { return 'ContainerListResource(object: $object, data: $data, firstId: $firstId, lastId: $lastId, hasMore: $hasMore)'; } 
 }
