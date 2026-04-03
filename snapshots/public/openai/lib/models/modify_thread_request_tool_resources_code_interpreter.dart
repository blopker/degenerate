// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ModifyThreadRequestToolResourcesCodeInterpreter {const ModifyThreadRequestToolResourcesCodeInterpreter({this.fileIds = const []});

factory ModifyThreadRequestToolResourcesCodeInterpreter.fromJson(Map<String, dynamic> json) { return ModifyThreadRequestToolResourcesCodeInterpreter(
  fileIds: json.containsKey('file_ids') ? (json['file_ids'] as List<dynamic>).map((e) => e as String).toList() : const [],
); }

/// A list of [file](/docs/api-reference/files) IDs made available to the `code_interpreter` tool. There can be a maximum of 20 files associated with the tool.
/// 
final List<String> fileIds;

Map<String, dynamic> toJson() { return {
  'file_ids': fileIds,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'file_ids'}.contains(key)); } 
ModifyThreadRequestToolResourcesCodeInterpreter copyWith({List<String> Function()? fileIds}) { return ModifyThreadRequestToolResourcesCodeInterpreter(
  fileIds: fileIds != null ? fileIds() : this.fileIds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ModifyThreadRequestToolResourcesCodeInterpreter &&
          listEquals(fileIds, other.fileIds); } 
@override int get hashCode { return Object.hashAll(fileIds).hashCode; } 
@override String toString() { return 'ModifyThreadRequestToolResourcesCodeInterpreter(fileIds: $fileIds)'; } 
 }
