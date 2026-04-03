// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_schema_issue_notification.dart';@immutable final class SchemaValidationCreateSchemaResponse {const SchemaValidationCreateSchemaResponse({required this.messages, this.errors, });

factory SchemaValidationCreateSchemaResponse.fromJson(Map<String, dynamic> json) { return SchemaValidationCreateSchemaResponse(
  errors: (json['errors'] as List<dynamic>?)?.map((e) => ShieldSchemaIssueNotification.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ShieldSchemaIssueNotification.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Describes errors in the schema that prohibited accepting the schema.
final List<ShieldSchemaIssueNotification>? errors;

/// Describes issues in the schema and how they were resolved to accept the schema.
final List<ShieldSchemaIssueNotification> messages;

Map<String, dynamic> toJson() { return {
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('messages'); } 
SchemaValidationCreateSchemaResponse copyWith({List<ShieldSchemaIssueNotification> Function()? errors, List<ShieldSchemaIssueNotification>? messages, }) { return SchemaValidationCreateSchemaResponse(
  errors: errors != null ? errors() : this.errors,
  messages: messages ?? this.messages,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SchemaValidationCreateSchemaResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors ?? const []), Object.hashAll(messages)); } 
@override String toString() { return 'SchemaValidationCreateSchemaResponse(errors: $errors, messages: $messages)'; } 
 }
