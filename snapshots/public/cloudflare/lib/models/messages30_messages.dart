// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'messages30_messages_content.dart';import 'messages30_messages_content_variant2.dart';import 'messages30_messages_content_variant3.dart';final class Messages30Messages {const Messages30Messages({this.content, this.role, this.toolCallId, });

factory Messages30Messages.fromJson(Map<String, dynamic> json) { return Messages30Messages(
  content: json['content'] != null ? OneOf3.parse(json['content'], fromA: (v) => v as String, fromB: (v) => (v as List<dynamic>).map((e) => Messages30MessagesContentVariant2.fromJson(e as Map<String, dynamic>)).toList(), fromC: (v) => Messages30MessagesContentVariant3.fromJson(v as Map<String, dynamic>),) : null,
  role: json['role'] as String?,
  toolCallId: json['tool_call_id'] as String?,
); }

final Messages30MessagesContent? content;

/// The role of the message sender (e.g., 'user', 'assistant', 'system', 'tool').
final String? role;

/// The tool call id. If you don't know what to put here you can fall back to 000000001
final String? toolCallId;

Map<String, dynamic> toJson() { return {
  if (content != null) 'content': content?.toJson(),
  'role': ?role,
  'tool_call_id': ?toolCallId,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Messages30Messages copyWith({Messages30MessagesContent Function()? content, String Function()? role, String Function()? toolCallId, }) { return Messages30Messages(
  content: content != null ? content() : this.content,
  role: role != null ? role() : this.role,
  toolCallId: toolCallId != null ? toolCallId() : this.toolCallId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages30Messages &&
          content == other.content &&
          role == other.role &&
          toolCallId == other.toolCallId; } 
@override int get hashCode { return Object.hash(content, role, toolCallId); } 
@override String toString() { return 'Messages30Messages(content: $content, role: $role, toolCallId: $toolCallId)'; } 
 }
