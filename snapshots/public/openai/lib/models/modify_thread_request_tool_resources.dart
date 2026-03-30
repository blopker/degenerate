// GENERATED CODE - DO NOT MODIFY BY HAND

import 'modify_thread_request_tool_resources_code_interpreter.dart';import 'modify_thread_request_tool_resources_file_search.dart';/// A set of resources that are made available to the assistant's tools in this thread. The resources are specific to the type of tool. For example, the `code_interpreter` tool requires a list of file IDs, while the `file_search` tool requires a list of vector store IDs.
/// 
final class ModifyThreadRequestToolResources {const ModifyThreadRequestToolResources({this.codeInterpreter, this.fileSearch, });

factory ModifyThreadRequestToolResources.fromJson(Map<String, dynamic> json) { return ModifyThreadRequestToolResources(
  codeInterpreter: json['code_interpreter'] != null ? ModifyThreadRequestToolResourcesCodeInterpreter.fromJson(json['code_interpreter'] as Map<String, dynamic>) : null,
  fileSearch: json['file_search'] != null ? ModifyThreadRequestToolResourcesFileSearch.fromJson(json['file_search'] as Map<String, dynamic>) : null,
); }

final ModifyThreadRequestToolResourcesCodeInterpreter? codeInterpreter;

final ModifyThreadRequestToolResourcesFileSearch? fileSearch;

Map<String, dynamic> toJson() { return {
  if (codeInterpreter != null) 'code_interpreter': codeInterpreter?.toJson(),
  if (fileSearch != null) 'file_search': fileSearch?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'code_interpreter', 'file_search'}.contains(key)); } 
ModifyThreadRequestToolResources copyWith({ModifyThreadRequestToolResourcesCodeInterpreter Function()? codeInterpreter, ModifyThreadRequestToolResourcesFileSearch Function()? fileSearch, }) { return ModifyThreadRequestToolResources(
  codeInterpreter: codeInterpreter != null ? codeInterpreter() : this.codeInterpreter,
  fileSearch: fileSearch != null ? fileSearch() : this.fileSearch,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ModifyThreadRequestToolResources &&
          codeInterpreter == other.codeInterpreter &&
          fileSearch == other.fileSearch; } 
@override int get hashCode { return Object.hash(codeInterpreter, fileSearch); } 
@override String toString() { return 'ModifyThreadRequestToolResources(codeInterpreter: $codeInterpreter, fileSearch: $fileSearch)'; } 
 }
