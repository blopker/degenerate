// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'eval_run.dart';/// The type of this object. It is always set to "list".
/// 
@immutable final class EvalRunListObject {const EvalRunListObject._(this.value);

factory EvalRunListObject.fromJson(String json) { return switch (json) {
  'list' => list,
  _ => EvalRunListObject._(json),
}; }

static const EvalRunListObject list = EvalRunListObject._('list');

static const List<EvalRunListObject> values = [list];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EvalRunListObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EvalRunListObject($value)'; } 
 }
/// An object representing a list of runs for an evaluation.
/// 
@immutable final class EvalRunList {const EvalRunList({required this.data, required this.firstId, required this.lastId, required this.hasMore, this.object = EvalRunListObject.list, });

factory EvalRunList.fromJson(Map<String, dynamic> json) { return EvalRunList(
  object: EvalRunListObject.fromJson(json['object'] as String),
  data: (json['data'] as List<dynamic>).map((e) => EvalRun.fromJson(e as Map<String, dynamic>)).toList(),
  firstId: json['first_id'] as String,
  lastId: json['last_id'] as String,
  hasMore: json['has_more'] as bool,
); }

/// The type of this object. It is always set to "list".
/// 
final EvalRunListObject object;

/// An array of eval run objects.
/// 
final List<EvalRun> data;

/// The identifier of the first eval run in the data array.
final String firstId;

/// The identifier of the last eval run in the data array.
final String lastId;

/// Indicates whether there are more evals available.
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
EvalRunList copyWith({EvalRunListObject? object, List<EvalRun>? data, String? firstId, String? lastId, bool? hasMore, }) { return EvalRunList(
  object: object ?? this.object,
  data: data ?? this.data,
  firstId: firstId ?? this.firstId,
  lastId: lastId ?? this.lastId,
  hasMore: hasMore ?? this.hasMore,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EvalRunList &&
          object == other.object &&
          listEquals(data, other.data) &&
          firstId == other.firstId &&
          lastId == other.lastId &&
          hasMore == other.hasMore; } 
@override int get hashCode { return Object.hash(object, Object.hashAll(data), firstId, lastId, hasMore); } 
@override String toString() { return 'EvalRunList(object: $object, data: $data, firstId: $firstId, lastId: $lastId, hasMore: $hasMore)'; } 
 }
