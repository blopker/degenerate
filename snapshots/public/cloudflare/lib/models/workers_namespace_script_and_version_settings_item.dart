// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_binding_item.dart';import 'workers_compatibility_date.dart';import 'workers_compatibility_flag.dart';import 'workers_limits.dart';import 'workers_logpush.dart';import 'workers_migration_tag_conditions.dart';import 'workers_multiple_step_migrations.dart';import 'workers_namespace_script_and_version_settings_item_migrations.dart';import 'workers_observability.dart';import 'workers_placement_info_no_status.dart';import 'workers_placement_info_no_status_smart.dart';import 'workers_placement_info_no_status_targeted.dart';import 'workers_placement_info_no_status_targeted2.dart';import 'workers_placement_info_no_status_targeted3.dart';import 'workers_placement_info_no_status_targeted4.dart';import 'workers_placement_info_no_status_variant2.dart';import 'workers_placement_info_no_status_variant3.dart';import 'workers_placement_info_no_status_variant4.dart';import 'workers_tag.dart';import 'workers_tail_consumers_script.dart';import 'workers_usage_model.dart';/// Script and version settings for Workers for Platforms namespace scripts. Same as script-and-version-settings-item but without annotations, which are not supported for namespace scripts.
/// 
@immutable final class WorkersNamespaceScriptAndVersionSettingsItem {const WorkersNamespaceScriptAndVersionSettingsItem({this.bindings, this.compatibilityDate, this.compatibilityFlags, this.limits, this.logpush, this.migrations, this.observability, this.placement, this.tags, this.tailConsumers, this.usageModel, });

factory WorkersNamespaceScriptAndVersionSettingsItem.fromJson(Map<String, dynamic> json) { return WorkersNamespaceScriptAndVersionSettingsItem(
  bindings: (json['bindings'] as List<dynamic>?)?.map((e) => WorkersBindingItem.fromJson(e as Map<String, dynamic>)).toList(),
  compatibilityDate: json['compatibility_date'] != null ? WorkersCompatibilityDate.fromJson(json['compatibility_date'] as String) : null,
  compatibilityFlags: (json['compatibility_flags'] as List<dynamic>?)?.map((e) => WorkersCompatibilityFlag.fromJson(e as String)).toList(),
  limits: json['limits'] != null ? WorkersLimits.fromJson(json['limits'] as Map<String, dynamic>) : null,
  logpush: json['logpush'] != null ? WorkersLogpush.fromJson(json['logpush'] as bool) : null,
  migrations: json['migrations'] != null ? OneOf2.parse(json['migrations'], fromA: (v) => WorkersMigrationTagConditions.fromJson(v as Map<String, dynamic>), fromB: (v) => WorkersMultipleStepMigrations.fromJson(v as Map<String, dynamic>),) : null,
  observability: json['observability'] != null ? WorkersObservability.fromJson(json['observability'] as Map<String, dynamic>) : null,
  placement: json['placement'] != null ? OneOf8.parse(json['placement'], fromA: (v) => WorkersPlacementInfoNoStatusSmart.fromJson(v as Map<String, dynamic>), fromB: (v) => WorkersPlacementInfoNoStatusVariant2.fromJson(v as Map<String, dynamic>), fromC: (v) => WorkersPlacementInfoNoStatusVariant3.fromJson(v as Map<String, dynamic>), fromD: (v) => WorkersPlacementInfoNoStatusVariant4.fromJson(v as Map<String, dynamic>), fromE: (v) => WorkersPlacementInfoNoStatusTargeted.fromJson(v as Map<String, dynamic>), fromF: (v) => WorkersPlacementInfoNoStatusTargeted2.fromJson(v as Map<String, dynamic>), fromG: (v) => WorkersPlacementInfoNoStatusTargeted3.fromJson(v as Map<String, dynamic>), fromH: (v) => WorkersPlacementInfoNoStatusTargeted4.fromJson(v as Map<String, dynamic>),) : null,
  tags: (json['tags'] as List<dynamic>?)?.map((e) => WorkersTag.fromJson(e as String)).toList(),
  tailConsumers: (json['tail_consumers'] as List<dynamic>?)?.map((e) => WorkersTailConsumersScript.fromJson(e as Map<String, dynamic>)).toList(),
  usageModel: json['usage_model'] != null ? WorkersUsageModel.fromJson(json['usage_model'] as String) : null,
); }

/// List of bindings attached to a Worker. You can find more about bindings on our docs: https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/#bindings.
final List<WorkersBindingItem>? bindings;

/// Date indicating targeted support in the Workers runtime. Backwards incompatible fixes to the runtime following this date will not affect this Worker.
final WorkersCompatibilityDate? compatibilityDate;

/// Flags that enable or disable certain features in the Workers runtime. Used to enable upcoming features or opt in or out of specific changes not included in a `compatibility_date`.
final List<WorkersCompatibilityFlag>? compatibilityFlags;

final WorkersLimits? limits;

/// Whether Logpush is turned on for the Worker.
final WorkersLogpush? logpush;

/// Migrations to apply for Durable Objects associated with this Worker.
/// 
final WorkersNamespaceScriptAndVersionSettingsItemMigrations? migrations;

final WorkersObservability? observability;

final WorkersPlacementInfoNoStatus? placement;

final List<WorkersTag>? tags;

final List<WorkersTailConsumersScript>? tailConsumers;

final WorkersUsageModel? usageModel;

Map<String, dynamic> toJson() { return {
  if (bindings != null) 'bindings': bindings?.map((e) => e.toJson()).toList(),
  if (compatibilityDate != null) 'compatibility_date': compatibilityDate?.toJson(),
  if (compatibilityFlags != null) 'compatibility_flags': compatibilityFlags?.map((e) => e.toJson()).toList(),
  if (limits != null) 'limits': limits?.toJson(),
  if (logpush != null) 'logpush': logpush?.toJson(),
  if (migrations != null) 'migrations': migrations?.toJson(),
  if (observability != null) 'observability': observability?.toJson(),
  if (placement != null) 'placement': placement?.toJson(),
  if (tags != null) 'tags': tags?.map((e) => e.toJson()).toList(),
  if (tailConsumers != null) 'tail_consumers': tailConsumers?.map((e) => e.toJson()).toList(),
  if (usageModel != null) 'usage_model': usageModel?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bindings', 'compatibility_date', 'compatibility_flags', 'limits', 'logpush', 'migrations', 'observability', 'placement', 'tags', 'tail_consumers', 'usage_model'}.contains(key)); } 
WorkersNamespaceScriptAndVersionSettingsItem copyWith({List<WorkersBindingItem> Function()? bindings, WorkersCompatibilityDate Function()? compatibilityDate, List<WorkersCompatibilityFlag> Function()? compatibilityFlags, WorkersLimits Function()? limits, WorkersLogpush Function()? logpush, WorkersNamespaceScriptAndVersionSettingsItemMigrations Function()? migrations, WorkersObservability Function()? observability, WorkersPlacementInfoNoStatus Function()? placement, List<WorkersTag>? Function()? tags, List<WorkersTailConsumersScript>? Function()? tailConsumers, WorkersUsageModel Function()? usageModel, }) { return WorkersNamespaceScriptAndVersionSettingsItem(
  bindings: bindings != null ? bindings() : this.bindings,
  compatibilityDate: compatibilityDate != null ? compatibilityDate() : this.compatibilityDate,
  compatibilityFlags: compatibilityFlags != null ? compatibilityFlags() : this.compatibilityFlags,
  limits: limits != null ? limits() : this.limits,
  logpush: logpush != null ? logpush() : this.logpush,
  migrations: migrations != null ? migrations() : this.migrations,
  observability: observability != null ? observability() : this.observability,
  placement: placement != null ? placement() : this.placement,
  tags: tags != null ? tags() : this.tags,
  tailConsumers: tailConsumers != null ? tailConsumers() : this.tailConsumers,
  usageModel: usageModel != null ? usageModel() : this.usageModel,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersNamespaceScriptAndVersionSettingsItem &&
          listEquals(bindings, other.bindings) &&
          compatibilityDate == other.compatibilityDate &&
          listEquals(compatibilityFlags, other.compatibilityFlags) &&
          limits == other.limits &&
          logpush == other.logpush &&
          migrations == other.migrations &&
          observability == other.observability &&
          placement == other.placement &&
          listEquals(tags, other.tags) &&
          listEquals(tailConsumers, other.tailConsumers) &&
          usageModel == other.usageModel; } 
@override int get hashCode { return Object.hash(Object.hashAll(bindings ?? const []), compatibilityDate, Object.hashAll(compatibilityFlags ?? const []), limits, logpush, migrations, observability, placement, Object.hashAll(tags ?? const []), Object.hashAll(tailConsumers ?? const []), usageModel); } 
@override String toString() { return 'WorkersNamespaceScriptAndVersionSettingsItem(bindings: $bindings, compatibilityDate: $compatibilityDate, compatibilityFlags: $compatibilityFlags, limits: $limits, logpush: $logpush, migrations: $migrations, observability: $observability, placement: $placement, tags: $tags, tailConsumers: $tailConsumers, usageModel: $usageModel)'; } 
 }
