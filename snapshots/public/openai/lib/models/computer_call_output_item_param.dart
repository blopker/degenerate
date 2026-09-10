// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'computer_call_safety_check_param.dart';import 'computer_screenshot_image.dart';import 'function_call_item_status.dart';/// The output of a computer tool call.
@immutable final class ComputerCallOutputItemParam {const ComputerCallOutputItemParam({required this.callId, required this.output, this.id = const Omittable.absent(), this.type = 'computer_call_output', this.acknowledgedSafetyChecks = const Omittable.absent(), this.status = const Omittable.absent(), });

factory ComputerCallOutputItemParam.fromJson(Map<String, dynamic> json) { return ComputerCallOutputItemParam(
  id: json.containsKey('id') ? Omittable(json['id'] as String?) : const Omittable.absent(),
  callId: json['call_id'] as String,
  type: json['type'] as String,
  output: ComputerScreenshotImage.fromJson(json['output'] as Map<String, dynamic>),
  acknowledgedSafetyChecks: json.containsKey('acknowledged_safety_checks') ? Omittable((json['acknowledged_safety_checks'] as List<dynamic>?)?.map((e) => ComputerCallSafetyCheckParam.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  status: json.containsKey('status') ? Omittable(json['status'] != null ? FunctionCallItemStatus.fromJson(json['status'] as String) : null) : const Omittable.absent(),
); }

/// The ID of the computer tool call output.
final Omittable<String?> id;

/// The ID of the computer tool call that produced the output.
final String callId;

/// The type of the computer tool call output. Always `computer_call_output`.
final String type;

final ComputerScreenshotImage output;

/// The safety checks reported by the API that have been acknowledged by the developer.
final Omittable<List<ComputerCallSafetyCheckParam>?> acknowledgedSafetyChecks;

final Omittable<FunctionCallItemStatus?> status;

Map<String, dynamic> toJson() { return {
  if (id.isPresent) 'id': id.value,
  'call_id': callId,
  'type': type,
  'output': output.toJson(),
  if (acknowledgedSafetyChecks.isPresent) 'acknowledged_safety_checks': acknowledgedSafetyChecks.value?.map((e) => e.toJson()).toList(),
  if (status.isPresent) 'status': status.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('call_id') && json['call_id'] is String &&
      json.containsKey('type') && json['type'] is String &&
      json.containsKey('output'); } 
ComputerCallOutputItemParam copyWith({Omittable<String?>? id, String? callId, String? type, ComputerScreenshotImage? output, Omittable<List<ComputerCallSafetyCheckParam>?>? acknowledgedSafetyChecks, Omittable<FunctionCallItemStatus?>? status, }) { return ComputerCallOutputItemParam(
  id: id ?? this.id,
  callId: callId ?? this.callId,
  type: type ?? this.type,
  output: output ?? this.output,
  acknowledgedSafetyChecks: acknowledgedSafetyChecks ?? this.acknowledgedSafetyChecks,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ComputerCallOutputItemParam &&
          id == other.id &&
          callId == other.callId &&
          type == other.type &&
          output == other.output &&
          acknowledgedSafetyChecks.isPresent == other.acknowledgedSafetyChecks.isPresent &&
          listEquals(acknowledgedSafetyChecks.value, other.acknowledgedSafetyChecks.value) &&
          status == other.status; } 
@override int get hashCode { return Object.hash(id, callId, type, output, Object.hashAll(acknowledgedSafetyChecks.value ?? const []), status); } 
@override String toString() { return 'ComputerCallOutputItemParam(id: $id, callId: $callId, type: $type, output: $output, acknowledgedSafetyChecks: $acknowledgedSafetyChecks, status: $status)'; } 
 }
