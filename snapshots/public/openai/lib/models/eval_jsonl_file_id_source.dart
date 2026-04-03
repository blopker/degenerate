// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of jsonl source. Always `file_id`.
@immutable final class EvalJsonlFileIdSourceType {const EvalJsonlFileIdSourceType._(this.value);

factory EvalJsonlFileIdSourceType.fromJson(String json) { return switch (json) {
  'file_id' => fileId,
  _ => EvalJsonlFileIdSourceType._(json),
}; }

static const EvalJsonlFileIdSourceType fileId = EvalJsonlFileIdSourceType._('file_id');

static const List<EvalJsonlFileIdSourceType> values = [fileId];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EvalJsonlFileIdSourceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EvalJsonlFileIdSourceType($value)'; } 
 }
@immutable final class EvalJsonlFileIdSource {const EvalJsonlFileIdSource({required this.id, this.type = EvalJsonlFileIdSourceType.fileId, });

factory EvalJsonlFileIdSource.fromJson(Map<String, dynamic> json) { return EvalJsonlFileIdSource(
  type: EvalJsonlFileIdSourceType.fromJson(json['type'] as String),
  id: json['id'] as String,
); }

/// The type of jsonl source. Always `file_id`.
final EvalJsonlFileIdSourceType type;

/// The identifier of the file.
final String id;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('id') && json['id'] is String; } 
EvalJsonlFileIdSource copyWith({EvalJsonlFileIdSourceType? type, String? id, }) { return EvalJsonlFileIdSource(
  type: type ?? this.type,
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EvalJsonlFileIdSource &&
          type == other.type &&
          id == other.id; } 
@override int get hashCode { return Object.hash(type, id); } 
@override String toString() { return 'EvalJsonlFileIdSource(type: $type, id: $id)'; } 
 }
