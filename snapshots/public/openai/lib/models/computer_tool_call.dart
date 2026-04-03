// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'computer_action.dart';import 'computer_call_safety_check_param.dart';/// The status of the item. One of `in_progress`, `completed`, or
/// `incomplete`. Populated when items are returned via API.
/// 
@immutable final class ComputerToolCallStatus {const ComputerToolCallStatus._(this.value);

factory ComputerToolCallStatus.fromJson(String json) { return switch (json) {
  'in_progress' => inProgress,
  'completed' => completed,
  'incomplete' => incomplete,
  _ => ComputerToolCallStatus._(json),
}; }

static const ComputerToolCallStatus inProgress = ComputerToolCallStatus._('in_progress');

static const ComputerToolCallStatus completed = ComputerToolCallStatus._('completed');

static const ComputerToolCallStatus incomplete = ComputerToolCallStatus._('incomplete');

static const List<ComputerToolCallStatus> values = [inProgress, completed, incomplete];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ComputerToolCallStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ComputerToolCallStatus($value)'; } 
 }
/// A tool call to a computer use tool. See the
/// [computer use guide](/docs/guides/tools-computer-use) for more information.
/// 
@immutable final class ComputerToolCall {const ComputerToolCall({required this.id, required this.callId, required this.pendingSafetyChecks, required this.status, this.type = 'computer_call', this.action, this.actions, });

factory ComputerToolCall.fromJson(Map<String, dynamic> json) { return ComputerToolCall(
  type: json['type'] as String,
  id: json['id'] as String,
  callId: json['call_id'] as String,
  action: json['action'] != null ? ComputerAction.fromJson(json['action'] as Map<String, dynamic>) : null,
  actions: (json['actions'] as List<dynamic>?)?.map((e) => ComputerAction.fromJson(e as Map<String, dynamic>)).toList(),
  pendingSafetyChecks: (json['pending_safety_checks'] as List<dynamic>).map((e) => ComputerCallSafetyCheckParam.fromJson(e as Map<String, dynamic>)).toList(),
  status: ComputerToolCallStatus.fromJson(json['status'] as String),
); }

/// The type of the computer call. Always `computer_call`.
final String type;

/// The unique ID of the computer call.
final String id;

/// An identifier used when responding to the tool call with output.
/// 
final String callId;

final ComputerAction? action;

/// Flattened batched actions for `computer_use`. Each action includes an
/// `type` discriminator and action-specific fields.
/// 
final List<ComputerAction>? actions;

/// The pending safety checks for the computer call.
/// 
final List<ComputerCallSafetyCheckParam> pendingSafetyChecks;

/// The status of the item. One of `in_progress`, `completed`, or
/// `incomplete`. Populated when items are returned via API.
/// 
final ComputerToolCallStatus status;

Map<String, dynamic> toJson() { return {
  'type': type,
  'id': id,
  'call_id': callId,
  if (action != null) 'action': action?.toJson(),
  if (actions != null) 'actions': actions?.map((e) => e.toJson()).toList(),
  'pending_safety_checks': pendingSafetyChecks.map((e) => e.toJson()).toList(),
  'status': status.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('call_id') && json['call_id'] is String &&
      json.containsKey('pending_safety_checks') &&
      json.containsKey('status'); } 
ComputerToolCall copyWith({String? type, String? id, String? callId, ComputerAction Function()? action, List<ComputerAction> Function()? actions, List<ComputerCallSafetyCheckParam>? pendingSafetyChecks, ComputerToolCallStatus? status, }) { return ComputerToolCall(
  type: type ?? this.type,
  id: id ?? this.id,
  callId: callId ?? this.callId,
  action: action != null ? action() : this.action,
  actions: actions != null ? actions() : this.actions,
  pendingSafetyChecks: pendingSafetyChecks ?? this.pendingSafetyChecks,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ComputerToolCall &&
          type == other.type &&
          id == other.id &&
          callId == other.callId &&
          action == other.action &&
          listEquals(actions, other.actions) &&
          listEquals(pendingSafetyChecks, other.pendingSafetyChecks) &&
          status == other.status; } 
@override int get hashCode { return Object.hash(type, id, callId, action, Object.hashAll(actions ?? const []), Object.hashAll(pendingSafetyChecks), status); } 
@override String toString() { return 'ComputerToolCall(type: $type, id: $id, callId: $callId, action: $action, actions: $actions, pendingSafetyChecks: $pendingSafetyChecks, status: $status)'; } 
 }
