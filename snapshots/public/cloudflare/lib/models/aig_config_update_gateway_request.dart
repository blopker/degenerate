// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_update_gateway_request_dlp.dart';import 'aig_config_update_gateway_request_dlp_variant1.dart';import 'aig_config_update_gateway_request_dlp_variant2.dart';import 'aig_config_update_gateway_request_otel.dart';import 'aig_config_update_gateway_request_stripe.dart';@immutable final class AigConfigUpdateGatewayRequestLogManagementStrategy {const AigConfigUpdateGatewayRequestLogManagementStrategy._(this.value);

factory AigConfigUpdateGatewayRequestLogManagementStrategy.fromJson(String json) { return switch (json) {
  'STOP_INSERTING' => stopInserting,
  'DELETE_OLDEST' => deleteOldest,
  _ => AigConfigUpdateGatewayRequestLogManagementStrategy._(json),
}; }

static const AigConfigUpdateGatewayRequestLogManagementStrategy stopInserting = AigConfigUpdateGatewayRequestLogManagementStrategy._('STOP_INSERTING');

static const AigConfigUpdateGatewayRequestLogManagementStrategy deleteOldest = AigConfigUpdateGatewayRequestLogManagementStrategy._('DELETE_OLDEST');

static const List<AigConfigUpdateGatewayRequestLogManagementStrategy> values = [stopInserting, deleteOldest];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigUpdateGatewayRequestLogManagementStrategy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigUpdateGatewayRequestLogManagementStrategy($value)'; } 
 }
@immutable final class AigConfigUpdateGatewayRequestRateLimitingTechnique {const AigConfigUpdateGatewayRequestRateLimitingTechnique._(this.value);

factory AigConfigUpdateGatewayRequestRateLimitingTechnique.fromJson(String json) { return switch (json) {
  'fixed' => fixed,
  'sliding' => sliding,
  _ => AigConfigUpdateGatewayRequestRateLimitingTechnique._(json),
}; }

static const AigConfigUpdateGatewayRequestRateLimitingTechnique fixed = AigConfigUpdateGatewayRequestRateLimitingTechnique._('fixed');

static const AigConfigUpdateGatewayRequestRateLimitingTechnique sliding = AigConfigUpdateGatewayRequestRateLimitingTechnique._('sliding');

static const List<AigConfigUpdateGatewayRequestRateLimitingTechnique> values = [fixed, sliding];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigUpdateGatewayRequestRateLimitingTechnique && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigUpdateGatewayRequestRateLimitingTechnique($value)'; } 
 }
/// Controls how Workers AI inference calls routed through this gateway are billed
@immutable final class AigConfigUpdateGatewayRequestWorkersAiBillingMode {const AigConfigUpdateGatewayRequestWorkersAiBillingMode._(this.value);

factory AigConfigUpdateGatewayRequestWorkersAiBillingMode.fromJson(String json) { return switch (json) {
  'postpaid' => postpaid,
  'unified' => unified,
  _ => AigConfigUpdateGatewayRequestWorkersAiBillingMode._(json),
}; }

static const AigConfigUpdateGatewayRequestWorkersAiBillingMode postpaid = AigConfigUpdateGatewayRequestWorkersAiBillingMode._('postpaid');

static const AigConfigUpdateGatewayRequestWorkersAiBillingMode unified = AigConfigUpdateGatewayRequestWorkersAiBillingMode._('unified');

static const List<AigConfigUpdateGatewayRequestWorkersAiBillingMode> values = [postpaid, unified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigUpdateGatewayRequestWorkersAiBillingMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigUpdateGatewayRequestWorkersAiBillingMode($value)'; } 
 }
@immutable final class AigConfigUpdateGatewayRequest {const AigConfigUpdateGatewayRequest({required this.cacheInvalidateOnUpdate, required this.cacheTtl, required this.collectLogs, required this.rateLimitingInterval, required this.rateLimitingLimit, required this.rateLimitingTechnique, this.authentication, this.dlp, this.logManagement = const Omittable.absent(), this.logManagementStrategy = const Omittable.absent(), this.logpush, this.logpushPublicKey = const Omittable.absent(), this.otel = const Omittable.absent(), this.storeId = const Omittable.absent(), this.stripe = const Omittable.absent(), this.workersAiBillingMode = AigConfigUpdateGatewayRequestWorkersAiBillingMode.postpaid, this.zdr, });

factory AigConfigUpdateGatewayRequest.fromJson(Map<String, dynamic> json) { return AigConfigUpdateGatewayRequest(
  authentication: json['authentication'] as bool?,
  cacheInvalidateOnUpdate: json['cache_invalidate_on_update'] as bool,
  cacheTtl: json['cache_ttl'] != null ? (json['cache_ttl'] as num).toInt() : null,
  collectLogs: json['collect_logs'] as bool,
  dlp: json['dlp'] != null ? OneOf2.parse(json['dlp'], fromA: (v) => AigConfigUpdateGatewayRequestDlpVariant1.fromJson(v as Map<String, dynamic>), fromB: (v) => AigConfigUpdateGatewayRequestDlpVariant2.fromJson(v as Map<String, dynamic>),) : null,
  logManagement: json.containsKey('log_management') ? Omittable(json['log_management'] != null ? (json['log_management'] as num).toInt() : null) : const Omittable.absent(),
  logManagementStrategy: json.containsKey('log_management_strategy') ? Omittable(json['log_management_strategy'] != null ? AigConfigUpdateGatewayRequestLogManagementStrategy.fromJson(json['log_management_strategy'] as String) : null) : const Omittable.absent(),
  logpush: json['logpush'] as bool?,
  logpushPublicKey: json.containsKey('logpush_public_key') ? Omittable(json['logpush_public_key'] as String?) : const Omittable.absent(),
  otel: json.containsKey('otel') ? Omittable((json['otel'] as List<dynamic>?)?.map((e) => AigConfigUpdateGatewayRequestOtel.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  rateLimitingInterval: json['rate_limiting_interval'] != null ? (json['rate_limiting_interval'] as num).toInt() : null,
  rateLimitingLimit: json['rate_limiting_limit'] != null ? (json['rate_limiting_limit'] as num).toInt() : null,
  rateLimitingTechnique: AigConfigUpdateGatewayRequestRateLimitingTechnique.fromJson(json['rate_limiting_technique'] as String),
  storeId: json.containsKey('store_id') ? Omittable(json['store_id'] as String?) : const Omittable.absent(),
  stripe: json.containsKey('stripe') ? Omittable(json['stripe'] != null ? AigConfigUpdateGatewayRequestStripe.fromJson(json['stripe'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  workersAiBillingMode: json.containsKey('workers_ai_billing_mode') ? AigConfigUpdateGatewayRequestWorkersAiBillingMode.fromJson(json['workers_ai_billing_mode'] as String) : AigConfigUpdateGatewayRequestWorkersAiBillingMode.postpaid,
  zdr: json['zdr'] as bool?,
); }

final bool? authentication;

final bool cacheInvalidateOnUpdate;

final int? cacheTtl;

final bool collectLogs;

final AigConfigUpdateGatewayRequestDlp? dlp;

final Omittable<int?> logManagement;

final Omittable<AigConfigUpdateGatewayRequestLogManagementStrategy?> logManagementStrategy;

final bool? logpush;

final Omittable<String?> logpushPublicKey;

final Omittable<List<AigConfigUpdateGatewayRequestOtel>?> otel;

final int? rateLimitingInterval;

final int? rateLimitingLimit;

final AigConfigUpdateGatewayRequestRateLimitingTechnique rateLimitingTechnique;

final Omittable<String?> storeId;

final Omittable<AigConfigUpdateGatewayRequestStripe?> stripe;

/// Controls how Workers AI inference calls routed through this gateway are billed
final AigConfigUpdateGatewayRequestWorkersAiBillingMode workersAiBillingMode;

final bool? zdr;

Map<String, dynamic> toJson() { return {
  'authentication': ?authentication,
  'cache_invalidate_on_update': cacheInvalidateOnUpdate,
  'cache_ttl': cacheTtl,
  'collect_logs': collectLogs,
  if (dlp != null) 'dlp': dlp?.toJson(),
  if (logManagement.isPresent) 'log_management': logManagement.value,
  if (logManagementStrategy.isPresent) 'log_management_strategy': logManagementStrategy.value?.toJson(),
  'logpush': ?logpush,
  if (logpushPublicKey.isPresent) 'logpush_public_key': logpushPublicKey.value,
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
      json.containsKey('cache_ttl') && json['cache_ttl'] is num &&
      json.containsKey('collect_logs') && json['collect_logs'] is bool &&
      json.containsKey('rate_limiting_interval') && json['rate_limiting_interval'] is num &&
      json.containsKey('rate_limiting_limit') && json['rate_limiting_limit'] is num &&
      json.containsKey('rate_limiting_technique'); } 
AigConfigUpdateGatewayRequest copyWith({bool? Function()? authentication, bool? cacheInvalidateOnUpdate, int? Function()? cacheTtl, bool? collectLogs, AigConfigUpdateGatewayRequestDlp? Function()? dlp, Omittable<int?>? logManagement, Omittable<AigConfigUpdateGatewayRequestLogManagementStrategy?>? logManagementStrategy, bool? Function()? logpush, Omittable<String?>? logpushPublicKey, Omittable<List<AigConfigUpdateGatewayRequestOtel>?>? otel, int? Function()? rateLimitingInterval, int? Function()? rateLimitingLimit, AigConfigUpdateGatewayRequestRateLimitingTechnique? rateLimitingTechnique, Omittable<String?>? storeId, Omittable<AigConfigUpdateGatewayRequestStripe?>? stripe, AigConfigUpdateGatewayRequestWorkersAiBillingMode Function()? workersAiBillingMode, bool? Function()? zdr, }) { return AigConfigUpdateGatewayRequest(
  authentication: authentication != null ? authentication() : this.authentication,
  cacheInvalidateOnUpdate: cacheInvalidateOnUpdate ?? this.cacheInvalidateOnUpdate,
  cacheTtl: cacheTtl != null ? cacheTtl() : this.cacheTtl,
  collectLogs: collectLogs ?? this.collectLogs,
  dlp: dlp != null ? dlp() : this.dlp,
  logManagement: logManagement ?? this.logManagement,
  logManagementStrategy: logManagementStrategy ?? this.logManagementStrategy,
  logpush: logpush != null ? logpush() : this.logpush,
  logpushPublicKey: logpushPublicKey ?? this.logpushPublicKey,
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
      other is AigConfigUpdateGatewayRequest &&
          authentication == other.authentication &&
          cacheInvalidateOnUpdate == other.cacheInvalidateOnUpdate &&
          cacheTtl == other.cacheTtl &&
          collectLogs == other.collectLogs &&
          dlp == other.dlp &&
          logManagement == other.logManagement &&
          logManagementStrategy == other.logManagementStrategy &&
          logpush == other.logpush &&
          logpushPublicKey == other.logpushPublicKey &&
          otel.isPresent == other.otel.isPresent &&
          listEquals(otel.value, other.otel.value) &&
          rateLimitingInterval == other.rateLimitingInterval &&
          rateLimitingLimit == other.rateLimitingLimit &&
          rateLimitingTechnique == other.rateLimitingTechnique &&
          storeId == other.storeId &&
          stripe == other.stripe &&
          workersAiBillingMode == other.workersAiBillingMode &&
          zdr == other.zdr; } 
@override int get hashCode { return Object.hash(authentication, cacheInvalidateOnUpdate, cacheTtl, collectLogs, dlp, logManagement, logManagementStrategy, logpush, logpushPublicKey, Object.hashAll(otel.value ?? const []), rateLimitingInterval, rateLimitingLimit, rateLimitingTechnique, storeId, stripe, workersAiBillingMode, zdr); } 
@override String toString() { return 'AigConfigUpdateGatewayRequest(authentication: $authentication, cacheInvalidateOnUpdate: $cacheInvalidateOnUpdate, cacheTtl: $cacheTtl, collectLogs: $collectLogs, dlp: $dlp, logManagement: $logManagement, logManagementStrategy: $logManagementStrategy, logpush: $logpush, logpushPublicKey: $logpushPublicKey, otel: $otel, rateLimitingInterval: $rateLimitingInterval, rateLimitingLimit: $rateLimitingLimit, rateLimitingTechnique: $rateLimitingTechnique, storeId: $storeId, stripe: $stripe, workersAiBillingMode: $workersAiBillingMode, zdr: $zdr)'; } 
 }
