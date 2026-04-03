// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'assistant_tools_code.dart';import 'assistant_tools_file_search_type_only.dart';import 'create_message_request_attachments2_tools.dart';@immutable final class CreateMessageRequestAttachments2 {const CreateMessageRequestAttachments2({this.fileId, this.tools, });

factory CreateMessageRequestAttachments2.fromJson(Map<String, dynamic> json) { return CreateMessageRequestAttachments2(
  fileId: json['file_id'] as String?,
  tools: (json['tools'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => AssistantToolsCode.fromJson(v as Map<String, dynamic>), fromB: (v) => AssistantToolsFileSearchTypeOnly.fromJson(v as Map<String, dynamic>),)).toList(),
); }

/// The ID of the file to attach to the message.
final String? fileId;

/// The tools to add this file to.
final List<CreateMessageRequestAttachments2Tools>? tools;

Map<String, dynamic> toJson() { return {
  'file_id': ?fileId,
  if (tools != null) 'tools': tools?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'file_id', 'tools'}.contains(key)); } 
CreateMessageRequestAttachments2 copyWith({String Function()? fileId, List<CreateMessageRequestAttachments2Tools> Function()? tools, }) { return CreateMessageRequestAttachments2(
  fileId: fileId != null ? fileId() : this.fileId,
  tools: tools != null ? tools() : this.tools,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateMessageRequestAttachments2 &&
          fileId == other.fileId &&
          listEquals(tools, other.tools); } 
@override int get hashCode { return Object.hash(fileId, Object.hashAll(tools ?? const [])); } 
@override String toString() { return 'CreateMessageRequestAttachments2(fileId: $fileId, tools: $tools)'; } 
 }
