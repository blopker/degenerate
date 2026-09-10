// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ModifyAssistantRequestToolResourcesCodeInterpreter {const ModifyAssistantRequestToolResourcesCodeInterpreter({this.fileIds});

factory ModifyAssistantRequestToolResourcesCodeInterpreter.fromJson(Map<String, dynamic> json) { return ModifyAssistantRequestToolResourcesCodeInterpreter(
  fileIds: (json['file_ids'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// Overrides the list of [file](/docs/api-reference/files) IDs made available to the `code_interpreter` tool. There can be a maximum of 20 files associated with the tool.
/// 
final List<String>? fileIds;

/// The value with the schema default applied when absent.
List<String> get fileIdsOrDefault { return fileIds ?? const []; } 
Map<String, dynamic> toJson() { return {
  'file_ids': ?fileIds,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'file_ids'}.contains(key)); } 
ModifyAssistantRequestToolResourcesCodeInterpreter copyWith({List<String>? Function()? fileIds}) { return ModifyAssistantRequestToolResourcesCodeInterpreter(
  fileIds: fileIds != null ? fileIds() : this.fileIds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ModifyAssistantRequestToolResourcesCodeInterpreter &&
          listEquals(fileIds, other.fileIds); } 
@override int get hashCode { return Object.hashAll(fileIds ?? const []).hashCode; } 
@override String toString() { return 'ModifyAssistantRequestToolResourcesCodeInterpreter(fileIds: $fileIds)'; } 
 }
