// GENERATED CODE - DO NOT MODIFY BY HAND

final class Messages44Messages {const Messages44Messages({required this.content, required this.role, });

factory Messages44Messages.fromJson(Map<String, dynamic> json) { return Messages44Messages(
  content: json['content'] as String,
  role: json['role'] as String,
); }

/// The content of the message as a string.
final String content;

/// The role of the message sender (e.g., 'user', 'assistant', 'system', 'tool').
final String role;

Map<String, dynamic> toJson() { return {
  'content': content,
  'role': role,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('content') && json['content'] is String &&
      json.containsKey('role') && json['role'] is String; } 
Messages44Messages copyWith({String? content, String? role, }) { return Messages44Messages(
  content: content ?? this.content,
  role: role ?? this.role,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages44Messages &&
          content == other.content &&
          role == other.role; } 
@override int get hashCode { return Object.hash(content, role); } 
@override String toString() { return 'Messages44Messages(content: $content, role: $role)'; } 
 }
