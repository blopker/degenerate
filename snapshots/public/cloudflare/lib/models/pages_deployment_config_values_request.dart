// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pages_deployment_config_values_request_ai_bindings_value.dart';import 'pages_deployment_config_values_request_analytics_engine_datasets_value.dart';import 'pages_deployment_config_values_request_d1_databases_value.dart';import 'pages_deployment_config_values_request_durable_object_namespaces_value.dart';import 'pages_deployment_config_values_request_env_vars_value.dart';import 'pages_deployment_config_values_request_hyperdrive_bindings_value.dart';import 'pages_deployment_config_values_request_kv_namespaces_value.dart';import 'pages_deployment_config_values_request_limits.dart';import 'pages_deployment_config_values_request_mtls_certificates_value.dart';import 'pages_deployment_config_values_request_placement.dart';import 'pages_deployment_config_values_request_queue_producers_value.dart';import 'pages_deployment_config_values_request_r2_buckets_value.dart';import 'pages_deployment_config_values_request_services_value.dart';import 'pages_deployment_config_values_request_vectorize_bindings_value.dart';/// The usage model for Pages Functions.
@immutable final class PagesDeploymentConfigValuesRequestUsageModel {const PagesDeploymentConfigValuesRequestUsageModel._(this.value);

factory PagesDeploymentConfigValuesRequestUsageModel.fromJson(String json) { return switch (json) {
  'standard' => standard,
  'bundled' => bundled,
  'unbound' => unbound,
  _ => PagesDeploymentConfigValuesRequestUsageModel._(json),
}; }

static const PagesDeploymentConfigValuesRequestUsageModel standard = PagesDeploymentConfigValuesRequestUsageModel._('standard');

static const PagesDeploymentConfigValuesRequestUsageModel bundled = PagesDeploymentConfigValuesRequestUsageModel._('bundled');

static const PagesDeploymentConfigValuesRequestUsageModel unbound = PagesDeploymentConfigValuesRequestUsageModel._('unbound');

static const List<PagesDeploymentConfigValuesRequestUsageModel> values = [standard, bundled, unbound];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PagesDeploymentConfigValuesRequestUsageModel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PagesDeploymentConfigValuesRequestUsageModel($value)'; } 
 }
@immutable final class PagesDeploymentConfigValuesRequest {const PagesDeploymentConfigValuesRequest({this.aiBindings, this.alwaysUseLatestCompatibilityDate = false, this.analyticsEngineDatasets, this.browsers, this.buildImageMajorVersion = 3, this.compatibilityDate, this.compatibilityFlags, this.d1Databases, this.durableObjectNamespaces, this.envVars, this.failOpen = true, this.hyperdriveBindings, this.kvNamespaces, this.limits, this.mtlsCertificates, this.placement, this.queueProducers, this.r2Buckets, this.services, this.usageModel = PagesDeploymentConfigValuesRequestUsageModel.standard, this.vectorizeBindings, this.wranglerConfigHash, });

factory PagesDeploymentConfigValuesRequest.fromJson(Map<String, dynamic> json) { return PagesDeploymentConfigValuesRequest(
  aiBindings: (json['ai_bindings'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, PagesDeploymentConfigValuesRequestAiBindingsValue.fromJson(v as Map<String, dynamic>))),
  alwaysUseLatestCompatibilityDate: json.containsKey('always_use_latest_compatibility_date') ? json['always_use_latest_compatibility_date'] as bool : false,
  analyticsEngineDatasets: (json['analytics_engine_datasets'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, PagesDeploymentConfigValuesRequestAnalyticsEngineDatasetsValue.fromJson(v as Map<String, dynamic>))),
  browsers: (json['browsers'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v)))),
  buildImageMajorVersion: json.containsKey('build_image_major_version') ? (json['build_image_major_version'] as num).toInt() : 3,
  compatibilityDate: json['compatibility_date'] as String?,
  compatibilityFlags: (json['compatibility_flags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  d1Databases: (json['d1_databases'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, PagesDeploymentConfigValuesRequestD1DatabasesValue.fromJson(v as Map<String, dynamic>))),
  durableObjectNamespaces: (json['durable_object_namespaces'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, PagesDeploymentConfigValuesRequestDurableObjectNamespacesValue.fromJson(v as Map<String, dynamic>))),
  envVars: (json['env_vars'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, PagesDeploymentConfigValuesRequestEnvVarsValue.fromJson(v as Map<String, dynamic>))),
  failOpen: json.containsKey('fail_open') ? json['fail_open'] as bool : true,
  hyperdriveBindings: (json['hyperdrive_bindings'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, PagesDeploymentConfigValuesRequestHyperdriveBindingsValue.fromJson(v as Map<String, dynamic>))),
  kvNamespaces: (json['kv_namespaces'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, PagesDeploymentConfigValuesRequestKvNamespacesValue.fromJson(v as Map<String, dynamic>))),
  limits: json['limits'] != null ? PagesDeploymentConfigValuesRequestLimits.fromJson(json['limits'] as Map<String, dynamic>) : null,
  mtlsCertificates: (json['mtls_certificates'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, PagesDeploymentConfigValuesRequestMtlsCertificatesValue.fromJson(v as Map<String, dynamic>))),
  placement: json['placement'] != null ? PagesDeploymentConfigValuesRequestPlacement.fromJson(json['placement'] as Map<String, dynamic>) : null,
  queueProducers: (json['queue_producers'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, PagesDeploymentConfigValuesRequestQueueProducersValue.fromJson(v as Map<String, dynamic>))),
  r2Buckets: (json['r2_buckets'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, PagesDeploymentConfigValuesRequestR2BucketsValue.fromJson(v as Map<String, dynamic>))),
  services: (json['services'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, PagesDeploymentConfigValuesRequestServicesValue.fromJson(v as Map<String, dynamic>))),
  usageModel: json.containsKey('usage_model') ? PagesDeploymentConfigValuesRequestUsageModel.fromJson(json['usage_model'] as String) : PagesDeploymentConfigValuesRequestUsageModel.standard,
  vectorizeBindings: (json['vectorize_bindings'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, PagesDeploymentConfigValuesRequestVectorizeBindingsValue.fromJson(v as Map<String, dynamic>))),
  wranglerConfigHash: json['wrangler_config_hash'] as String?,
); }

/// Constellation bindings used for Pages Functions.
final Map<String,PagesDeploymentConfigValuesRequestAiBindingsValue?>? aiBindings;

/// Whether to always use the latest compatibility date for Pages Functions.
final bool alwaysUseLatestCompatibilityDate;

/// Analytics Engine bindings used for Pages Functions.
final Map<String,PagesDeploymentConfigValuesRequestAnalyticsEngineDatasetsValue?>? analyticsEngineDatasets;

/// Browser bindings used for Pages Functions.
final Map<String,Map<String,dynamic>?>? browsers;

/// The major version of the build image to use for Pages Functions.
final int buildImageMajorVersion;

/// Compatibility date used for Pages Functions.
final String? compatibilityDate;

/// Compatibility flags used for Pages Functions.
final List<String>? compatibilityFlags;

/// D1 databases used for Pages Functions.
final Map<String,PagesDeploymentConfigValuesRequestD1DatabasesValue?>? d1Databases;

/// Durable Object namespaces used for Pages Functions.
final Map<String,PagesDeploymentConfigValuesRequestDurableObjectNamespacesValue?>? durableObjectNamespaces;

/// Environment variables used for builds and Pages Functions.
final Map<String,PagesDeploymentConfigValuesRequestEnvVarsValue?>? envVars;

/// Whether to fail open when the deployment config cannot be applied.
final bool failOpen;

/// Hyperdrive bindings used for Pages Functions.
final Map<String,PagesDeploymentConfigValuesRequestHyperdriveBindingsValue?>? hyperdriveBindings;

/// KV namespaces used for Pages Functions.
final Map<String,PagesDeploymentConfigValuesRequestKvNamespacesValue?>? kvNamespaces;

/// Limits for Pages Functions.
final PagesDeploymentConfigValuesRequestLimits? limits;

/// mTLS bindings used for Pages Functions.
final Map<String,PagesDeploymentConfigValuesRequestMtlsCertificatesValue?>? mtlsCertificates;

/// Placement setting used for Pages Functions.
final PagesDeploymentConfigValuesRequestPlacement? placement;

/// Queue Producer bindings used for Pages Functions.
final Map<String,PagesDeploymentConfigValuesRequestQueueProducersValue?>? queueProducers;

/// R2 buckets used for Pages Functions.
final Map<String,PagesDeploymentConfigValuesRequestR2BucketsValue?>? r2Buckets;

/// Services used for Pages Functions.
final Map<String,PagesDeploymentConfigValuesRequestServicesValue?>? services;

/// The usage model for Pages Functions.
final PagesDeploymentConfigValuesRequestUsageModel usageModel;

/// Vectorize bindings used for Pages Functions.
final Map<String,PagesDeploymentConfigValuesRequestVectorizeBindingsValue?>? vectorizeBindings;

/// Hash of the Wrangler configuration used for the deployment.
final String? wranglerConfigHash;

Map<String, dynamic> toJson() { return {
  if (aiBindings != null) 'ai_bindings': aiBindings?.map((k, v) => MapEntry(k, v?.toJson())),
  'always_use_latest_compatibility_date': alwaysUseLatestCompatibilityDate,
  if (analyticsEngineDatasets != null) 'analytics_engine_datasets': analyticsEngineDatasets?.map((k, v) => MapEntry(k, v?.toJson())),
  if (browsers != null) 'browsers': browsers?.map((k, v) => MapEntry(k, v)),
  'build_image_major_version': buildImageMajorVersion,
  'compatibility_date': ?compatibilityDate,
  'compatibility_flags': ?compatibilityFlags,
  if (d1Databases != null) 'd1_databases': d1Databases?.map((k, v) => MapEntry(k, v?.toJson())),
  if (durableObjectNamespaces != null) 'durable_object_namespaces': durableObjectNamespaces?.map((k, v) => MapEntry(k, v?.toJson())),
  if (envVars != null) 'env_vars': envVars?.map((k, v) => MapEntry(k, v?.toJson())),
  'fail_open': failOpen,
  if (hyperdriveBindings != null) 'hyperdrive_bindings': hyperdriveBindings?.map((k, v) => MapEntry(k, v?.toJson())),
  if (kvNamespaces != null) 'kv_namespaces': kvNamespaces?.map((k, v) => MapEntry(k, v?.toJson())),
  if (limits != null) 'limits': limits?.toJson(),
  if (mtlsCertificates != null) 'mtls_certificates': mtlsCertificates?.map((k, v) => MapEntry(k, v?.toJson())),
  if (placement != null) 'placement': placement?.toJson(),
  if (queueProducers != null) 'queue_producers': queueProducers?.map((k, v) => MapEntry(k, v?.toJson())),
  if (r2Buckets != null) 'r2_buckets': r2Buckets?.map((k, v) => MapEntry(k, v?.toJson())),
  if (services != null) 'services': services?.map((k, v) => MapEntry(k, v?.toJson())),
  'usage_model': usageModel.toJson(),
  if (vectorizeBindings != null) 'vectorize_bindings': vectorizeBindings?.map((k, v) => MapEntry(k, v?.toJson())),
  'wrangler_config_hash': ?wranglerConfigHash,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ai_bindings', 'always_use_latest_compatibility_date', 'analytics_engine_datasets', 'browsers', 'build_image_major_version', 'compatibility_date', 'compatibility_flags', 'd1_databases', 'durable_object_namespaces', 'env_vars', 'fail_open', 'hyperdrive_bindings', 'kv_namespaces', 'limits', 'mtls_certificates', 'placement', 'queue_producers', 'r2_buckets', 'services', 'usage_model', 'vectorize_bindings', 'wrangler_config_hash'}.contains(key)); } 
PagesDeploymentConfigValuesRequest copyWith({Map<String, PagesDeploymentConfigValuesRequestAiBindingsValue> Function()? aiBindings, bool Function()? alwaysUseLatestCompatibilityDate, Map<String, PagesDeploymentConfigValuesRequestAnalyticsEngineDatasetsValue> Function()? analyticsEngineDatasets, Map<String, Map<String, dynamic>> Function()? browsers, int Function()? buildImageMajorVersion, String Function()? compatibilityDate, List<String> Function()? compatibilityFlags, Map<String, PagesDeploymentConfigValuesRequestD1DatabasesValue> Function()? d1Databases, Map<String, PagesDeploymentConfigValuesRequestDurableObjectNamespacesValue> Function()? durableObjectNamespaces, Map<String, PagesDeploymentConfigValuesRequestEnvVarsValue> Function()? envVars, bool Function()? failOpen, Map<String, PagesDeploymentConfigValuesRequestHyperdriveBindingsValue> Function()? hyperdriveBindings, Map<String, PagesDeploymentConfigValuesRequestKvNamespacesValue> Function()? kvNamespaces, PagesDeploymentConfigValuesRequestLimits Function()? limits, Map<String, PagesDeploymentConfigValuesRequestMtlsCertificatesValue> Function()? mtlsCertificates, PagesDeploymentConfigValuesRequestPlacement Function()? placement, Map<String, PagesDeploymentConfigValuesRequestQueueProducersValue> Function()? queueProducers, Map<String, PagesDeploymentConfigValuesRequestR2BucketsValue> Function()? r2Buckets, Map<String, PagesDeploymentConfigValuesRequestServicesValue> Function()? services, PagesDeploymentConfigValuesRequestUsageModel Function()? usageModel, Map<String, PagesDeploymentConfigValuesRequestVectorizeBindingsValue> Function()? vectorizeBindings, String Function()? wranglerConfigHash, }) { return PagesDeploymentConfigValuesRequest(
  aiBindings: aiBindings != null ? aiBindings() : this.aiBindings,
  alwaysUseLatestCompatibilityDate: alwaysUseLatestCompatibilityDate != null ? alwaysUseLatestCompatibilityDate() : this.alwaysUseLatestCompatibilityDate,
  analyticsEngineDatasets: analyticsEngineDatasets != null ? analyticsEngineDatasets() : this.analyticsEngineDatasets,
  browsers: browsers != null ? browsers() : this.browsers,
  buildImageMajorVersion: buildImageMajorVersion != null ? buildImageMajorVersion() : this.buildImageMajorVersion,
  compatibilityDate: compatibilityDate != null ? compatibilityDate() : this.compatibilityDate,
  compatibilityFlags: compatibilityFlags != null ? compatibilityFlags() : this.compatibilityFlags,
  d1Databases: d1Databases != null ? d1Databases() : this.d1Databases,
  durableObjectNamespaces: durableObjectNamespaces != null ? durableObjectNamespaces() : this.durableObjectNamespaces,
  envVars: envVars != null ? envVars() : this.envVars,
  failOpen: failOpen != null ? failOpen() : this.failOpen,
  hyperdriveBindings: hyperdriveBindings != null ? hyperdriveBindings() : this.hyperdriveBindings,
  kvNamespaces: kvNamespaces != null ? kvNamespaces() : this.kvNamespaces,
  limits: limits != null ? limits() : this.limits,
  mtlsCertificates: mtlsCertificates != null ? mtlsCertificates() : this.mtlsCertificates,
  placement: placement != null ? placement() : this.placement,
  queueProducers: queueProducers != null ? queueProducers() : this.queueProducers,
  r2Buckets: r2Buckets != null ? r2Buckets() : this.r2Buckets,
  services: services != null ? services() : this.services,
  usageModel: usageModel != null ? usageModel() : this.usageModel,
  vectorizeBindings: vectorizeBindings != null ? vectorizeBindings() : this.vectorizeBindings,
  wranglerConfigHash: wranglerConfigHash != null ? wranglerConfigHash() : this.wranglerConfigHash,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesDeploymentConfigValuesRequest &&
          aiBindings == other.aiBindings &&
          alwaysUseLatestCompatibilityDate == other.alwaysUseLatestCompatibilityDate &&
          analyticsEngineDatasets == other.analyticsEngineDatasets &&
          browsers == other.browsers &&
          buildImageMajorVersion == other.buildImageMajorVersion &&
          compatibilityDate == other.compatibilityDate &&
          listEquals(compatibilityFlags, other.compatibilityFlags) &&
          d1Databases == other.d1Databases &&
          durableObjectNamespaces == other.durableObjectNamespaces &&
          envVars == other.envVars &&
          failOpen == other.failOpen &&
          hyperdriveBindings == other.hyperdriveBindings &&
          kvNamespaces == other.kvNamespaces &&
          limits == other.limits &&
          mtlsCertificates == other.mtlsCertificates &&
          placement == other.placement &&
          queueProducers == other.queueProducers &&
          r2Buckets == other.r2Buckets &&
          services == other.services &&
          usageModel == other.usageModel &&
          vectorizeBindings == other.vectorizeBindings &&
          wranglerConfigHash == other.wranglerConfigHash; } 
@override int get hashCode { return Object.hashAll([aiBindings, alwaysUseLatestCompatibilityDate, analyticsEngineDatasets, browsers, buildImageMajorVersion, compatibilityDate, Object.hashAll(compatibilityFlags ?? const []), d1Databases, durableObjectNamespaces, envVars, failOpen, hyperdriveBindings, kvNamespaces, limits, mtlsCertificates, placement, queueProducers, r2Buckets, services, usageModel, vectorizeBindings, wranglerConfigHash]); } 
@override String toString() { return 'PagesDeploymentConfigValuesRequest(aiBindings: $aiBindings, alwaysUseLatestCompatibilityDate: $alwaysUseLatestCompatibilityDate, analyticsEngineDatasets: $analyticsEngineDatasets, browsers: $browsers, buildImageMajorVersion: $buildImageMajorVersion, compatibilityDate: $compatibilityDate, compatibilityFlags: $compatibilityFlags, d1Databases: $d1Databases, durableObjectNamespaces: $durableObjectNamespaces, envVars: $envVars, failOpen: $failOpen, hyperdriveBindings: $hyperdriveBindings, kvNamespaces: $kvNamespaces, limits: $limits, mtlsCertificates: $mtlsCertificates, placement: $placement, queueProducers: $queueProducers, r2Buckets: $r2Buckets, services: $services, usageModel: $usageModel, vectorizeBindings: $vectorizeBindings, wranglerConfigHash: $wranglerConfigHash)'; } 
 }
