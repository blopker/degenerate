// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'messages23_messages_content.dart';import 'messages23_messages_content_variant2.dart';@immutable final class Messages23Messages {const Messages23Messages({required this.content, required this.role, });

factory Messages23Messages.fromJson(Map<String, dynamic> json) { return Messages23Messages(
  content: OneOf2.parse(json['content'], fromA: (v) => v as String, fromB: (v) => (v as List<dynamic>).map((e) => Messages23MessagesContentVariant2.fromJson(e as Map<String, dynamic>)).toList(),),
  role: json['role'] as String,
); }

final Messages23MessagesContent content;

/// The role of the message sender (e.g., 'user', 'assistant', 'system', 'tool').
final String role;

Map<String, dynamic> toJson() { return {
  'content': content.toJson(),
  'role': role,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('content') &&
      json.containsKey('role') && json['role'] is String; } 
Messages23Messages copyWith({Messages23MessagesContent? content, String? role, }) { return Messages23Messages(
  content: content ?? this.content,
  role: role ?? this.role,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages23Messages &&
          content == other.content &&
          role == other.role; } 
@override int get hashCode { return Object.hash(content, role); } 
@override String toString() { return 'Messages23Messages(content: $content, role: $role)'; } 
 }
