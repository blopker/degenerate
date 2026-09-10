// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_binding_item_response.dart';import 'workers_compatibility_date.dart';import 'workers_compatibility_flag.dart';import 'workers_migration_tag_conditions_response.dart';import 'workers_placement_info_no_status.dart';import 'workers_placement_info_no_status_smart.dart';import 'workers_placement_info_no_status_targeted.dart';import 'workers_placement_info_no_status_targeted2.dart';import 'workers_placement_info_no_status_targeted3.dart';import 'workers_placement_info_no_status_targeted4.dart';import 'workers_placement_info_no_status_variant2.dart';import 'workers_placement_info_no_status_variant3.dart';import 'workers_placement_info_no_status_variant4.dart';import 'workers_version_response_annotations.dart';import 'workers_version_response_assets.dart';import 'workers_version_response_limits.dart';import 'workers_version_response_migrations.dart';import 'workers_version_response_modules.dart';/// Usage model for the version.
@immutable final class WorkersVersionResponseUsageModel {const WorkersVersionResponseUsageModel._(this.value);

factory WorkersVersionResponseUsageModel.fromJson(String json) { return switch (json) {
  'standard' => standard,
  'bundled' => bundled,
  'unbound' => unbound,
  _ => WorkersVersionResponseUsageModel._(json),
}; }

static const WorkersVersionResponseUsageModel standard = WorkersVersionResponseUsageModel._('standard');

static const WorkersVersionResponseUsageModel bundled = WorkersVersionResponseUsageModel._('bundled');

static const WorkersVersionResponseUsageModel unbound = WorkersVersionResponseUsageModel._('unbound');

static const List<WorkersVersionResponseUsageModel> values = [standard, bundled, unbound];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersVersionResponseUsageModel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersVersionResponseUsageModel($value)'; } 
 }
@immutable final class WorkersVersionResponse {const WorkersVersionResponse({required this.createdOn, required this.id, required this.number, required this.urls, this.annotations, this.assets, this.bindings, this.compatibilityDate, this.compatibilityFlags, this.limits, this.mainModule, this.migrations, this.modules, this.placement, this.source, this.startupTimeMs, this.usageModel, });

factory WorkersVersionResponse.fromJson(Map<String, dynamic> json) { return WorkersVersionResponse(
  annotations: json['annotations'] != null ? WorkersVersionResponseAnnotations.fromJson(json['annotations'] as Map<String, dynamic>) : null,
  assets: json['assets'] != null ? WorkersVersionResponseAssets.fromJson(json['assets'] as Map<String, dynamic>) : null,
  bindings: (json['bindings'] as List<dynamic>?)?.map((e) => WorkersBindingItemResponse.fromJson(e as Map<String, dynamic>)).toList(),
  compatibilityDate: json['compatibility_date'] != null ? WorkersCompatibilityDate.fromJson(json['compatibility_date'] as String) : null,
  compatibilityFlags: (json['compatibility_flags'] as List<dynamic>?)?.map((e) => WorkersCompatibilityFlag.fromJson(e as String)).toList(),
  createdOn: DateTime.parse(json['created_on'] as String),
  id: json['id'] as String,
  limits: json['limits'] != null ? WorkersVersionResponseLimits.fromJson(json['limits'] as Map<String, dynamic>) : null,
  mainModule: json['main_module'] as String?,
  migrations: json['migrations'] != null ? OneOf2.parse(json['migrations'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => WorkersMigrationTagConditionsResponse.fromJson(v as Map<String, dynamic>),) : null,
  modules: (json['modules'] as List<dynamic>?)?.map((e) => WorkersVersionResponseModules.fromJson(e as Map<String, dynamic>)).toList(),
  number: (json['number'] as num).toInt(),
  placement: json['placement'] != null ? OneOf8.parse(json['placement'], fromA: (v) => WorkersPlacementInfoNoStatusSmart.fromJson(v as Map<String, dynamic>), fromB: (v) => WorkersPlacementInfoNoStatusVariant2.fromJson(v as Map<String, dynamic>), fromC: (v) => WorkersPlacementInfoNoStatusVariant3.fromJson(v as Map<String, dynamic>), fromD: (v) => WorkersPlacementInfoNoStatusVariant4.fromJson(v as Map<String, dynamic>), fromE: (v) => WorkersPlacementInfoNoStatusTargeted.fromJson(v as Map<String, dynamic>), fromF: (v) => WorkersPlacementInfoNoStatusTargeted2.fromJson(v as Map<String, dynamic>), fromG: (v) => WorkersPlacementInfoNoStatusTargeted3.fromJson(v as Map<String, dynamic>), fromH: (v) => WorkersPlacementInfoNoStatusTargeted4.fromJson(v as Map<String, dynamic>),) : null,
  source: json['source'] as String?,
  startupTimeMs: json['startup_time_ms'] != null ? (json['startup_time_ms'] as num).toInt() : null,
  urls: (json['urls'] as List<dynamic>).map((e) => Uri.parse(e as String)).toList(),
  usageModel: json['usage_model'] != null ? WorkersVersionResponseUsageModel.fromJson(json['usage_model'] as String) : null,
); }

/// Metadata about the version.
final WorkersVersionResponseAnnotations? annotations;

/// Configuration for assets within a Worker.
/// 
/// [`_headers`](https://developers.cloudflare.com/workers/static-assets/headers/#custom-headers) and
/// [`_redirects`](https://developers.cloudflare.com/workers/static-assets/redirects/) files should be
/// included as modules named `_headers` and `_redirects` with content type `text/plain`.
/// 
final WorkersVersionResponseAssets? assets;

/// List of bindings attached to a Worker. You can find more about bindings on our docs: https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/#bindings.
final List<WorkersBindingItemResponse>? bindings;

/// Date indicating targeted support in the Workers runtime. Backwards incompatible fixes to the runtime following this date will not affect this Worker.
final WorkersCompatibilityDate? compatibilityDate;

/// Flags that enable or disable certain features in the Workers runtime. Used to enable upcoming features or opt in or out of specific changes not included in a `compatibility_date`.
final List<WorkersCompatibilityFlag>? compatibilityFlags;

/// When the version was created.
final DateTime createdOn;

/// Version identifier.
final String id;

/// Resource limits enforced at runtime.
final WorkersVersionResponseLimits? limits;

/// The name of the main module in the `modules` array (e.g. the name of the module that exports a `fetch` handler).
final String? mainModule;

/// Migrations for Durable Objects associated with the version. Migrations are applied when the version is deployed.
final WorkersVersionResponseMigrations? migrations;

/// Code, sourcemaps, and other content used at runtime.
/// 
/// This includes [`_headers`](https://developers.cloudflare.com/workers/static-assets/headers/#custom-headers) and
/// [`_redirects`](https://developers.cloudflare.com/workers/static-assets/redirects/) files used to configure
/// [Static Assets](https://developers.cloudflare.com/workers/static-assets/). `_headers` and `_redirects` files should be
/// included as modules named `_headers` and `_redirects` with content type `text/plain`.
/// 
final List<WorkersVersionResponseModules>? modules;

/// The integer version number, starting from one.
final int number;

final WorkersPlacementInfoNoStatus? placement;

/// The client used to create the version.
final String? source;

/// Time in milliseconds spent on [Worker startup](https://developers.cloudflare.com/workers/platform/limits/#worker-startup-time).
final int? startupTimeMs;

/// All routable URLs that always point to this version. Does not include alias URLs, since aliases can be updated to point to a different version.
final List<Uri> urls;

/// Usage model for the version.
final WorkersVersionResponseUsageModel? usageModel;

/// The value with the schema default applied when absent.
WorkersVersionResponseUsageModel get usageModelOrDefault { return usageModel ?? WorkersVersionResponseUsageModel.fromJson('standard'); } 
Map<String, dynamic> toJson() { return {
  if (annotations != null) 'annotations': annotations?.toJson(),
  if (assets != null) 'assets': assets?.toJson(),
  if (bindings != null) 'bindings': bindings?.map((e) => e.toJson()).toList(),
  if (compatibilityDate != null) 'compatibility_date': compatibilityDate?.toJson(),
  if (compatibilityFlags != null) 'compatibility_flags': compatibilityFlags?.map((e) => e.toJson()).toList(),
  'created_on': createdOn.toIso8601String(),
  'id': id,
  if (limits != null) 'limits': limits?.toJson(),
  'main_module': ?mainModule,
  if (migrations != null) 'migrations': migrations?.toJson(),
  if (modules != null) 'modules': modules?.map((e) => e.toJson()).toList(),
  'number': number,
  if (placement != null) 'placement': placement?.toJson(),
  'source': ?source,
  'startup_time_ms': ?startupTimeMs,
  'urls': urls.map((e) => e.toString()).toList(),
  if (usageModel != null) 'usage_model': usageModel?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_on') && json['created_on'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('number') && json['number'] is num &&
      json.containsKey('urls'); } 
WorkersVersionResponse copyWith({WorkersVersionResponseAnnotations? Function()? annotations, WorkersVersionResponseAssets? Function()? assets, List<WorkersBindingItemResponse>? Function()? bindings, WorkersCompatibilityDate? Function()? compatibilityDate, List<WorkersCompatibilityFlag>? Function()? compatibilityFlags, DateTime? createdOn, String? id, WorkersVersionResponseLimits? Function()? limits, String? Function()? mainModule, WorkersVersionResponseMigrations? Function()? migrations, List<WorkersVersionResponseModules>? Function()? modules, int? number, WorkersPlacementInfoNoStatus? Function()? placement, String? Function()? source, int? Function()? startupTimeMs, List<Uri>? urls, WorkersVersionResponseUsageModel? Function()? usageModel, }) { return WorkersVersionResponse(
  annotations: annotations != null ? annotations() : this.annotations,
  assets: assets != null ? assets() : this.assets,
  bindings: bindings != null ? bindings() : this.bindings,
  compatibilityDate: compatibilityDate != null ? compatibilityDate() : this.compatibilityDate,
  compatibilityFlags: compatibilityFlags != null ? compatibilityFlags() : this.compatibilityFlags,
  createdOn: createdOn ?? this.createdOn,
  id: id ?? this.id,
  limits: limits != null ? limits() : this.limits,
  mainModule: mainModule != null ? mainModule() : this.mainModule,
  migrations: migrations != null ? migrations() : this.migrations,
  modules: modules != null ? modules() : this.modules,
  number: number ?? this.number,
  placement: placement != null ? placement() : this.placement,
  source: source != null ? source() : this.source,
  startupTimeMs: startupTimeMs != null ? startupTimeMs() : this.startupTimeMs,
  urls: urls ?? this.urls,
  usageModel: usageModel != null ? usageModel() : this.usageModel,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersVersionResponse &&
          annotations == other.annotations &&
          assets == other.assets &&
          listEquals(bindings, other.bindings) &&
          compatibilityDate == other.compatibilityDate &&
          listEquals(compatibilityFlags, other.compatibilityFlags) &&
          createdOn == other.createdOn &&
          id == other.id &&
          limits == other.limits &&
          mainModule == other.mainModule &&
          migrations == other.migrations &&
          listEquals(modules, other.modules) &&
          number == other.number &&
          placement == other.placement &&
          source == other.source &&
          startupTimeMs == other.startupTimeMs &&
          listEquals(urls, other.urls) &&
          usageModel == other.usageModel; } 
@override int get hashCode { return Object.hash(annotations, assets, Object.hashAll(bindings ?? const []), compatibilityDate, Object.hashAll(compatibilityFlags ?? const []), createdOn, id, limits, mainModule, migrations, Object.hashAll(modules ?? const []), number, placement, source, startupTimeMs, Object.hashAll(urls), usageModel); } 
@override String toString() { return 'WorkersVersionResponse(annotations: $annotations, assets: $assets, bindings: $bindings, compatibilityDate: $compatibilityDate, compatibilityFlags: $compatibilityFlags, createdOn: $createdOn, id: $id, limits: $limits, mainModule: $mainModule, migrations: $migrations, modules: $modules, number: $number, placement: $placement, source: $source, startupTimeMs: $startupTimeMs, urls: $urls, usageModel: $usageModel)'; } 
 }
