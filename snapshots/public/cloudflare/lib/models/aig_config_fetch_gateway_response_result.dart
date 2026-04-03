// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_fetch_gateway_response_result_dlp.dart';import 'aig_config_fetch_gateway_response_result_dlp_variant1.dart';import 'aig_config_fetch_gateway_response_result_dlp_variant2.dart';import 'aig_config_fetch_gateway_response_result_otel.dart';import 'aig_config_fetch_gateway_response_result_stripe.dart';@immutable final class AigConfigFetchGatewayResponseResultLogManagementStrategy {const AigConfigFetchGatewayResponseResultLogManagementStrategy._(this.value);

factory AigConfigFetchGatewayResponseResultLogManagementStrategy.fromJson(String json) { return switch (json) {
  'STOP_INSERTING' => stopInserting,
  'DELETE_OLDEST' => deleteOldest,
  _ => AigConfigFetchGatewayResponseResultLogManagementStrategy._(json),
}; }

static const AigConfigFetchGatewayResponseResultLogManagementStrategy stopInserting = AigConfigFetchGatewayResponseResultLogManagementStrategy._('STOP_INSERTING');

static const AigConfigFetchGatewayResponseResultLogManagementStrategy deleteOldest = AigConfigFetchGatewayResponseResultLogManagementStrategy._('DELETE_OLDEST');

static const List<AigConfigFetchGatewayResponseResultLogManagementStrategy> values = [stopInserting, deleteOldest];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigFetchGatewayResponseResultLogManagementStrategy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigFetchGatewayResponseResultLogManagementStrategy($value)'; } 
 }
@immutable final class AigConfigFetchGatewayResponseResultRateLimitingTechnique {const AigConfigFetchGatewayResponseResultRateLimitingTechnique._(this.value);

factory AigConfigFetchGatewayResponseResultRateLimitingTechnique.fromJson(String json) { return switch (json) {
  'fixed' => fixed,
  'sliding' => sliding,
  _ => AigConfigFetchGatewayResponseResultRateLimitingTechnique._(json),
}; }

static const AigConfigFetchGatewayResponseResultRateLimitingTechnique fixed = AigConfigFetchGatewayResponseResultRateLimitingTechnique._('fixed');

static const AigConfigFetchGatewayResponseResultRateLimitingTechnique sliding = AigConfigFetchGatewayResponseResultRateLimitingTechnique._('sliding');

static const List<AigConfigFetchGatewayResponseResultRateLimitingTechnique> values = [fixed, sliding];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigFetchGatewayResponseResultRateLimitingTechnique && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigFetchGatewayResponseResultRateLimitingTechnique($value)'; } 
 }
/// Controls how Workers AI inference calls routed through this gateway are billed
@immutable final class AigConfigFetchGatewayResponseResultWorkersAiBillingMode {const AigConfigFetchGatewayResponseResultWorkersAiBillingMode._(this.value);

factory AigConfigFetchGatewayResponseResultWorkersAiBillingMode.fromJson(String json) { return switch (json) {
  'postpaid' => postpaid,
  'unified' => unified,
  _ => AigConfigFetchGatewayResponseResultWorkersAiBillingMode._(json),
}; }

static const AigConfigFetchGatewayResponseResultWorkersAiBillingMode postpaid = AigConfigFetchGatewayResponseResultWorkersAiBillingMode._('postpaid');

static const AigConfigFetchGatewayResponseResultWorkersAiBillingMode unified = AigConfigFetchGatewayResponseResultWorkersAiBillingMode._('unified');

static const List<AigConfigFetchGatewayResponseResultWorkersAiBillingMode> values = [postpaid, unified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigFetchGatewayResponseResultWorkersAiBillingMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigFetchGatewayResponseResultWorkersAiBillingMode($value)'; } 
 }
@immutable final class AigConfigFetchGatewayResponseResult {const AigConfigFetchGatewayResponseResult({required this.cacheInvalidateOnUpdate, required this.cacheTtl, required this.collectLogs, required this.createdAt, required this.id, required this.modifiedAt, required this.rateLimitingInterval, required this.rateLimitingLimit, required this.rateLimitingTechnique, this.authentication, this.dlp, this.isDefault, this.logManagement, this.logManagementStrategy, this.logpush, this.logpushPublicKey, this.otel, this.storeId, this.stripe, this.workersAiBillingMode = AigConfigFetchGatewayResponseResultWorkersAiBillingMode.postpaid, this.zdr, });

factory AigConfigFetchGatewayResponseResult.fromJson(Map<String, dynamic> json) { return AigConfigFetchGatewayResponseResult(
  authentication: json['authentication'] as bool?,
  cacheInvalidateOnUpdate: json['cache_invalidate_on_update'] as bool,
  cacheTtl: json['cache_ttl'] != null ? (json['cache_ttl'] as num).toInt() : null,
  collectLogs: json['collect_logs'] as bool,
  createdAt: DateTime.parse(json['created_at'] as String),
  dlp: json['dlp'] != null ? OneOf2.parse(json['dlp'], fromA: (v) => AigConfigFetchGatewayResponseResultDlpVariant1.fromJson(v as Map<String, dynamic>), fromB: (v) => AigConfigFetchGatewayResponseResultDlpVariant2.fromJson(v as Map<String, dynamic>),) : null,
  id: json['id'] as String,
  isDefault: json['is_default'] as bool?,
  logManagement: json['log_management'] != null ? (json['log_management'] as num).toInt() : null,
  logManagementStrategy: json['log_management_strategy'] != null ? AigConfigFetchGatewayResponseResultLogManagementStrategy.fromJson(json['log_management_strategy'] as String) : null,
  logpush: json['logpush'] as bool?,
  logpushPublicKey: json['logpush_public_key'] as String?,
  modifiedAt: DateTime.parse(json['modified_at'] as String),
  otel: (json['otel'] as List<dynamic>?)?.map((e) => AigConfigFetchGatewayResponseResultOtel.fromJson(e as Map<String, dynamic>)).toList(),
  rateLimitingInterval: json['rate_limiting_interval'] != null ? (json['rate_limiting_interval'] as num).toInt() : null,
  rateLimitingLimit: json['rate_limiting_limit'] != null ? (json['rate_limiting_limit'] as num).toInt() : null,
  rateLimitingTechnique: AigConfigFetchGatewayResponseResultRateLimitingTechnique.fromJson(json['rate_limiting_technique'] as String),
  storeId: json['store_id'] as String?,
  stripe: json['stripe'] != null ? AigConfigFetchGatewayResponseResultStripe.fromJson(json['stripe'] as Map<String, dynamic>) : null,
  workersAiBillingMode: json.containsKey('workers_ai_billing_mode') ? AigConfigFetchGatewayResponseResultWorkersAiBillingMode.fromJson(json['workers_ai_billing_mode'] as String) : AigConfigFetchGatewayResponseResultWorkersAiBillingMode.postpaid,
  zdr: json['zdr'] as bool?,
); }

final bool? authentication;

final bool cacheInvalidateOnUpdate;

final int? cacheTtl;

final bool collectLogs;

final DateTime createdAt;

final AigConfigFetchGatewayResponseResultDlp? dlp;

/// gateway id
final String id;

final bool? isDefault;

final int? logManagement;

final AigConfigFetchGatewayResponseResultLogManagementStrategy? logManagementStrategy;

final bool? logpush;

final String? logpushPublicKey;

final DateTime modifiedAt;

final List<AigConfigFetchGatewayResponseResultOtel>? otel;

final int? rateLimitingInterval;

final int? rateLimitingLimit;

final AigConfigFetchGatewayResponseResultRateLimitingTechnique rateLimitingTechnique;

final String? storeId;

final AigConfigFetchGatewayResponseResultStripe? stripe;

/// Controls how Workers AI inference calls routed through this gateway are billed
final AigConfigFetchGatewayResponseResultWorkersAiBillingMode workersAiBillingMode;

final bool? zdr;

Map<String, dynamic> toJson() { return {
  'authentication': ?authentication,
  'cache_invalidate_on_update': cacheInvalidateOnUpdate,
  'cache_ttl': ?cacheTtl,
  'collect_logs': collectLogs,
  'created_at': createdAt.toIso8601String(),
  if (dlp != null) 'dlp': dlp?.toJson(),
  'id': id,
  'is_default': ?isDefault,
  'log_management': ?logManagement,
  if (logManagementStrategy != null) 'log_management_strategy': logManagementStrategy?.toJson(),
  'logpush': ?logpush,
  'logpush_public_key': ?logpushPublicKey,
  'modified_at': modifiedAt.toIso8601String(),
  if (otel != null) 'otel': otel?.map((e) => e.toJson()).toList(),
  'rate_limiting_interval': ?rateLimitingInterval,
  'rate_limiting_limit': ?rateLimitingLimit,
  'rate_limiting_technique': rateLimitingTechnique.toJson(),
  'store_id': ?storeId,
  if (stripe != null) 'stripe': stripe?.toJson(),
  'workers_ai_billing_mode': workersAiBillingMode.toJson(),
  'zdr': ?zdr,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('cache_invalidate_on_update') && json['cache_invalidate_on_update'] is bool &&
      json.containsKey('cache_ttl') && json['cache_ttl'] is num &&
      json.containsKey('collect_logs') && json['collect_logs'] is bool &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('modified_at') && json['modified_at'] is String &&
      json.containsKey('rate_limiting_interval') && json['rate_limiting_interval'] is num &&
      json.containsKey('rate_limiting_limit') && json['rate_limiting_limit'] is num &&
      json.containsKey('rate_limiting_technique'); } 
AigConfigFetchGatewayResponseResult copyWith({bool Function()? authentication, bool? cacheInvalidateOnUpdate, int? Function()? cacheTtl, bool? collectLogs, DateTime? createdAt, AigConfigFetchGatewayResponseResultDlp Function()? dlp, String? id, bool Function()? isDefault, int? Function()? logManagement, AigConfigFetchGatewayResponseResultLogManagementStrategy? Function()? logManagementStrategy, bool Function()? logpush, String? Function()? logpushPublicKey, DateTime? modifiedAt, List<AigConfigFetchGatewayResponseResultOtel>? Function()? otel, int? Function()? rateLimitingInterval, int? Function()? rateLimitingLimit, AigConfigFetchGatewayResponseResultRateLimitingTechnique? rateLimitingTechnique, String? Function()? storeId, AigConfigFetchGatewayResponseResultStripe? Function()? stripe, AigConfigFetchGatewayResponseResultWorkersAiBillingMode Function()? workersAiBillingMode, bool Function()? zdr, }) { return AigConfigFetchGatewayResponseResult(
  authentication: authentication != null ? authentication() : this.authentication,
  cacheInvalidateOnUpdate: cacheInvalidateOnUpdate ?? this.cacheInvalidateOnUpdate,
  cacheTtl: cacheTtl != null ? cacheTtl() : this.cacheTtl,
  collectLogs: collectLogs ?? this.collectLogs,
  createdAt: createdAt ?? this.createdAt,
  dlp: dlp != null ? dlp() : this.dlp,
  id: id ?? this.id,
  isDefault: isDefault != null ? isDefault() : this.isDefault,
  logManagement: logManagement != null ? logManagement() : this.logManagement,
  logManagementStrategy: logManagementStrategy != null ? logManagementStrategy() : this.logManagementStrategy,
  logpush: logpush != null ? logpush() : this.logpush,
  logpushPublicKey: logpushPublicKey != null ? logpushPublicKey() : this.logpushPublicKey,
  modifiedAt: modifiedAt ?? this.modifiedAt,
  otel: otel != null ? otel() : this.otel,
  rateLimitingInterval: rateLimitingInterval != null ? rateLimitingInterval() : this.rateLimitingInterval,
  rateLimitingLimit: rateLimitingLimit != null ? rateLimitingLimit() : this.rateLimitingLimit,
  rateLimitingTechnique: rateLimitingTechnique ?? this.rateLimitingTechnique,
  storeId: storeId != null ? storeId() : this.storeId,
  stripe: stripe != null ? stripe() : this.stripe,
  workersAiBillingMode: workersAiBillingMode != null ? workersAiBillingMode() : this.workersAiBillingMode,
  zdr: zdr != null ? zdr() : this.zdr,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigFetchGatewayResponseResult &&
          authentication == other.authentication &&
          cacheInvalidateOnUpdate == other.cacheInvalidateOnUpdate &&
          cacheTtl == other.cacheTtl &&
          collectLogs == other.collectLogs &&
          createdAt == other.createdAt &&
          dlp == other.dlp &&
          id == other.id &&
          isDefault == other.isDefault &&
          logManagement == other.logManagement &&
          logManagementStrategy == other.logManagementStrategy &&
          logpush == other.logpush &&
          logpushPublicKey == other.logpushPublicKey &&
          modifiedAt == other.modifiedAt &&
          listEquals(otel, other.otel) &&
          rateLimitingInterval == other.rateLimitingInterval &&
          rateLimitingLimit == other.rateLimitingLimit &&
          rateLimitingTechnique == other.rateLimitingTechnique &&
          storeId == other.storeId &&
          stripe == other.stripe &&
          workersAiBillingMode == other.workersAiBillingMode &&
          zdr == other.zdr; } 
@override int get hashCode { return Object.hashAll([authentication, cacheInvalidateOnUpdate, cacheTtl, collectLogs, createdAt, dlp, id, isDefault, logManagement, logManagementStrategy, logpush, logpushPublicKey, modifiedAt, Object.hashAll(otel ?? const []), rateLimitingInterval, rateLimitingLimit, rateLimitingTechnique, storeId, stripe, workersAiBillingMode, zdr]); } 
@override String toString() { return 'AigConfigFetchGatewayResponseResult(authentication: $authentication, cacheInvalidateOnUpdate: $cacheInvalidateOnUpdate, cacheTtl: $cacheTtl, collectLogs: $collectLogs, createdAt: $createdAt, dlp: $dlp, id: $id, isDefault: $isDefault, logManagement: $logManagement, logManagementStrategy: $logManagementStrategy, logpush: $logpush, logpushPublicKey: $logpushPublicKey, modifiedAt: $modifiedAt, otel: $otel, rateLimitingInterval: $rateLimitingInterval, rateLimitingLimit: $rateLimitingLimit, rateLimitingTechnique: $rateLimitingTechnique, storeId: $storeId, stripe: $stripe, workersAiBillingMode: $workersAiBillingMode, zdr: $zdr)'; } 
 }
