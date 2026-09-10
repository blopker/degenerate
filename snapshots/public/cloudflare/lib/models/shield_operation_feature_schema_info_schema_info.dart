// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_operation_feature_schema_info_schema_info_active_schema.dart';/// Action taken on requests failing validation.
@immutable final class ShieldOperationFeatureSchemaInfoSchemaInfoMitigationAction {const ShieldOperationFeatureSchemaInfoSchemaInfoMitigationAction._(this.value);

factory ShieldOperationFeatureSchemaInfoSchemaInfoMitigationAction.fromJson(String json) { return switch (json) {
  'none' => none,
  'log' => log,
  'block' => block,
  _ => ShieldOperationFeatureSchemaInfoSchemaInfoMitigationAction._(json),
}; }

static const ShieldOperationFeatureSchemaInfoSchemaInfoMitigationAction none = ShieldOperationFeatureSchemaInfoSchemaInfoMitigationAction._('none');

static const ShieldOperationFeatureSchemaInfoSchemaInfoMitigationAction log = ShieldOperationFeatureSchemaInfoSchemaInfoMitigationAction._('log');

static const ShieldOperationFeatureSchemaInfoSchemaInfoMitigationAction block = ShieldOperationFeatureSchemaInfoSchemaInfoMitigationAction._('block');

static const List<ShieldOperationFeatureSchemaInfoSchemaInfoMitigationAction> values = [none, log, block];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ShieldOperationFeatureSchemaInfoSchemaInfoMitigationAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ShieldOperationFeatureSchemaInfoSchemaInfoMitigationAction($value)'; } 
 }
@immutable final class ShieldOperationFeatureSchemaInfoSchemaInfo {const ShieldOperationFeatureSchemaInfoSchemaInfo({this.activeSchema, this.learnedAvailable, this.mitigationAction = const Omittable.absent(), });

factory ShieldOperationFeatureSchemaInfoSchemaInfo.fromJson(Map<String, dynamic> json) { return ShieldOperationFeatureSchemaInfoSchemaInfo(
  activeSchema: json['active_schema'] != null ? ShieldOperationFeatureSchemaInfoSchemaInfoActiveSchema.fromJson(json['active_schema'] as Map<String, dynamic>) : null,
  learnedAvailable: json['learned_available'] as bool?,
  mitigationAction: json.containsKey('mitigation_action') ? Omittable(json['mitigation_action'] != null ? ShieldOperationFeatureSchemaInfoSchemaInfoMitigationAction.fromJson(json['mitigation_action'] as String) : null) : const Omittable.absent(),
); }

/// Schema active on endpoint.
final ShieldOperationFeatureSchemaInfoSchemaInfoActiveSchema? activeSchema;

/// True if a Cloudflare-provided learned schema is available for this endpoint.
final bool? learnedAvailable;

/// Action taken on requests failing validation.
final Omittable<ShieldOperationFeatureSchemaInfoSchemaInfoMitigationAction?> mitigationAction;

Map<String, dynamic> toJson() { return {
  if (activeSchema != null) 'active_schema': activeSchema?.toJson(),
  'learned_available': ?learnedAvailable,
  if (mitigationAction.isPresent) 'mitigation_action': mitigationAction.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'active_schema', 'learned_available', 'mitigation_action'}.contains(key)); } 
ShieldOperationFeatureSchemaInfoSchemaInfo copyWith({ShieldOperationFeatureSchemaInfoSchemaInfoActiveSchema? Function()? activeSchema, bool? Function()? learnedAvailable, Omittable<ShieldOperationFeatureSchemaInfoSchemaInfoMitigationAction?>? mitigationAction, }) { return ShieldOperationFeatureSchemaInfoSchemaInfo(
  activeSchema: activeSchema != null ? activeSchema() : this.activeSchema,
  learnedAvailable: learnedAvailable != null ? learnedAvailable() : this.learnedAvailable,
  mitigationAction: mitigationAction ?? this.mitigationAction,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldOperationFeatureSchemaInfoSchemaInfo &&
          activeSchema == other.activeSchema &&
          learnedAvailable == other.learnedAvailable &&
          mitigationAction == other.mitigationAction; } 
@override int get hashCode { return Object.hash(activeSchema, learnedAvailable, mitigationAction); } 
@override String toString() { return 'ShieldOperationFeatureSchemaInfoSchemaInfo(activeSchema: $activeSchema, learnedAvailable: $learnedAvailable, mitigationAction: $mitigationAction)'; } 
 }
