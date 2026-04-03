// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'create_thread_request_tool_resources_code_interpreter.dart';/// A set of resources that are made available to the assistant's tools in this thread. The resources are specific to the type of tool. For example, the `code_interpreter` tool requires a list of file IDs, while the `file_search` tool requires a list of vector store IDs.
/// 
@immutable final class CreateThreadRequestToolResources {const CreateThreadRequestToolResources({this.codeInterpreter, this.fileSearch, });

factory CreateThreadRequestToolResources.fromJson(Map<String, dynamic> json) { return CreateThreadRequestToolResources(
  codeInterpreter: json['code_interpreter'] != null ? CreateThreadRequestToolResourcesCodeInterpreter.fromJson(json['code_interpreter'] as Map<String, dynamic>) : null,
  fileSearch: json['file_search'],
); }

final CreateThreadRequestToolResourcesCodeInterpreter? codeInterpreter;

/// One of: dynamic, dynamic
final dynamic fileSearch;

Map<String, dynamic> toJson() { return {
  if (codeInterpreter != null) 'code_interpreter': codeInterpreter?.toJson(),
  'file_search': ?fileSearch,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'code_interpreter', 'file_search'}.contains(key)); } 
CreateThreadRequestToolResources copyWith({CreateThreadRequestToolResourcesCodeInterpreter Function()? codeInterpreter, dynamic Function()? fileSearch, }) { return CreateThreadRequestToolResources(
  codeInterpreter: codeInterpreter != null ? codeInterpreter() : this.codeInterpreter,
  fileSearch: fileSearch != null ? fileSearch() : this.fileSearch,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateThreadRequestToolResources &&
          codeInterpreter == other.codeInterpreter &&
          fileSearch == other.fileSearch; } 
@override int get hashCode { return Object.hash(codeInterpreter, fileSearch); } 
@override String toString() { return 'CreateThreadRequestToolResources(codeInterpreter: $codeInterpreter, fileSearch: $fileSearch)'; } 
 }
