// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'messages51_messages_system_content.dart';@immutable final class Messages51MessagesSystemRole {const Messages51MessagesSystemRole._(this.value);

factory Messages51MessagesSystemRole.fromJson(String json) {return switch (json) {
  'system' => system,
  _ => Messages51MessagesSystemRole._(json),
};}

static const Messages51MessagesSystemRole system = Messages51MessagesSystemRole._('system');

static const List<Messages51MessagesSystemRole> values = [system];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is Messages51MessagesSystemRole && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'Messages51MessagesSystemRole($value)';}
}
@immutable final class Messages51MessagesSystem {const Messages51MessagesSystem({required this.content, required this.role, this.name, });

factory Messages51MessagesSystem.fromJson(Map<String, dynamic> json) {return Messages51MessagesSystem(
  content: Messages51MessagesSystemContent.fromJson(json['content']),
  name: json['name'] as String?,
  role: Messages51MessagesSystemRole.fromJson(json['role'] as String),
);}

final Messages51MessagesSystemContent content;

final String? name;

final Messages51MessagesSystemRole role;

Map<String, dynamic> toJson() {return {
  'content': content.toJson(),
  'name': ?name,
  'role': role.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('content') &&
      json.containsKey('role');}
Messages51MessagesSystem copyWith({Messages51MessagesSystemContent? content, String? Function()? name, Messages51MessagesSystemRole? role, }) {return Messages51MessagesSystem(
  content: content ?? this.content,
  name: name != null ? name() : this.name,
  role: role ?? this.role,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is Messages51MessagesSystem &&
          content == other.content &&
          name == other.name &&
          role == other.role;}
@override int get hashCode {return Object.hash(content, name, role);}
@override String toString() {return 'Messages51MessagesSystem(content: $content, name: $name, role: $role)';}
}
