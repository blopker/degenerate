// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UsageCodeInterpreterSessionsResultObject {const UsageCodeInterpreterSessionsResultObject._(this.value);

factory UsageCodeInterpreterSessionsResultObject.fromJson(String json) { return switch (json) {
  'organization.usage.code_interpreter_sessions.result' => organizationUsageCodeInterpreterSessionsResult,
  _ => UsageCodeInterpreterSessionsResultObject._(json),
}; }

static const UsageCodeInterpreterSessionsResultObject organizationUsageCodeInterpreterSessionsResult = UsageCodeInterpreterSessionsResultObject._('organization.usage.code_interpreter_sessions.result');

static const List<UsageCodeInterpreterSessionsResultObject> values = [organizationUsageCodeInterpreterSessionsResult];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsageCodeInterpreterSessionsResultObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UsageCodeInterpreterSessionsResultObject($value)'; } 
 }
/// The aggregated code interpreter sessions usage details of the specific time bucket.
@immutable final class UsageCodeInterpreterSessionsResult {const UsageCodeInterpreterSessionsResult({required this.object, this.numSessions, this.projectId, });

factory UsageCodeInterpreterSessionsResult.fromJson(Map<String, dynamic> json) { return UsageCodeInterpreterSessionsResult(
  object: UsageCodeInterpreterSessionsResultObject.fromJson(json['object'] as String),
  numSessions: json['num_sessions'] != null ? (json['num_sessions'] as num).toInt() : null,
  projectId: json['project_id'] as String?,
); }

final UsageCodeInterpreterSessionsResultObject object;

/// The number of code interpreter sessions.
final int? numSessions;

/// When `group_by=project_id`, this field provides the project ID of the grouped usage result.
final String? projectId;

Map<String, dynamic> toJson() { return {
  'object': object.toJson(),
  'num_sessions': ?numSessions,
  'project_id': ?projectId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('object'); } 
UsageCodeInterpreterSessionsResult copyWith({UsageCodeInterpreterSessionsResultObject? object, int Function()? numSessions, String? Function()? projectId, }) { return UsageCodeInterpreterSessionsResult(
  object: object ?? this.object,
  numSessions: numSessions != null ? numSessions() : this.numSessions,
  projectId: projectId != null ? projectId() : this.projectId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UsageCodeInterpreterSessionsResult &&
          object == other.object &&
          numSessions == other.numSessions &&
          projectId == other.projectId; } 
@override int get hashCode { return Object.hash(object, numSessions, projectId); } 
@override String toString() { return 'UsageCodeInterpreterSessionsResult(object: $object, numSessions: $numSessions, projectId: $projectId)'; } 
 }
