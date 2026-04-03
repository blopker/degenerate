// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// String representing the object's type. Objects of the same type share the same value.
@immutable final class DeletedTerminalConfigurationObject {const DeletedTerminalConfigurationObject._(this.value);

factory DeletedTerminalConfigurationObject.fromJson(String json) { return switch (json) {
  'terminal.configuration' => terminalConfiguration,
  _ => DeletedTerminalConfigurationObject._(json),
}; }

static const DeletedTerminalConfigurationObject terminalConfiguration = DeletedTerminalConfigurationObject._('terminal.configuration');

static const List<DeletedTerminalConfigurationObject> values = [terminalConfiguration];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeletedTerminalConfigurationObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeletedTerminalConfigurationObject($value)'; } 
 }
/// 
@immutable final class DeletedTerminalConfiguration {const DeletedTerminalConfiguration({required this.deleted, required this.id, required this.object, });

factory DeletedTerminalConfiguration.fromJson(Map<String, dynamic> json) { return DeletedTerminalConfiguration(
  deleted: json['deleted'] as bool,
  id: json['id'] as String,
  object: DeletedTerminalConfigurationObject.fromJson(json['object'] as String),
); }

/// Always true for a deleted object
final bool deleted;

/// Unique identifier for the object.
final String id;

/// String representing the object's type. Objects of the same type share the same value.
final DeletedTerminalConfigurationObject object;

Map<String, dynamic> toJson() { return {
  'deleted': deleted,
  'id': id,
  'object': object.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('deleted') && json['deleted'] is bool &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('object'); } 
DeletedTerminalConfiguration copyWith({bool? deleted, String? id, DeletedTerminalConfigurationObject? object, }) { return DeletedTerminalConfiguration(
  deleted: deleted ?? this.deleted,
  id: id ?? this.id,
  object: object ?? this.object,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeletedTerminalConfiguration &&
          deleted == other.deleted &&
          id == other.id &&
          object == other.object; } 
@override int get hashCode { return Object.hash(deleted, id, object); } 
@override String toString() { return 'DeletedTerminalConfiguration(deleted: $deleted, id: $id, object: $object)'; } 
 }
