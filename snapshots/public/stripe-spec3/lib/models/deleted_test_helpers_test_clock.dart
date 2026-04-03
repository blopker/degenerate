// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// String representing the object's type. Objects of the same type share the same value.
@immutable final class DeletedTestHelpersTestClockObject {const DeletedTestHelpersTestClockObject._(this.value);

factory DeletedTestHelpersTestClockObject.fromJson(String json) { return switch (json) {
  'test_helpers.test_clock' => testHelpersTestClock,
  _ => DeletedTestHelpersTestClockObject._(json),
}; }

static const DeletedTestHelpersTestClockObject testHelpersTestClock = DeletedTestHelpersTestClockObject._('test_helpers.test_clock');

static const List<DeletedTestHelpersTestClockObject> values = [testHelpersTestClock];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeletedTestHelpersTestClockObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeletedTestHelpersTestClockObject($value)'; } 
 }
/// 
@immutable final class DeletedTestHelpersTestClock {const DeletedTestHelpersTestClock({required this.deleted, required this.id, required this.object, });

factory DeletedTestHelpersTestClock.fromJson(Map<String, dynamic> json) { return DeletedTestHelpersTestClock(
  deleted: json['deleted'] as bool,
  id: json['id'] as String,
  object: DeletedTestHelpersTestClockObject.fromJson(json['object'] as String),
); }

/// Always true for a deleted object
final bool deleted;

/// Unique identifier for the object.
final String id;

/// String representing the object's type. Objects of the same type share the same value.
final DeletedTestHelpersTestClockObject object;

Map<String, dynamic> toJson() { return {
  'deleted': deleted,
  'id': id,
  'object': object.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('deleted') && json['deleted'] is bool &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('object'); } 
DeletedTestHelpersTestClock copyWith({bool? deleted, String? id, DeletedTestHelpersTestClockObject? object, }) { return DeletedTestHelpersTestClock(
  deleted: deleted ?? this.deleted,
  id: id ?? this.id,
  object: object ?? this.object,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeletedTestHelpersTestClock &&
          deleted == other.deleted &&
          id == other.id &&
          object == other.object; } 
@override int get hashCode { return Object.hash(deleted, id, object); } 
@override String toString() { return 'DeletedTestHelpersTestClock(deleted: $deleted, id: $id, object: $object)'; } 
 }
