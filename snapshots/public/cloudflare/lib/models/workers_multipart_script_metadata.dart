// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_assets.dart';import 'workers_binding_item.dart';import 'workers_compatibility_date.dart';import 'workers_compatibility_flag.dart';import 'workers_limits.dart';import 'workers_logpush.dart';import 'workers_migration_tag_conditions.dart';import 'workers_multipart_script_metadata_migrations.dart';import 'workers_observability.dart';import 'workers_placement_info.dart';import 'workers_placement_info_smart.dart';import 'workers_placement_info_targeted.dart';import 'workers_placement_info_targeted2.dart';import 'workers_placement_info_targeted3.dart';import 'workers_placement_info_targeted4.dart';import 'workers_placement_info_variant2.dart';import 'workers_placement_info_variant3.dart';import 'workers_placement_info_variant4.dart';import 'workers_tail_consumers_script.dart';import 'workers_usage_model.dart';/// JSON-encoded metadata about the uploaded parts and Worker configuration.
final class WorkersMultipartScriptMetadata {const WorkersMultipartScriptMetadata({this.assets, this.bindings, this.bodyPart, this.compatibilityDate, this.compatibilityFlags, this.keepAssets, this.keepBindings, this.limits, this.logpush, this.mainModule, this.migrations, this.observability, this.placement, this.tags, this.tailConsumers, this.usageModel, });

factory WorkersMultipartScriptMetadata.fromJson(Map<String, dynamic> json) { return WorkersMultipartScriptMetadata(
  assets: json['assets'] != null ? WorkersAssets.fromJson(json['assets'] as Map<String, dynamic>) : null,
  bindings: (json['bindings'] as List<dynamic>?)?.map((e) => WorkersBindingItem.fromJson(e as Map<String, dynamic>)).toList(),
  bodyPart: json['body_part'] as String?,
  compatibilityDate: json['compatibility_date'] != null ? WorkersCompatibilityDate.fromJson(json['compatibility_date'] as String) : null,
  compatibilityFlags: (json['compatibility_flags'] as List<dynamic>?)?.map((e) => WorkersCompatibilityFlag.fromJson(e as String)).toList(),
  keepAssets: json['keep_assets'] as bool?,
  keepBindings: (json['keep_bindings'] as List<dynamic>?)?.map((e) => e as String).toList(),
  limits: json['limits'] != null ? WorkersLimits.fromJson(json['limits'] as Map<String, dynamic>) : null,
  logpush: json['logpush'] != null ? WorkersLogpush.fromJson(json['logpush'] as bool) : null,
  mainModule: json['main_module'] as String?,
  migrations: json['migrations'] != null ? OneOf2.parse(json['migrations'], fromA: (v) => WorkersMigrationTagConditions.fromJson(v as Map<String, dynamic>), fromB: (v) => WorkersMigrationTagConditions.fromJson(v as Map<String, dynamic>),) : null,
  observability: json['observability'] != null ? WorkersObservability.fromJson(json['observability'] as Map<String, dynamic>) : null,
  placement: json['placement'] != null ? OneOf8.parse(json['placement'], fromA: (v) => WorkersPlacementInfoSmart.fromJson(v as Map<String, dynamic>), fromB: (v) => WorkersPlacementInfoVariant2.fromJson(v as Map<String, dynamic>), fromC: (v) => WorkersPlacementInfoVariant3.fromJson(v as Map<String, dynamic>), fromD: (v) => WorkersPlacementInfoVariant4.fromJson(v as Map<String, dynamic>), fromE: (v) => WorkersPlacementInfoTargeted.fromJson(v as Map<String, dynamic>), fromF: (v) => WorkersPlacementInfoTargeted2.fromJson(v as Map<String, dynamic>), fromG: (v) => WorkersPlacementInfoTargeted3.fromJson(v as Map<String, dynamic>), fromH: (v) => WorkersPlacementInfoTargeted4.fromJson(v as Map<String, dynamic>),) : null,
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  tailConsumers: (json['tail_consumers'] as List<dynamic>?)?.map((e) => WorkersTailConsumersScript.fromJson(e as Map<String, dynamic>)).toList(),
  usageModel: json['usage_model'] != null ? WorkersUsageModel.fromJson(json['usage_model'] as String) : null,
); }

final WorkersAssets? assets;

/// List of bindings attached to a Worker. You can find more about bindings on our docs: https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/#bindings.
final List<WorkersBindingItem>? bindings;

/// Name of the uploaded file that contains the script (e.g. the file adding a listener to the `fetch` event). Indicates a `service worker syntax` Worker.
final String? bodyPart;

/// Date indicating targeted support in the Workers runtime. Backwards incompatible fixes to the runtime following this date will not affect this Worker.
final WorkersCompatibilityDate? compatibilityDate;

/// Flags that enable or disable certain features in the Workers runtime. Used to enable upcoming features or opt in or out of specific changes not included in a `compatibility_date`.
final List<WorkersCompatibilityFlag>? compatibilityFlags;

/// Retain assets which exist for a previously uploaded Worker version; used in lieu of providing a completion token.
final bool? keepAssets;

/// List of binding types to keep from previous_upload.
final List<String>? keepBindings;

final WorkersLimits? limits;

/// Whether Logpush is turned on for the Worker.
final WorkersLogpush? logpush;

/// Name of the uploaded file that contains the main module (e.g. the file exporting a `fetch` handler). Indicates a `module syntax` Worker.
final String? mainModule;

/// Migrations to apply for Durable Objects associated with this Worker.
final WorkersMultipartScriptMetadataMigrations? migrations;

final WorkersObservability? observability;

final WorkersPlacementInfo? placement;

/// List of strings to use as tags for this Worker.
final List<String>? tags;

final List<WorkersTailConsumersScript>? tailConsumers;

final WorkersUsageModel? usageModel;

Map<String, dynamic> toJson() { return {
  if (assets != null) 'assets': assets?.toJson(),
  if (bindings != null) 'bindings': bindings?.map((e) => e.toJson()).toList(),
  'body_part': ?bodyPart,
  if (compatibilityDate != null) 'compatibility_date': compatibilityDate?.toJson(),
  if (compatibilityFlags != null) 'compatibility_flags': compatibilityFlags?.map((e) => e.toJson()).toList(),
  'keep_assets': ?keepAssets,
  'keep_bindings': ?keepBindings,
  if (limits != null) 'limits': limits?.toJson(),
  if (logpush != null) 'logpush': logpush?.toJson(),
  'main_module': ?mainModule,
  if (migrations != null) 'migrations': migrations?.toJson(),
  if (observability != null) 'observability': observability?.toJson(),
  if (placement != null) 'placement': placement?.toJson(),
  'tags': ?tags,
  if (tailConsumers != null) 'tail_consumers': tailConsumers?.map((e) => e.toJson()).toList(),
  if (usageModel != null) 'usage_model': usageModel?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
WorkersMultipartScriptMetadata copyWith({WorkersAssets Function()? assets, List<WorkersBindingItem> Function()? bindings, String Function()? bodyPart, WorkersCompatibilityDate Function()? compatibilityDate, List<WorkersCompatibilityFlag> Function()? compatibilityFlags, bool Function()? keepAssets, List<String> Function()? keepBindings, WorkersLimits Function()? limits, WorkersLogpush Function()? logpush, String Function()? mainModule, WorkersMultipartScriptMetadataMigrations Function()? migrations, WorkersObservability Function()? observability, WorkersPlacementInfo Function()? placement, List<String> Function()? tags, List<WorkersTailConsumersScript>? Function()? tailConsumers, WorkersUsageModel Function()? usageModel, }) { return WorkersMultipartScriptMetadata(
  assets: assets != null ? assets() : this.assets,
  bindings: bindings != null ? bindings() : this.bindings,
  bodyPart: bodyPart != null ? bodyPart() : this.bodyPart,
  compatibilityDate: compatibilityDate != null ? compatibilityDate() : this.compatibilityDate,
  compatibilityFlags: compatibilityFlags != null ? compatibilityFlags() : this.compatibilityFlags,
  keepAssets: keepAssets != null ? keepAssets() : this.keepAssets,
  keepBindings: keepBindings != null ? keepBindings() : this.keepBindings,
  limits: limits != null ? limits() : this.limits,
  logpush: logpush != null ? logpush() : this.logpush,
  mainModule: mainModule != null ? mainModule() : this.mainModule,
  migrations: migrations != null ? migrations() : this.migrations,
  observability: observability != null ? observability() : this.observability,
  placement: placement != null ? placement() : this.placement,
  tags: tags != null ? tags() : this.tags,
  tailConsumers: tailConsumers != null ? tailConsumers() : this.tailConsumers,
  usageModel: usageModel != null ? usageModel() : this.usageModel,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersMultipartScriptMetadata &&
          assets == other.assets &&
          listEquals(bindings, other.bindings) &&
          bodyPart == other.bodyPart &&
          compatibilityDate == other.compatibilityDate &&
          listEquals(compatibilityFlags, other.compatibilityFlags) &&
          keepAssets == other.keepAssets &&
          listEquals(keepBindings, other.keepBindings) &&
          limits == other.limits &&
          logpush == other.logpush &&
          mainModule == other.mainModule &&
          migrations == other.migrations &&
          observability == other.observability &&
          placement == other.placement &&
          listEquals(tags, other.tags) &&
          listEquals(tailConsumers, other.tailConsumers) &&
          usageModel == other.usageModel; } 
@override int get hashCode { return Object.hash(assets, Object.hashAll(bindings ?? const []), bodyPart, compatibilityDate, Object.hashAll(compatibilityFlags ?? const []), keepAssets, Object.hashAll(keepBindings ?? const []), limits, logpush, mainModule, migrations, observability, placement, Object.hashAll(tags ?? const []), Object.hashAll(tailConsumers ?? const []), usageModel); } 
@override String toString() { return 'WorkersMultipartScriptMetadata(assets: $assets, bindings: $bindings, bodyPart: $bodyPart, compatibilityDate: $compatibilityDate, compatibilityFlags: $compatibilityFlags, keepAssets: $keepAssets, keepBindings: $keepBindings, limits: $limits, logpush: $logpush, mainModule: $mainModule, migrations: $migrations, observability: $observability, placement: $placement, tags: $tags, tailConsumers: $tailConsumers, usageModel: $usageModel)'; } 
 }
