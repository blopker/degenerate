// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'computer_call_safety_check_param.dart';import 'computer_screenshot_image.dart';/// The status of the message input. One of `in_progress`, `completed`, or
/// `incomplete`. Populated when input items are returned via API.
/// 
@immutable final class ComputerToolCallOutputResourceStatus {const ComputerToolCallOutputResourceStatus._(this.value);

factory ComputerToolCallOutputResourceStatus.fromJson(String json) { return switch (json) {
  'in_progress' => inProgress,
  'completed' => completed,
  'incomplete' => incomplete,
  _ => ComputerToolCallOutputResourceStatus._(json),
}; }

static const ComputerToolCallOutputResourceStatus inProgress = ComputerToolCallOutputResourceStatus._('in_progress');

static const ComputerToolCallOutputResourceStatus completed = ComputerToolCallOutputResourceStatus._('completed');

static const ComputerToolCallOutputResourceStatus incomplete = ComputerToolCallOutputResourceStatus._('incomplete');

static const List<ComputerToolCallOutputResourceStatus> values = [inProgress, completed, incomplete];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ComputerToolCallOutputResourceStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ComputerToolCallOutputResourceStatus($value)'; } 
 }
@immutable final class ComputerToolCallOutputResource {const ComputerToolCallOutputResource({required this.id, required this.callId, required this.output, this.type = 'computer_call_output', this.acknowledgedSafetyChecks, this.status, });

factory ComputerToolCallOutputResource.fromJson(Map<String, dynamic> json) { return ComputerToolCallOutputResource(
  type: json['type'] as String,
  id: json['id'] as String,
  callId: json['call_id'] as String,
  acknowledgedSafetyChecks: (json['acknowledged_safety_checks'] as List<dynamic>?)?.map((e) => ComputerCallSafetyCheckParam.fromJson(e as Map<String, dynamic>)).toList(),
  output: ComputerScreenshotImage.fromJson(json['output'] as Map<String, dynamic>),
  status: json['status'] != null ? ComputerToolCallOutputResourceStatus.fromJson(json['status'] as String) : null,
); }

/// The type of the computer tool call output. Always `computer_call_output`.
/// 
final String type;

/// The unique ID of the computer call tool output.
/// 
final String id;

/// The ID of the computer tool call that produced the output.
/// 
final String callId;

/// The safety checks reported by the API that have been acknowledged by the
/// developer.
/// 
final List<ComputerCallSafetyCheckParam>? acknowledgedSafetyChecks;

final ComputerScreenshotImage output;

/// The status of the message input. One of `in_progress`, `completed`, or
/// `incomplete`. Populated when input items are returned via API.
/// 
final ComputerToolCallOutputResourceStatus? status;

Map<String, dynamic> toJson() { return {
  'type': type,
  'id': id,
  'call_id': callId,
  if (acknowledgedSafetyChecks != null) 'acknowledged_safety_checks': acknowledgedSafetyChecks?.map((e) => e.toJson()).toList(),
  'output': output.toJson(),
  if (status != null) 'status': status?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('call_id') && json['call_id'] is String &&
      json.containsKey('output'); } 
ComputerToolCallOutputResource copyWith({String? type, String? id, String? callId, List<ComputerCallSafetyCheckParam>? Function()? acknowledgedSafetyChecks, ComputerScreenshotImage? output, ComputerToolCallOutputResourceStatus? Function()? status, }) { return ComputerToolCallOutputResource(
  type: type ?? this.type,
  id: id ?? this.id,
  callId: callId ?? this.callId,
  acknowledgedSafetyChecks: acknowledgedSafetyChecks != null ? acknowledgedSafetyChecks() : this.acknowledgedSafetyChecks,
  output: output ?? this.output,
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ComputerToolCallOutputResource &&
          type == other.type &&
          id == other.id &&
          callId == other.callId &&
          listEquals(acknowledgedSafetyChecks, other.acknowledgedSafetyChecks) &&
          output == other.output &&
          status == other.status; } 
@override int get hashCode { return Object.hash(type, id, callId, Object.hashAll(acknowledgedSafetyChecks ?? const []), output, status); } 
@override String toString() { return 'ComputerToolCallOutputResource(type: $type, id: $id, callId: $callId, acknowledgedSafetyChecks: $acknowledgedSafetyChecks, output: $output, status: $status)'; } 
 }
