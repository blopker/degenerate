// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'messages_inner_messages_content.dart';import 'messages_inner_messages_content_variant2.dart';import 'messages_inner_messages_content_variant3.dart';final class MessagesInnerMessages {const MessagesInnerMessages({this.content, this.role, this.toolCallId, });

factory MessagesInnerMessages.fromJson(Map<String, dynamic> json) { return MessagesInnerMessages(
  content: json['content'] != null ? OneOf3.parse(json['content'], fromA: (v) => v as String, fromB: (v) => (v as List<dynamic>).map((e) => MessagesInnerMessagesContentVariant2.fromJson(e as Map<String, dynamic>)).toList(), fromC: (v) => MessagesInnerMessagesContentVariant3.fromJson(v as Map<String, dynamic>),) : null,
  role: json['role'] as String?,
  toolCallId: json['tool_call_id'] as String?,
); }

final MessagesInnerMessagesContent? content;

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
MessagesInnerMessages copyWith({MessagesInnerMessagesContent Function()? content, String Function()? role, String Function()? toolCallId, }) { return MessagesInnerMessages(
  content: content != null ? content() : this.content,
  role: role != null ? role() : this.role,
  toolCallId: toolCallId != null ? toolCallId() : this.toolCallId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MessagesInnerMessages &&
          content == other.content &&
          role == other.role &&
          toolCallId == other.toolCallId; } 
@override int get hashCode { return Object.hash(content, role, toolCallId); } 
@override String toString() { return 'MessagesInnerMessages(content: $content, role: $role, toolCallId: $toolCallId)'; } 
 }
