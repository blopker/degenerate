// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UsageVectorStoresResultObject {const UsageVectorStoresResultObject._(this.value);

factory UsageVectorStoresResultObject.fromJson(String json) { return switch (json) {
  'organization.usage.vector_stores.result' => organizationUsageVectorStoresResult,
  _ => UsageVectorStoresResultObject._(json),
}; }

static const UsageVectorStoresResultObject organizationUsageVectorStoresResult = UsageVectorStoresResultObject._('organization.usage.vector_stores.result');

static const List<UsageVectorStoresResultObject> values = [organizationUsageVectorStoresResult];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsageVectorStoresResultObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UsageVectorStoresResultObject($value)'; } 
 }
/// The aggregated vector stores usage details of the specific time bucket.
@immutable final class UsageVectorStoresResult {const UsageVectorStoresResult({required this.object, required this.usageBytes, this.projectId = const Omittable.absent(), });

factory UsageVectorStoresResult.fromJson(Map<String, dynamic> json) { return UsageVectorStoresResult(
  object: UsageVectorStoresResultObject.fromJson(json['object'] as String),
  usageBytes: (json['usage_bytes'] as num).toInt(),
  projectId: json.containsKey('project_id') ? Omittable(json['project_id'] as String?) : const Omittable.absent(),
); }

final UsageVectorStoresResultObject object;

/// The vector stores usage in bytes.
final int usageBytes;

/// When `group_by=project_id`, this field provides the project ID of the grouped usage result.
final Omittable<String?> projectId;

Map<String, dynamic> toJson() { return {
  'object': object.toJson(),
  'usage_bytes': usageBytes,
  if (projectId.isPresent) 'project_id': projectId.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('object') &&
      json.containsKey('usage_bytes') && json['usage_bytes'] is num; } 
UsageVectorStoresResult copyWith({UsageVectorStoresResultObject? object, int? usageBytes, Omittable<String?>? projectId, }) { return UsageVectorStoresResult(
  object: object ?? this.object,
  usageBytes: usageBytes ?? this.usageBytes,
  projectId: projectId ?? this.projectId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UsageVectorStoresResult &&
          object == other.object &&
          usageBytes == other.usageBytes &&
          projectId == other.projectId; } 
@override int get hashCode { return Object.hash(object, usageBytes, projectId); } 
@override String toString() { return 'UsageVectorStoresResult(object: $object, usageBytes: $usageBytes, projectId: $projectId)'; } 
 }
