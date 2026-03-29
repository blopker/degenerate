// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'chat_completion_request_system_message_content.dart';import 'chat_completion_request_system_message_content_part.dart';/// Developer-provided instructions that the model should follow, regardless of
/// messages sent by the user. With o1 models and newer, use `developer` messages
/// for this purpose instead.
/// 
final class ChatCompletionRequestSystemMessage {const ChatCompletionRequestSystemMessage({required this.content, required this.role, this.name, });

factory ChatCompletionRequestSystemMessage.fromJson(Map<String, dynamic> json) { return ChatCompletionRequestSystemMessage(
  content: OneOf2.parse(json['content'], fromA: (v) => v as String, fromB: (v) => (v as List<dynamic>).map((e) => ChatCompletionRequestSystemMessageContentPart.fromJson(e as Map<String, dynamic>)).toList(),),
  role: json['role'] as String,
  name: json['name'] as String?,
); }

/// The contents of the system message.
final ChatCompletionRequestSystemMessageContent content;

/// The role of the messages author, in this case `system`.
final String role;

/// An optional name for the participant. Provides the model information to differentiate between participants of the same role.
final String? name;

Map<String, dynamic> toJson() { return {
  'content': content.toJson(),
  'role': role,
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('content') &&
      json.containsKey('role') && json['role'] is String; } 
ChatCompletionRequestSystemMessage copyWith({ChatCompletionRequestSystemMessageContent? content, String? role, String Function()? name, }) { return ChatCompletionRequestSystemMessage(
  content: content ?? this.content,
  role: role ?? this.role,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChatCompletionRequestSystemMessage &&
          content == other.content &&
          role == other.role &&
          name == other.name; } 
@override int get hashCode { return Object.hash(content, role, name); } 
@override String toString() { return 'ChatCompletionRequestSystemMessage(content: $content, role: $role, name: $name)'; } 
 }
