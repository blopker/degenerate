// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// An input message.
@immutable final class EvalRunOutputItemSampleInput {const EvalRunOutputItemSampleInput({required this.role, required this.content, });

factory EvalRunOutputItemSampleInput.fromJson(Map<String, dynamic> json) { return EvalRunOutputItemSampleInput(
  role: json['role'] as String,
  content: json['content'] as String,
); }

/// The role of the message sender (e.g., system, user, developer).
final String role;

/// The content of the message.
final String content;

Map<String, dynamic> toJson() { return {
  'role': role,
  'content': content,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('role') && json['role'] is String &&
      json.containsKey('content') && json['content'] is String; } 
EvalRunOutputItemSampleInput copyWith({String? role, String? content, }) { return EvalRunOutputItemSampleInput(
  role: role ?? this.role,
  content: content ?? this.content,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EvalRunOutputItemSampleInput &&
          role == other.role &&
          content == other.content; } 
@override int get hashCode { return Object.hash(role, content); } 
@override String toString() { return 'EvalRunOutputItemSampleInput(role: $role, content: $content)'; } 
 }
