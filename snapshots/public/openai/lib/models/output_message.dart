// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'message_phase.dart';import 'output_message_content.dart';/// The role of the output message. Always `assistant`.
/// 
final class OutputMessageRole {const OutputMessageRole._(this.value);

factory OutputMessageRole.fromJson(String json) { return switch (json) {
  'assistant' => assistant,
  _ => OutputMessageRole._(json),
}; }

static const OutputMessageRole assistant = OutputMessageRole._('assistant');

static const List<OutputMessageRole> values = [assistant];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputMessageRole && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OutputMessageRole($value)'; } 
 }
/// The status of the message input. One of `in_progress`, `completed`, or
/// `incomplete`. Populated when input items are returned via API.
/// 
final class OutputMessageStatus {const OutputMessageStatus._(this.value);

factory OutputMessageStatus.fromJson(String json) { return switch (json) {
  'in_progress' => inProgress,
  'completed' => completed,
  'incomplete' => incomplete,
  _ => OutputMessageStatus._(json),
}; }

static const OutputMessageStatus inProgress = OutputMessageStatus._('in_progress');

static const OutputMessageStatus completed = OutputMessageStatus._('completed');

static const OutputMessageStatus incomplete = OutputMessageStatus._('incomplete');

static const List<OutputMessageStatus> values = [inProgress, completed, incomplete];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputMessageStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OutputMessageStatus($value)'; } 
 }
/// An output message from the model.
/// 
final class OutputMessage {const OutputMessage({required this.id, required this.type, required this.role, required this.content, this.phase, required this.status, });

factory OutputMessage.fromJson(Map<String, dynamic> json) { return OutputMessage(
  id: json['id'] as String,
  type: json['type'] as String,
  role: OutputMessageRole.fromJson(json['role'] as String),
  content: (json['content'] as List<dynamic>).map((e) => OutputMessageContent.fromJson(e as Map<String, dynamic>)).toList(),
  phase: json['phase'] != null ? MessagePhase.fromJson(json['phase'] as String) : null,
  status: OutputMessageStatus.fromJson(json['status'] as String),
); }

/// The unique ID of the output message.
/// 
final String id;

/// The type of the output message. Always `message`.
/// 
final String type;

/// The role of the output message. Always `assistant`.
/// 
final OutputMessageRole role;

/// The content of the output message.
/// 
final List<OutputMessageContent> content;

/// Labels an `assistant` message as intermediate commentary (`commentary`) or the final answer (`final_answer`).
/// For models like `gpt-5.3-codex` and beyond, when sending follow-up requests, preserve and resend
/// phase on all assistant messages — dropping it can degrade performance. Not used for user messages.
/// 
final MessagePhase? phase;

/// The status of the message input. One of `in_progress`, `completed`, or
/// `incomplete`. Populated when input items are returned via API.
/// 
final OutputMessageStatus status;

Map<String, dynamic> toJson() { return {
  'id': id,
  'type': type,
  'role': role.toJson(),
  'content': content.map((e) => e.toJson()).toList(),
  if (phase != null) 'phase': phase?.toJson(),
  'status': status.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('type') && json['type'] is String &&
      json.containsKey('role') &&
      json.containsKey('content') &&
      json.containsKey('status'); } 
OutputMessage copyWith({String? id, String? type, OutputMessageRole? role, List<OutputMessageContent>? content, MessagePhase? Function()? phase, OutputMessageStatus? status, }) { return OutputMessage(
  id: id ?? this.id,
  type: type ?? this.type,
  role: role ?? this.role,
  content: content ?? this.content,
  phase: phase != null ? phase() : this.phase,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OutputMessage &&
          id == other.id &&
          type == other.type &&
          role == other.role &&
          listEquals(content, other.content) &&
          phase == other.phase &&
          status == other.status; } 
@override int get hashCode { return Object.hash(id, type, role, Object.hashAll(content), phase, status); } 
@override String toString() { return 'OutputMessage(id: $id, type: $type, role: $role, content: $content, phase: $phase, status: $status)'; } 
 }
