// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'key3.dart';@immutable final class KeyListResponseObject {const KeyListResponseObject._(this.value);

factory KeyListResponseObject.fromJson(String json) { return switch (json) {
  'list' => list,
  _ => KeyListResponseObject._(json),
}; }

static const KeyListResponseObject list = KeyListResponseObject._('list');

static const List<KeyListResponseObject> values = [list];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is KeyListResponseObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'KeyListResponseObject($value)'; } 
 }
@immutable final class KeyListResponse {const KeyListResponse({required this.object, required this.data, required this.firstId, required this.lastId, required this.hasMore, });

factory KeyListResponse.fromJson(Map<String, dynamic> json) { return KeyListResponse(
  object: KeyListResponseObject.fromJson(json['object'] as String),
  data: (json['data'] as List<dynamic>).map((e) => Key3.fromJson(e as Map<String, dynamic>)).toList(),
  firstId: json['first_id'] as String,
  lastId: json['last_id'] as String,
  hasMore: json['has_more'] as bool,
); }

final KeyListResponseObject object;

final List<Key3> data;

final String firstId;

final String lastId;

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
KeyListResponse copyWith({KeyListResponseObject? object, List<Key3>? data, String? firstId, String? lastId, bool? hasMore, }) { return KeyListResponse(
  object: object ?? this.object,
  data: data ?? this.data,
  firstId: firstId ?? this.firstId,
  lastId: lastId ?? this.lastId,
  hasMore: hasMore ?? this.hasMore,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is KeyListResponse &&
          object == other.object &&
          listEquals(data, other.data) &&
          firstId == other.firstId &&
          lastId == other.lastId &&
          hasMore == other.hasMore; } 
@override int get hashCode { return Object.hash(object, Object.hashAll(data), firstId, lastId, hasMore); } 
@override String toString() { return 'KeyListResponse(object: $object, data: $data, firstId: $firstId, lastId: $lastId, hasMore: $hasMore)'; } 
 }
