// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of tool call. This is always going to be `file_search` for this type of tool call.
@immutable final class RunStepDeltaStepDetailsToolCallsFileSearchObjectType {const RunStepDeltaStepDetailsToolCallsFileSearchObjectType._(this.value);

factory RunStepDeltaStepDetailsToolCallsFileSearchObjectType.fromJson(String json) { return switch (json) {
  'file_search' => fileSearch,
  _ => RunStepDeltaStepDetailsToolCallsFileSearchObjectType._(json),
}; }

static const RunStepDeltaStepDetailsToolCallsFileSearchObjectType fileSearch = RunStepDeltaStepDetailsToolCallsFileSearchObjectType._('file_search');

static const List<RunStepDeltaStepDetailsToolCallsFileSearchObjectType> values = [fileSearch];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RunStepDeltaStepDetailsToolCallsFileSearchObjectType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RunStepDeltaStepDetailsToolCallsFileSearchObjectType($value)'; } 
 }
@immutable final class RunStepDeltaStepDetailsToolCallsFileSearchObject {const RunStepDeltaStepDetailsToolCallsFileSearchObject({required this.index, required this.type, required this.fileSearch, this.id, });

factory RunStepDeltaStepDetailsToolCallsFileSearchObject.fromJson(Map<String, dynamic> json) { return RunStepDeltaStepDetailsToolCallsFileSearchObject(
  index: (json['index'] as num).toInt(),
  id: json['id'] as String?,
  type: RunStepDeltaStepDetailsToolCallsFileSearchObjectType.fromJson(json['type'] as String),
  fileSearch: json['file_search'] as Map<String, dynamic>,
); }

/// The index of the tool call in the tool calls array.
final int index;

/// The ID of the tool call object.
final String? id;

/// The type of tool call. This is always going to be `file_search` for this type of tool call.
final RunStepDeltaStepDetailsToolCallsFileSearchObjectType type;

/// For now, this is always going to be an empty object.
final Map<String,dynamic> fileSearch;

Map<String, dynamic> toJson() { return {
  'index': index,
  'id': ?id,
  'type': type.toJson(),
  'file_search': fileSearch,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('index') && json['index'] is num &&
      json.containsKey('type') &&
      json.containsKey('file_search'); } 
RunStepDeltaStepDetailsToolCallsFileSearchObject copyWith({int? index, String Function()? id, RunStepDeltaStepDetailsToolCallsFileSearchObjectType? type, Map<String,dynamic>? fileSearch, }) { return RunStepDeltaStepDetailsToolCallsFileSearchObject(
  index: index ?? this.index,
  id: id != null ? id() : this.id,
  type: type ?? this.type,
  fileSearch: fileSearch ?? this.fileSearch,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunStepDeltaStepDetailsToolCallsFileSearchObject &&
          index == other.index &&
          id == other.id &&
          type == other.type &&
          fileSearch == other.fileSearch; } 
@override int get hashCode { return Object.hash(index, id, type, fileSearch); } 
@override String toString() { return 'RunStepDeltaStepDetailsToolCallsFileSearchObject(index: $index, id: $id, type: $type, fileSearch: $fileSearch)'; } 
 }
