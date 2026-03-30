// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_compatibility_date.dart';import 'workers_compatibility_flag.dart';import 'workers_created_on.dart';import 'workers_etag.dart';import 'workers_has_assets.dart';import 'workers_has_modules.dart';import 'workers_logpush.dart';import 'workers_modified_on.dart';import 'workers_observability.dart';import 'workers_placement_info.dart';import 'workers_placement_info_smart.dart';import 'workers_placement_info_targeted.dart';import 'workers_placement_info_targeted2.dart';import 'workers_placement_info_targeted3.dart';import 'workers_placement_info_targeted4.dart';import 'workers_placement_info_variant2.dart';import 'workers_placement_info_variant3.dart';import 'workers_placement_info_variant4.dart';import 'workers_placement_mode.dart';import 'workers_placement_status.dart';import 'workers_script_response_upload_named_handlers.dart';import 'workers_tag.dart';import 'workers_tail_consumers_script.dart';import 'workers_usage_model.dart';final class WorkersScriptResponseUpload {const WorkersScriptResponseUpload({this.compatibilityDate, this.compatibilityFlags, this.createdOn, this.etag, this.handlers, this.hasAssets, this.hasModules, this.id, this.lastDeployedFrom, this.logpush, this.migrationTag, this.modifiedOn, this.namedHandlers, this.observability, this.placement, this.placementMode, this.placementStatus, this.tag, this.tags, this.tailConsumers, this.usageModel, this.entryPoint, required this.startupTimeMs, });

factory WorkersScriptResponseUpload.fromJson(Map<String, dynamic> json) { return WorkersScriptResponseUpload(
  compatibilityDate: json['compatibility_date'] != null ? WorkersCompatibilityDate.fromJson(json['compatibility_date'] as String) : null,
  compatibilityFlags: (json['compatibility_flags'] as List<dynamic>?)?.map((e) => WorkersCompatibilityFlag.fromJson(e as String)).toList(),
  createdOn: json['created_on'] != null ? WorkersCreatedOn.fromJson(json['created_on'] as String) : null,
  etag: json['etag'] != null ? WorkersEtag.fromJson(json['etag'] as String) : null,
  handlers: (json['handlers'] as List<dynamic>?)?.map((e) => e as String).toList(),
  hasAssets: json['has_assets'] != null ? WorkersHasAssets.fromJson(json['has_assets'] as bool) : null,
  hasModules: json['has_modules'] != null ? WorkersHasModules.fromJson(json['has_modules'] as bool) : null,
  id: json['id'] as String?,
  lastDeployedFrom: json['last_deployed_from'] as String?,
  logpush: json['logpush'] != null ? WorkersLogpush.fromJson(json['logpush'] as bool) : null,
  migrationTag: json['migration_tag'] as String?,
  modifiedOn: json['modified_on'] != null ? WorkersModifiedOn.fromJson(json['modified_on'] as String) : null,
  namedHandlers: (json['named_handlers'] as List<dynamic>?)?.map((e) => WorkersScriptResponseUploadNamedHandlers.fromJson(e as Map<String, dynamic>)).toList(),
  observability: json['observability'] != null ? WorkersObservability.fromJson(json['observability'] as Map<String, dynamic>) : null,
  placement: json['placement'] != null ? OneOf8.parse(json['placement'], fromA: (v) => WorkersPlacementInfoSmart.fromJson(v as Map<String, dynamic>), fromB: (v) => WorkersPlacementInfoVariant2.fromJson(v as Map<String, dynamic>), fromC: (v) => WorkersPlacementInfoVariant3.fromJson(v as Map<String, dynamic>), fromD: (v) => WorkersPlacementInfoVariant4.fromJson(v as Map<String, dynamic>), fromE: (v) => WorkersPlacementInfoTargeted.fromJson(v as Map<String, dynamic>), fromF: (v) => WorkersPlacementInfoTargeted2.fromJson(v as Map<String, dynamic>), fromG: (v) => WorkersPlacementInfoTargeted3.fromJson(v as Map<String, dynamic>), fromH: (v) => WorkersPlacementInfoTargeted4.fromJson(v as Map<String, dynamic>),) : null,
  placementMode: json['placement_mode'] != null ? WorkersPlacementMode.fromJson(json['placement_mode'] as String) : null,
  placementStatus: json['placement_status'] != null ? WorkersPlacementStatus.fromJson(json['placement_status'] as String) : null,
  tag: json['tag'] as String?,
  tags: (json['tags'] as List<dynamic>?)?.map((e) => WorkersTag.fromJson(e as String)).toList(),
  tailConsumers: (json['tail_consumers'] as List<dynamic>?)?.map((e) => WorkersTailConsumersScript.fromJson(e as Map<String, dynamic>)).toList(),
  usageModel: json['usage_model'] != null ? WorkersUsageModel.fromJson(json['usage_model'] as String) : null,
  entryPoint: json['entry_point'] as String?,
  startupTimeMs: (json['startup_time_ms'] as num).toInt(),
); }

/// Date indicating targeted support in the Workers runtime. Backwards incompatible fixes to the runtime following this date will not affect this Worker.
final WorkersCompatibilityDate? compatibilityDate;

/// Flags that enable or disable certain features in the Workers runtime. Used to enable upcoming features or opt in or out of specific changes not included in a `compatibility_date`.
final List<WorkersCompatibilityFlag>? compatibilityFlags;

/// When the script was created.
final WorkersCreatedOn? createdOn;

/// Hashed script content, can be used in a If-None-Match header when updating.
final WorkersEtag? etag;

/// The names of handlers exported as part of the default export.
final List<String>? handlers;

/// Whether a Worker contains assets.
final WorkersHasAssets? hasAssets;

/// Whether a Worker contains modules.
final WorkersHasModules? hasModules;

/// The name used to identify the script.
final String? id;

/// The client most recently used to deploy this Worker.
final String? lastDeployedFrom;

/// Whether Logpush is turned on for the Worker.
final WorkersLogpush? logpush;

/// The tag of the Durable Object migration that was most recently applied for this Worker.
final String? migrationTag;

/// When the script was last modified.
final WorkersModifiedOn? modifiedOn;

/// Named exports, such as Durable Object class implementations and named entrypoints.
final List<WorkersScriptResponseUploadNamedHandlers>? namedHandlers;

final WorkersObservability? observability;

final WorkersPlacementInfo? placement;

/// Configuration for [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement). Specify mode='smart' for Smart Placement, or one of region/hostname/host.
final WorkersPlacementMode? placementMode;

/// Status of [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
final WorkersPlacementStatus? placementStatus;

/// The immutable ID of the script.
final String? tag;

final List<WorkersTag>? tags;

final List<WorkersTailConsumersScript>? tailConsumers;

final WorkersUsageModel? usageModel;

/// The entry point for the script.
final String? entryPoint;

final int startupTimeMs;

Map<String, dynamic> toJson() { return {
  if (compatibilityDate != null) 'compatibility_date': compatibilityDate?.toJson(),
  if (compatibilityFlags != null) 'compatibility_flags': compatibilityFlags?.map((e) => e.toJson()).toList(),
  if (createdOn != null) 'created_on': createdOn?.toJson(),
  if (etag != null) 'etag': etag?.toJson(),
  'handlers': ?handlers,
  if (hasAssets != null) 'has_assets': hasAssets?.toJson(),
  if (hasModules != null) 'has_modules': hasModules?.toJson(),
  'id': ?id,
  'last_deployed_from': ?lastDeployedFrom,
  if (logpush != null) 'logpush': logpush?.toJson(),
  'migration_tag': ?migrationTag,
  if (modifiedOn != null) 'modified_on': modifiedOn?.toJson(),
  if (namedHandlers != null) 'named_handlers': namedHandlers?.map((e) => e.toJson()).toList(),
  if (observability != null) 'observability': observability?.toJson(),
  if (placement != null) 'placement': placement?.toJson(),
  if (placementMode != null) 'placement_mode': placementMode?.toJson(),
  if (placementStatus != null) 'placement_status': placementStatus?.toJson(),
  'tag': ?tag,
  if (tags != null) 'tags': tags?.map((e) => e.toJson()).toList(),
  if (tailConsumers != null) 'tail_consumers': tailConsumers?.map((e) => e.toJson()).toList(),
  if (usageModel != null) 'usage_model': usageModel?.toJson(),
  'entry_point': ?entryPoint,
  'startup_time_ms': startupTimeMs,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('startup_time_ms') && json['startup_time_ms'] is num; } 
WorkersScriptResponseUpload copyWith({WorkersCompatibilityDate Function()? compatibilityDate, List<WorkersCompatibilityFlag> Function()? compatibilityFlags, WorkersCreatedOn Function()? createdOn, WorkersEtag Function()? etag, List<String> Function()? handlers, WorkersHasAssets Function()? hasAssets, WorkersHasModules Function()? hasModules, String Function()? id, String Function()? lastDeployedFrom, WorkersLogpush Function()? logpush, String Function()? migrationTag, WorkersModifiedOn Function()? modifiedOn, List<WorkersScriptResponseUploadNamedHandlers> Function()? namedHandlers, WorkersObservability Function()? observability, WorkersPlacementInfo Function()? placement, WorkersPlacementMode Function()? placementMode, WorkersPlacementStatus Function()? placementStatus, String Function()? tag, List<WorkersTag>? Function()? tags, List<WorkersTailConsumersScript>? Function()? tailConsumers, WorkersUsageModel Function()? usageModel, String Function()? entryPoint, int? startupTimeMs, }) { return WorkersScriptResponseUpload(
  compatibilityDate: compatibilityDate != null ? compatibilityDate() : this.compatibilityDate,
  compatibilityFlags: compatibilityFlags != null ? compatibilityFlags() : this.compatibilityFlags,
  createdOn: createdOn != null ? createdOn() : this.createdOn,
  etag: etag != null ? etag() : this.etag,
  handlers: handlers != null ? handlers() : this.handlers,
  hasAssets: hasAssets != null ? hasAssets() : this.hasAssets,
  hasModules: hasModules != null ? hasModules() : this.hasModules,
  id: id != null ? id() : this.id,
  lastDeployedFrom: lastDeployedFrom != null ? lastDeployedFrom() : this.lastDeployedFrom,
  logpush: logpush != null ? logpush() : this.logpush,
  migrationTag: migrationTag != null ? migrationTag() : this.migrationTag,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  namedHandlers: namedHandlers != null ? namedHandlers() : this.namedHandlers,
  observability: observability != null ? observability() : this.observability,
  placement: placement != null ? placement() : this.placement,
  placementMode: placementMode != null ? placementMode() : this.placementMode,
  placementStatus: placementStatus != null ? placementStatus() : this.placementStatus,
  tag: tag != null ? tag() : this.tag,
  tags: tags != null ? tags() : this.tags,
  tailConsumers: tailConsumers != null ? tailConsumers() : this.tailConsumers,
  usageModel: usageModel != null ? usageModel() : this.usageModel,
  entryPoint: entryPoint != null ? entryPoint() : this.entryPoint,
  startupTimeMs: startupTimeMs ?? this.startupTimeMs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersScriptResponseUpload &&
          compatibilityDate == other.compatibilityDate &&
          listEquals(compatibilityFlags, other.compatibilityFlags) &&
          createdOn == other.createdOn &&
          etag == other.etag &&
          listEquals(handlers, other.handlers) &&
          hasAssets == other.hasAssets &&
          hasModules == other.hasModules &&
          id == other.id &&
          lastDeployedFrom == other.lastDeployedFrom &&
          logpush == other.logpush &&
          migrationTag == other.migrationTag &&
          modifiedOn == other.modifiedOn &&
          listEquals(namedHandlers, other.namedHandlers) &&
          observability == other.observability &&
          placement == other.placement &&
          placementMode == other.placementMode &&
          placementStatus == other.placementStatus &&
          tag == other.tag &&
          listEquals(tags, other.tags) &&
          listEquals(tailConsumers, other.tailConsumers) &&
          usageModel == other.usageModel &&
          entryPoint == other.entryPoint &&
          startupTimeMs == other.startupTimeMs; } 
@override int get hashCode { return Object.hashAll([compatibilityDate, Object.hashAll(compatibilityFlags ?? const []), createdOn, etag, Object.hashAll(handlers ?? const []), hasAssets, hasModules, id, lastDeployedFrom, logpush, migrationTag, modifiedOn, Object.hashAll(namedHandlers ?? const []), observability, placement, placementMode, placementStatus, tag, Object.hashAll(tags ?? const []), Object.hashAll(tailConsumers ?? const []), usageModel, entryPoint, startupTimeMs]); } 
@override String toString() { return 'WorkersScriptResponseUpload(compatibilityDate: $compatibilityDate, compatibilityFlags: $compatibilityFlags, createdOn: $createdOn, etag: $etag, handlers: $handlers, hasAssets: $hasAssets, hasModules: $hasModules, id: $id, lastDeployedFrom: $lastDeployedFrom, logpush: $logpush, migrationTag: $migrationTag, modifiedOn: $modifiedOn, namedHandlers: $namedHandlers, observability: $observability, placement: $placement, placementMode: $placementMode, placementStatus: $placementStatus, tag: $tag, tags: $tags, tailConsumers: $tailConsumers, usageModel: $usageModel, entryPoint: $entryPoint, startupTimeMs: $startupTimeMs)'; } 
 }
