// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_update_gateway_response_result_dlp.dart';import 'aig_config_update_gateway_response_result_dlp_variant1.dart';import 'aig_config_update_gateway_response_result_dlp_variant2.dart';import 'aig_config_update_gateway_response_result_otel.dart';import 'aig_config_update_gateway_response_result_stripe.dart';@immutable final class AigConfigUpdateGatewayResponseResultLogManagementStrategy {const AigConfigUpdateGatewayResponseResultLogManagementStrategy._(this.value);

factory AigConfigUpdateGatewayResponseResultLogManagementStrategy.fromJson(String json) { return switch (json) {
  'STOP_INSERTING' => stopInserting,
  'DELETE_OLDEST' => deleteOldest,
  _ => AigConfigUpdateGatewayResponseResultLogManagementStrategy._(json),
}; }

static const AigConfigUpdateGatewayResponseResultLogManagementStrategy stopInserting = AigConfigUpdateGatewayResponseResultLogManagementStrategy._('STOP_INSERTING');

static const AigConfigUpdateGatewayResponseResultLogManagementStrategy deleteOldest = AigConfigUpdateGatewayResponseResultLogManagementStrategy._('DELETE_OLDEST');

static const List<AigConfigUpdateGatewayResponseResultLogManagementStrategy> values = [stopInserting, deleteOldest];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigUpdateGatewayResponseResultLogManagementStrategy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigUpdateGatewayResponseResultLogManagementStrategy($value)'; } 
 }
@immutable final class AigConfigUpdateGatewayResponseResultRateLimitingTechnique {const AigConfigUpdateGatewayResponseResultRateLimitingTechnique._(this.value);

factory AigConfigUpdateGatewayResponseResultRateLimitingTechnique.fromJson(String json) { return switch (json) {
  'fixed' => fixed,
  'sliding' => sliding,
  _ => AigConfigUpdateGatewayResponseResultRateLimitingTechnique._(json),
}; }

static const AigConfigUpdateGatewayResponseResultRateLimitingTechnique fixed = AigConfigUpdateGatewayResponseResultRateLimitingTechnique._('fixed');

static const AigConfigUpdateGatewayResponseResultRateLimitingTechnique sliding = AigConfigUpdateGatewayResponseResultRateLimitingTechnique._('sliding');

static const List<AigConfigUpdateGatewayResponseResultRateLimitingTechnique> values = [fixed, sliding];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigUpdateGatewayResponseResultRateLimitingTechnique && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigUpdateGatewayResponseResultRateLimitingTechnique($value)'; } 
 }
/// Controls how Workers AI inference calls routed through this gateway are billed
@immutable final class AigConfigUpdateGatewayResponseResultWorkersAiBillingMode {const AigConfigUpdateGatewayResponseResultWorkersAiBillingMode._(this.value);

factory AigConfigUpdateGatewayResponseResultWorkersAiBillingMode.fromJson(String json) { return switch (json) {
  'postpaid' => postpaid,
  'unified' => unified,
  _ => AigConfigUpdateGatewayResponseResultWorkersAiBillingMode._(json),
}; }

static const AigConfigUpdateGatewayResponseResultWorkersAiBillingMode postpaid = AigConfigUpdateGatewayResponseResultWorkersAiBillingMode._('postpaid');

static const AigConfigUpdateGatewayResponseResultWorkersAiBillingMode unified = AigConfigUpdateGatewayResponseResultWorkersAiBillingMode._('unified');

static const List<AigConfigUpdateGatewayResponseResultWorkersAiBillingMode> values = [postpaid, unified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigUpdateGatewayResponseResultWorkersAiBillingMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigUpdateGatewayResponseResultWorkersAiBillingMode($value)'; } 
 }
@immutable final class AigConfigUpdateGatewayResponseResult {const AigConfigUpdateGatewayResponseResult({required this.cacheInvalidateOnUpdate, required this.cacheTtl, required this.collectLogs, required this.createdAt, required this.id, required this.modifiedAt, required this.rateLimitingInterval, required this.rateLimitingLimit, required this.rateLimitingTechnique, this.authentication, this.dlp, this.isDefault, this.logManagement = const Omittable.absent(), this.logManagementStrategy = const Omittable.absent(), this.logpush, this.logpushPublicKey = const Omittable.absent(), this.otel = const Omittable.absent(), this.storeId = const Omittable.absent(), this.stripe = const Omittable.absent(), this.workersAiBillingMode = AigConfigUpdateGatewayResponseResultWorkersAiBillingMode.postpaid, this.zdr, });

factory AigConfigUpdateGatewayResponseResult.fromJson(Map<String, dynamic> json) { return AigConfigUpdateGatewayResponseResult(
  authentication: json['authentication'] as bool?,
  cacheInvalidateOnUpdate: json['cache_invalidate_on_update'] as bool,
  cacheTtl: json['cache_ttl'] != null ? (json['cache_ttl'] as num).toInt() : null,
  collectLogs: json['collect_logs'] as bool,
  createdAt: DateTime.parse(json['created_at'] as String),
  dlp: json['dlp'] != null ? OneOf2.parse(json['dlp'], fromA: (v) => AigConfigUpdateGatewayResponseResultDlpVariant1.fromJson(v as Map<String, dynamic>), fromB: (v) => AigConfigUpdateGatewayResponseResultDlpVariant2.fromJson(v as Map<String, dynamic>),) : null,
  id: json['id'] as String,
  isDefault: json['is_default'] as bool?,
  logManagement: json.containsKey('log_management') ? Omittable(json['log_management'] != null ? (json['log_management'] as num).toInt() : null) : const Omittable.absent(),
  logManagementStrategy: json.containsKey('log_management_strategy') ? Omittable(json['log_management_strategy'] != null ? AigConfigUpdateGatewayResponseResultLogManagementStrategy.fromJson(json['log_management_strategy'] as String) : null) : const Omittable.absent(),
  logpush: json['logpush'] as bool?,
  logpushPublicKey: json.containsKey('logpush_public_key') ? Omittable(json['logpush_public_key'] as String?) : const Omittable.absent(),
  modifiedAt: DateTime.parse(json['modified_at'] as String),
  otel: json.containsKey('otel') ? Omittable((json['otel'] as List<dynamic>?)?.map((e) => AigConfigUpdateGatewayResponseResultOtel.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  rateLimitingInterval: json['rate_limiting_interval'] != null ? (json['rate_limiting_interval'] as num).toInt() : null,
  rateLimitingLimit: json['rate_limiting_limit'] != null ? (json['rate_limiting_limit'] as num).toInt() : null,
  rateLimitingTechnique: AigConfigUpdateGatewayResponseResultRateLimitingTechnique.fromJson(json['rate_limiting_technique'] as String),
  storeId: json.containsKey('store_id') ? Omittable(json['store_id'] as String?) : const Omittable.absent(),
  stripe: json.containsKey('stripe') ? Omittable(json['stripe'] != null ? AigConfigUpdateGatewayResponseResultStripe.fromJson(json['stripe'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  workersAiBillingMode: json.containsKey('workers_ai_billing_mode') ? AigConfigUpdateGatewayResponseResultWorkersAiBillingMode.fromJson(json['workers_ai_billing_mode'] as String) : AigConfigUpdateGatewayResponseResultWorkersAiBillingMode.postpaid,
  zdr: json['zdr'] as bool?,
); }

final bool? authentication;

final bool cacheInvalidateOnUpdate;

final int? cacheTtl;

final bool collectLogs;

final DateTime createdAt;

final AigConfigUpdateGatewayResponseResultDlp? dlp;

/// gateway id
final String id;

final bool? isDefault;

final Omittable<int?> logManagement;

final Omittable<AigConfigUpdateGatewayResponseResultLogManagementStrategy?> logManagementStrategy;

final bool? logpush;

final Omittable<String?> logpushPublicKey;

final DateTime modifiedAt;

final Omittable<List<AigConfigUpdateGatewayResponseResultOtel>?> otel;

final int? rateLimitingInterval;

final int? rateLimitingLimit;

final AigConfigUpdateGatewayResponseResultRateLimitingTechnique rateLimitingTechnique;

final Omittable<String?> storeId;

final Omittable<AigConfigUpdateGatewayResponseResultStripe?> stripe;

/// Controls how Workers AI inference calls routed through this gateway are billed
final AigConfigUpdateGatewayResponseResultWorkersAiBillingMode workersAiBillingMode;

final bool? zdr;

Map<String, dynamic> toJson() { return {
  'authentication': ?authentication,
  'cache_invalidate_on_update': cacheInvalidateOnUpdate,
  'cache_ttl': cacheTtl,
  'collect_logs': collectLogs,
  'created_at': createdAt.toIso8601String(),
  if (dlp != null) 'dlp': dlp?.toJson(),
  'id': id,
  'is_default': ?isDefault,
  if (logManagement.isPresent) 'log_management': logManagement.value,
  if (logManagementStrategy.isPresent) 'log_management_strategy': logManagementStrategy.value?.toJson(),
  'logpush': ?logpush,
  if (logpushPublicKey.isPresent) 'logpush_public_key': logpushPublicKey.value,
  'modified_at': modifiedAt.toIso8601String(),
  if (otel.isPresent) 'otel': otel.value?.map((e) => e.toJson()).toList(),
  'rate_limiting_interval': rateLimitingInterval,
  'rate_limiting_limit': rateLimitingLimit,
  'rate_limiting_technique': rateLimitingTechnique.toJson(),
  if (storeId.isPresent) 'store_id': storeId.value,
  if (stripe.isPresent) 'stripe': stripe.value?.toJson(),
  'workers_ai_billing_mode': workersAiBillingMode.toJson(),
  'zdr': ?zdr,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('cache_invalidate_on_update') && json['cache_invalidate_on_update'] is bool &&
      json.containsKey('cache_ttl') && (json['cache_ttl'] == null || json['cache_ttl'] is num) &&
      json.containsKey('collect_logs') && json['collect_logs'] is bool &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('modified_at') && json['modified_at'] is String &&
      json.containsKey('rate_limiting_interval') && (json['rate_limiting_interval'] == null || json['rate_limiting_interval'] is num) &&
      json.containsKey('rate_limiting_limit') && (json['rate_limiting_limit'] == null || json['rate_limiting_limit'] is num) &&
      json.containsKey('rate_limiting_technique'); } 
AigConfigUpdateGatewayResponseResult copyWith({bool? Function()? authentication, bool? cacheInvalidateOnUpdate, int? Function()? cacheTtl, bool? collectLogs, DateTime? createdAt, AigConfigUpdateGatewayResponseResultDlp? Function()? dlp, String? id, bool? Function()? isDefault, Omittable<int?>? logManagement, Omittable<AigConfigUpdateGatewayResponseResultLogManagementStrategy?>? logManagementStrategy, bool? Function()? logpush, Omittable<String?>? logpushPublicKey, DateTime? modifiedAt, Omittable<List<AigConfigUpdateGatewayResponseResultOtel>?>? otel, int? Function()? rateLimitingInterval, int? Function()? rateLimitingLimit, AigConfigUpdateGatewayResponseResultRateLimitingTechnique? rateLimitingTechnique, Omittable<String?>? storeId, Omittable<AigConfigUpdateGatewayResponseResultStripe?>? stripe, AigConfigUpdateGatewayResponseResultWorkersAiBillingMode Function()? workersAiBillingMode, bool? Function()? zdr, }) { return AigConfigUpdateGatewayResponseResult(
  authentication: authentication != null ? authentication() : this.authentication,
  cacheInvalidateOnUpdate: cacheInvalidateOnUpdate ?? this.cacheInvalidateOnUpdate,
  cacheTtl: cacheTtl != null ? cacheTtl() : this.cacheTtl,
  collectLogs: collectLogs ?? this.collectLogs,
  createdAt: createdAt ?? this.createdAt,
  dlp: dlp != null ? dlp() : this.dlp,
  id: id ?? this.id,
  isDefault: isDefault != null ? isDefault() : this.isDefault,
  logManagement: logManagement ?? this.logManagement,
  logManagementStrategy: logManagementStrategy ?? this.logManagementStrategy,
  logpush: logpush != null ? logpush() : this.logpush,
  logpushPublicKey: logpushPublicKey ?? this.logpushPublicKey,
  modifiedAt: modifiedAt ?? this.modifiedAt,
  otel: otel ?? this.otel,
  rateLimitingInterval: rateLimitingInterval != null ? rateLimitingInterval() : this.rateLimitingInterval,
  rateLimitingLimit: rateLimitingLimit != null ? rateLimitingLimit() : this.rateLimitingLimit,
  rateLimitingTechnique: rateLimitingTechnique ?? this.rateLimitingTechnique,
  storeId: storeId ?? this.storeId,
  stripe: stripe ?? this.stripe,
  workersAiBillingMode: workersAiBillingMode != null ? workersAiBillingMode() : this.workersAiBillingMode,
  zdr: zdr != null ? zdr() : this.zdr,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigUpdateGatewayResponseResult &&
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
          otel.isPresent == other.otel.isPresent &&
          listEquals(otel.value, other.otel.value) &&
          rateLimitingInterval == other.rateLimitingInterval &&
          rateLimitingLimit == other.rateLimitingLimit &&
          rateLimitingTechnique == other.rateLimitingTechnique &&
          storeId == other.storeId &&
          stripe == other.stripe &&
          workersAiBillingMode == other.workersAiBillingMode &&
          zdr == other.zdr; } 
@override int get hashCode { return Object.hashAll([authentication, cacheInvalidateOnUpdate, cacheTtl, collectLogs, createdAt, dlp, id, isDefault, logManagement, logManagementStrategy, logpush, logpushPublicKey, modifiedAt, Object.hashAll(otel.value ?? const []), rateLimitingInterval, rateLimitingLimit, rateLimitingTechnique, storeId, stripe, workersAiBillingMode, zdr]); } 
@override String toString() { return 'AigConfigUpdateGatewayResponseResult(authentication: $authentication, cacheInvalidateOnUpdate: $cacheInvalidateOnUpdate, cacheTtl: $cacheTtl, collectLogs: $collectLogs, createdAt: $createdAt, dlp: $dlp, id: $id, isDefault: $isDefault, logManagement: $logManagement, logManagementStrategy: $logManagementStrategy, logpush: $logpush, logpushPublicKey: $logpushPublicKey, modifiedAt: $modifiedAt, otel: $otel, rateLimitingInterval: $rateLimitingInterval, rateLimitingLimit: $rateLimitingLimit, rateLimitingTechnique: $rateLimitingTechnique, storeId: $storeId, stripe: $stripe, workersAiBillingMode: $workersAiBillingMode, zdr: $zdr)'; } 
 }
