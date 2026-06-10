// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_version_item_uploaded_resources_script_runtime_limits.dart';/// Usage model for the Worker invocations.
@immutable final class WorkersVersionItemUploadedResourcesScriptRuntimeUsageModel {const WorkersVersionItemUploadedResourcesScriptRuntimeUsageModel._(this.value);

factory WorkersVersionItemUploadedResourcesScriptRuntimeUsageModel.fromJson(String json) { return switch (json) {
  'bundled' => bundled,
  'unbound' => unbound,
  'standard' => standard,
  _ => WorkersVersionItemUploadedResourcesScriptRuntimeUsageModel._(json),
}; }

static const WorkersVersionItemUploadedResourcesScriptRuntimeUsageModel bundled = WorkersVersionItemUploadedResourcesScriptRuntimeUsageModel._('bundled');

static const WorkersVersionItemUploadedResourcesScriptRuntimeUsageModel unbound = WorkersVersionItemUploadedResourcesScriptRuntimeUsageModel._('unbound');

static const WorkersVersionItemUploadedResourcesScriptRuntimeUsageModel standard = WorkersVersionItemUploadedResourcesScriptRuntimeUsageModel._('standard');

static const List<WorkersVersionItemUploadedResourcesScriptRuntimeUsageModel> values = [bundled, unbound, standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersVersionItemUploadedResourcesScriptRuntimeUsageModel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersVersionItemUploadedResourcesScriptRuntimeUsageModel($value)'; } 
 }
/// Runtime configuration for the Worker.
@immutable final class WorkersVersionItemUploadedResourcesScriptRuntime {const WorkersVersionItemUploadedResourcesScriptRuntime({this.compatibilityDate, this.compatibilityFlags, this.limits, this.migrationTag, this.usageModel, });

factory WorkersVersionItemUploadedResourcesScriptRuntime.fromJson(Map<String, dynamic> json) { return WorkersVersionItemUploadedResourcesScriptRuntime(
  compatibilityDate: json['compatibility_date'] as String?,
  compatibilityFlags: (json['compatibility_flags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  limits: json['limits'] != null ? WorkersVersionItemUploadedResourcesScriptRuntimeLimits.fromJson(json['limits'] as Map<String, dynamic>) : null,
  migrationTag: json['migration_tag'] as String?,
  usageModel: json['usage_model'] != null ? WorkersVersionItemUploadedResourcesScriptRuntimeUsageModel.fromJson(json['usage_model'] as String) : null,
); }

/// Date indicating targeted support in the Workers runtime. Backwards incompatible fixes to the runtime following this date will not affect this Worker.
final String? compatibilityDate;

/// Flags that enable or disable certain features in the Workers runtime.
final List<String>? compatibilityFlags;

/// Resource limits for the Worker.
final WorkersVersionItemUploadedResourcesScriptRuntimeLimits? limits;

/// The tag of the Durable Object migration that was most recently applied for this Worker.
final String? migrationTag;

/// Usage model for the Worker invocations.
final WorkersVersionItemUploadedResourcesScriptRuntimeUsageModel? usageModel;

Map<String, dynamic> toJson() { return {
  'compatibility_date': ?compatibilityDate,
  'compatibility_flags': ?compatibilityFlags,
  if (limits != null) 'limits': limits?.toJson(),
  'migration_tag': ?migrationTag,
  if (usageModel != null) 'usage_model': usageModel?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'compatibility_date', 'compatibility_flags', 'limits', 'migration_tag', 'usage_model'}.contains(key)); } 
WorkersVersionItemUploadedResourcesScriptRuntime copyWith({String Function()? compatibilityDate, List<String> Function()? compatibilityFlags, WorkersVersionItemUploadedResourcesScriptRuntimeLimits Function()? limits, String Function()? migrationTag, WorkersVersionItemUploadedResourcesScriptRuntimeUsageModel Function()? usageModel, }) { return WorkersVersionItemUploadedResourcesScriptRuntime(
  compatibilityDate: compatibilityDate != null ? compatibilityDate() : this.compatibilityDate,
  compatibilityFlags: compatibilityFlags != null ? compatibilityFlags() : this.compatibilityFlags,
  limits: limits != null ? limits() : this.limits,
  migrationTag: migrationTag != null ? migrationTag() : this.migrationTag,
  usageModel: usageModel != null ? usageModel() : this.usageModel,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersVersionItemUploadedResourcesScriptRuntime &&
          compatibilityDate == other.compatibilityDate &&
          listEquals(compatibilityFlags, other.compatibilityFlags) &&
          limits == other.limits &&
          migrationTag == other.migrationTag &&
          usageModel == other.usageModel; } 
@override int get hashCode { return Object.hash(compatibilityDate, Object.hashAll(compatibilityFlags ?? const []), limits, migrationTag, usageModel); } 
@override String toString() { return 'WorkersVersionItemUploadedResourcesScriptRuntime(compatibilityDate: $compatibilityDate, compatibilityFlags: $compatibilityFlags, limits: $limits, migrationTag: $migrationTag, usageModel: $usageModel)'; } 
 }
