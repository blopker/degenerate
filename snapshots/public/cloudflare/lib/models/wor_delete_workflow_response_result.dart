// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorDeleteWorkflowResponseResultStatus {const WorDeleteWorkflowResponseResultStatus._(this.value);

factory WorDeleteWorkflowResponseResultStatus.fromJson(String json) { return switch (json) {
  'ok' => ok,
  _ => WorDeleteWorkflowResponseResultStatus._(json),
}; }

static const WorDeleteWorkflowResponseResultStatus ok = WorDeleteWorkflowResponseResultStatus._('ok');

static const List<WorDeleteWorkflowResponseResultStatus> values = [ok];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorDeleteWorkflowResponseResultStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorDeleteWorkflowResponseResultStatus($value)'; } 
 }
@immutable final class WorDeleteWorkflowResponseResult {const WorDeleteWorkflowResponseResult({required this.status, required this.success, });

factory WorDeleteWorkflowResponseResult.fromJson(Map<String, dynamic> json) { return WorDeleteWorkflowResponseResult(
  status: WorDeleteWorkflowResponseResultStatus.fromJson(json['status'] as String),
  success: json['success'] as bool?,
); }

final WorDeleteWorkflowResponseResultStatus status;

final bool? success;

Map<String, dynamic> toJson() { return {
  'status': status.toJson(),
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('status') &&
      json.containsKey('success') && json['success'] is bool; } 
WorDeleteWorkflowResponseResult copyWith({WorDeleteWorkflowResponseResultStatus? status, bool? Function()? success, }) { return WorDeleteWorkflowResponseResult(
  status: status ?? this.status,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorDeleteWorkflowResponseResult &&
          status == other.status &&
          success == other.success; } 
@override int get hashCode { return Object.hash(status, success); } 
@override String toString() { return 'WorDeleteWorkflowResponseResult(status: $status, success: $success)'; } 
 }
