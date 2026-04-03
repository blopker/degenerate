// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'batch.dart';@immutable final class ListBatchesResponseObject {const ListBatchesResponseObject._(this.value);

factory ListBatchesResponseObject.fromJson(String json) { return switch (json) {
  'list' => list,
  _ => ListBatchesResponseObject._(json),
}; }

static const ListBatchesResponseObject list = ListBatchesResponseObject._('list');

static const List<ListBatchesResponseObject> values = [list];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ListBatchesResponseObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ListBatchesResponseObject($value)'; } 
 }
@immutable final class ListBatchesResponse {const ListBatchesResponse({required this.data, required this.hasMore, required this.object, this.firstId, this.lastId, });

factory ListBatchesResponse.fromJson(Map<String, dynamic> json) { return ListBatchesResponse(
  data: (json['data'] as List<dynamic>).map((e) => Batch.fromJson(e as Map<String, dynamic>)).toList(),
  firstId: json['first_id'] as String?,
  lastId: json['last_id'] as String?,
  hasMore: json['has_more'] as bool,
  object: ListBatchesResponseObject.fromJson(json['object'] as String),
); }

final List<Batch> data;

final String? firstId;

final String? lastId;

final bool hasMore;

final ListBatchesResponseObject object;

Map<String, dynamic> toJson() { return {
  'data': data.map((e) => e.toJson()).toList(),
  'first_id': ?firstId,
  'last_id': ?lastId,
  'has_more': hasMore,
  'object': object.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data') &&
      json.containsKey('has_more') && json['has_more'] is bool &&
      json.containsKey('object'); } 
ListBatchesResponse copyWith({List<Batch>? data, String Function()? firstId, String Function()? lastId, bool? hasMore, ListBatchesResponseObject? object, }) { return ListBatchesResponse(
  data: data ?? this.data,
  firstId: firstId != null ? firstId() : this.firstId,
  lastId: lastId != null ? lastId() : this.lastId,
  hasMore: hasMore ?? this.hasMore,
  object: object ?? this.object,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListBatchesResponse &&
          listEquals(data, other.data) &&
          firstId == other.firstId &&
          lastId == other.lastId &&
          hasMore == other.hasMore &&
          object == other.object; } 
@override int get hashCode { return Object.hash(Object.hashAll(data), firstId, lastId, hasMore, object); } 
@override String toString() { return 'ListBatchesResponse(data: $data, firstId: $firstId, lastId: $lastId, hasMore: $hasMore, object: $object)'; } 
 }
