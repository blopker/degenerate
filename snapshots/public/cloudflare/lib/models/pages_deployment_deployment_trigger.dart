// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pages_deployment_deployment_trigger_metadata.dart';/// What caused the deployment.
@immutable final class PagesDeploymentDeploymentTriggerType {const PagesDeploymentDeploymentTriggerType._(this.value);

factory PagesDeploymentDeploymentTriggerType.fromJson(String json) { return switch (json) {
  'github:push' => githubpush,
  'ad_hoc' => adHoc,
  'deploy_hook' => deployHook,
  _ => PagesDeploymentDeploymentTriggerType._(json),
}; }

static const PagesDeploymentDeploymentTriggerType githubpush = PagesDeploymentDeploymentTriggerType._('github:push');

static const PagesDeploymentDeploymentTriggerType adHoc = PagesDeploymentDeploymentTriggerType._('ad_hoc');

static const PagesDeploymentDeploymentTriggerType deployHook = PagesDeploymentDeploymentTriggerType._('deploy_hook');

static const List<PagesDeploymentDeploymentTriggerType> values = [githubpush, adHoc, deployHook];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PagesDeploymentDeploymentTriggerType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PagesDeploymentDeploymentTriggerType($value)'; } 
 }
/// Info about what caused the deployment.
@immutable final class PagesDeploymentDeploymentTrigger {const PagesDeploymentDeploymentTrigger({required this.metadata, required this.type, });

factory PagesDeploymentDeploymentTrigger.fromJson(Map<String, dynamic> json) { return PagesDeploymentDeploymentTrigger(
  metadata: PagesDeploymentDeploymentTriggerMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
  type: PagesDeploymentDeploymentTriggerType.fromJson(json['type'] as String),
); }

/// Additional info about the trigger.
final PagesDeploymentDeploymentTriggerMetadata metadata;

/// What caused the deployment.
final PagesDeploymentDeploymentTriggerType type;

Map<String, dynamic> toJson() { return {
  'metadata': metadata.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('metadata') &&
      json.containsKey('type'); } 
PagesDeploymentDeploymentTrigger copyWith({PagesDeploymentDeploymentTriggerMetadata? metadata, PagesDeploymentDeploymentTriggerType? type, }) { return PagesDeploymentDeploymentTrigger(
  metadata: metadata ?? this.metadata,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesDeploymentDeploymentTrigger &&
          metadata == other.metadata &&
          type == other.type; } 
@override int get hashCode { return Object.hash(metadata, type); } 
@override String toString() { return 'PagesDeploymentDeploymentTrigger(metadata: $metadata, type: $type)'; } 
 }
