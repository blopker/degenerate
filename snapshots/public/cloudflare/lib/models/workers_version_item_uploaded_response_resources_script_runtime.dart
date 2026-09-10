// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_version_item_uploaded_response_resources_script_runtime_limits.dart';/// Usage model for the Worker invocations.
@immutable final class WorkersVersionItemUploadedResponseResourcesScriptRuntimeUsageModel {const WorkersVersionItemUploadedResponseResourcesScriptRuntimeUsageModel._(this.value);

factory WorkersVersionItemUploadedResponseResourcesScriptRuntimeUsageModel.fromJson(String json) {return switch (json) {
  'bundled' => bundled,
  'unbound' => unbound,
  'standard' => standard,
  _ => WorkersVersionItemUploadedResponseResourcesScriptRuntimeUsageModel._(json),
};}

static const WorkersVersionItemUploadedResponseResourcesScriptRuntimeUsageModel bundled = WorkersVersionItemUploadedResponseResourcesScriptRuntimeUsageModel._('bundled');

static const WorkersVersionItemUploadedResponseResourcesScriptRuntimeUsageModel unbound = WorkersVersionItemUploadedResponseResourcesScriptRuntimeUsageModel._('unbound');

static const WorkersVersionItemUploadedResponseResourcesScriptRuntimeUsageModel standard = WorkersVersionItemUploadedResponseResourcesScriptRuntimeUsageModel._('standard');

static const List<WorkersVersionItemUploadedResponseResourcesScriptRuntimeUsageModel> values = [bundled, unbound, standard];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersVersionItemUploadedResponseResourcesScriptRuntimeUsageModel && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'WorkersVersionItemUploadedResponseResourcesScriptRuntimeUsageModel($value)';}
}
/// Runtime configuration for the Worker.
@immutable final class WorkersVersionItemUploadedResponseResourcesScriptRuntime {const WorkersVersionItemUploadedResponseResourcesScriptRuntime({this.compatibilityDate, this.compatibilityFlags, this.limits, this.migrationTag, this.usageModel, });

factory WorkersVersionItemUploadedResponseResourcesScriptRuntime.fromJson(Map<String, dynamic> json) {return WorkersVersionItemUploadedResponseResourcesScriptRuntime(
  compatibilityDate: json['compatibility_date'] as String?,
  compatibilityFlags: (json['compatibility_flags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  limits: json['limits'] != null ? WorkersVersionItemUploadedResponseResourcesScriptRuntimeLimits.fromJson(json['limits'] as Map<String, dynamic>) : null,
  migrationTag: json['migration_tag'] as String?,
  usageModel: json['usage_model'] != null ? WorkersVersionItemUploadedResponseResourcesScriptRuntimeUsageModel.fromJson(json['usage_model'] as String) : null,
);}

/// Date indicating targeted support in the Workers runtime. Backwards incompatible fixes to the runtime following this date will not affect this Worker.
final String? compatibilityDate;

/// Flags that enable or disable certain features in the Workers runtime.
final List<String>? compatibilityFlags;

/// Resource limits for the Worker.
final WorkersVersionItemUploadedResponseResourcesScriptRuntimeLimits? limits;

/// The tag of the Durable Object migration that was most recently applied for this Worker.
final String? migrationTag;

/// Usage model for the Worker invocations.
final WorkersVersionItemUploadedResponseResourcesScriptRuntimeUsageModel? usageModel;

Map<String, dynamic> toJson() {return {
  'compatibility_date': ?compatibilityDate,
  'compatibility_flags': ?compatibilityFlags,
  if (limits != null) 'limits': limits?.toJson(),
  'migration_tag': ?migrationTag,
  if (usageModel != null) 'usage_model': usageModel?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'compatibility_date', 'compatibility_flags', 'limits', 'migration_tag', 'usage_model'}.contains(key));}
WorkersVersionItemUploadedResponseResourcesScriptRuntime copyWith({String? Function()? compatibilityDate, List<String>? Function()? compatibilityFlags, WorkersVersionItemUploadedResponseResourcesScriptRuntimeLimits? Function()? limits, String? Function()? migrationTag, WorkersVersionItemUploadedResponseResourcesScriptRuntimeUsageModel? Function()? usageModel, }) {return WorkersVersionItemUploadedResponseResourcesScriptRuntime(
  compatibilityDate: compatibilityDate != null ? compatibilityDate() : this.compatibilityDate,
  compatibilityFlags: compatibilityFlags != null ? compatibilityFlags() : this.compatibilityFlags,
  limits: limits != null ? limits() : this.limits,
  migrationTag: migrationTag != null ? migrationTag() : this.migrationTag,
  usageModel: usageModel != null ? usageModel() : this.usageModel,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is WorkersVersionItemUploadedResponseResourcesScriptRuntime &&
          compatibilityDate == other.compatibilityDate &&
          listEquals(compatibilityFlags, other.compatibilityFlags) &&
          limits == other.limits &&
          migrationTag == other.migrationTag &&
          usageModel == other.usageModel;}
@override int get hashCode {return Object.hash(compatibilityDate, Object.hashAll(compatibilityFlags ?? const []), limits, migrationTag, usageModel);}
@override String toString() {return 'WorkersVersionItemUploadedResponseResourcesScriptRuntime(compatibilityDate: $compatibilityDate, compatibilityFlags: $compatibilityFlags, limits: $limits, migrationTag: $migrationTag, usageModel: $usageModel)';}
}
