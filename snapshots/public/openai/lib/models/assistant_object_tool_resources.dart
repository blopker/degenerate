// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'assistant_object_tool_resources_code_interpreter.dart';import 'assistant_object_tool_resources_file_search.dart';/// A set of resources that are used by the assistant's tools. The resources are specific to the type of tool. For example, the `code_interpreter` tool requires a list of file IDs, while the `file_search` tool requires a list of vector store IDs.
/// 
@immutable final class AssistantObjectToolResources {const AssistantObjectToolResources({this.codeInterpreter, this.fileSearch, });

factory AssistantObjectToolResources.fromJson(Map<String, dynamic> json) { return AssistantObjectToolResources(
  codeInterpreter: json['code_interpreter'] != null ? AssistantObjectToolResourcesCodeInterpreter.fromJson(json['code_interpreter'] as Map<String, dynamic>) : null,
  fileSearch: json['file_search'] != null ? AssistantObjectToolResourcesFileSearch.fromJson(json['file_search'] as Map<String, dynamic>) : null,
); }

final AssistantObjectToolResourcesCodeInterpreter? codeInterpreter;

final AssistantObjectToolResourcesFileSearch? fileSearch;

Map<String, dynamic> toJson() { return {
  if (codeInterpreter != null) 'code_interpreter': codeInterpreter?.toJson(),
  if (fileSearch != null) 'file_search': fileSearch?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'code_interpreter', 'file_search'}.contains(key)); } 
AssistantObjectToolResources copyWith({AssistantObjectToolResourcesCodeInterpreter Function()? codeInterpreter, AssistantObjectToolResourcesFileSearch Function()? fileSearch, }) { return AssistantObjectToolResources(
  codeInterpreter: codeInterpreter != null ? codeInterpreter() : this.codeInterpreter,
  fileSearch: fileSearch != null ? fileSearch() : this.fileSearch,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AssistantObjectToolResources &&
          codeInterpreter == other.codeInterpreter &&
          fileSearch == other.fileSearch; } 
@override int get hashCode { return Object.hash(codeInterpreter, fileSearch); } 
@override String toString() { return 'AssistantObjectToolResources(codeInterpreter: $codeInterpreter, fileSearch: $fileSearch)'; } 
 }
