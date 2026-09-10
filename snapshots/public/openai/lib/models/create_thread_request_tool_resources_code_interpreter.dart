// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CreateThreadRequestToolResourcesCodeInterpreter {const CreateThreadRequestToolResourcesCodeInterpreter({this.fileIds});

factory CreateThreadRequestToolResourcesCodeInterpreter.fromJson(Map<String, dynamic> json) { return CreateThreadRequestToolResourcesCodeInterpreter(
  fileIds: (json['file_ids'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// A list of [file](/docs/api-reference/files) IDs made available to the `code_interpreter` tool. There can be a maximum of 20 files associated with the tool.
/// 
final List<String>? fileIds;

/// The value with the schema default applied when absent.
List<String> get fileIdsOrDefault { return fileIds ?? const []; } 
Map<String, dynamic> toJson() { return {
  'file_ids': ?fileIds,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'file_ids'}.contains(key)); } 
CreateThreadRequestToolResourcesCodeInterpreter copyWith({List<String>? Function()? fileIds}) { return CreateThreadRequestToolResourcesCodeInterpreter(
  fileIds: fileIds != null ? fileIds() : this.fileIds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateThreadRequestToolResourcesCodeInterpreter &&
          listEquals(fileIds, other.fileIds); } 
@override int get hashCode { return Object.hashAll(fileIds ?? const []).hashCode; } 
@override String toString() { return 'CreateThreadRequestToolResourcesCodeInterpreter(fileIds: $fileIds)'; } 
 }
