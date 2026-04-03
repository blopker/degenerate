// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchUpdateInstancesResponseResultPublicEndpointParamsRateLimitTechnique {const AiSearchUpdateInstancesResponseResultPublicEndpointParamsRateLimitTechnique._(this.value);

factory AiSearchUpdateInstancesResponseResultPublicEndpointParamsRateLimitTechnique.fromJson(String json) { return switch (json) {
  'fixed' => fixed,
  'sliding' => sliding,
  _ => AiSearchUpdateInstancesResponseResultPublicEndpointParamsRateLimitTechnique._(json),
}; }

static const AiSearchUpdateInstancesResponseResultPublicEndpointParamsRateLimitTechnique fixed = AiSearchUpdateInstancesResponseResultPublicEndpointParamsRateLimitTechnique._('fixed');

static const AiSearchUpdateInstancesResponseResultPublicEndpointParamsRateLimitTechnique sliding = AiSearchUpdateInstancesResponseResultPublicEndpointParamsRateLimitTechnique._('sliding');

static const List<AiSearchUpdateInstancesResponseResultPublicEndpointParamsRateLimitTechnique> values = [fixed, sliding];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchUpdateInstancesResponseResultPublicEndpointParamsRateLimitTechnique && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchUpdateInstancesResponseResultPublicEndpointParamsRateLimitTechnique($value)'; } 
 }
@immutable final class AiSearchUpdateInstancesResponseResultPublicEndpointParamsRateLimit {const AiSearchUpdateInstancesResponseResultPublicEndpointParamsRateLimit({this.periodMs, this.requests, this.technique, });

factory AiSearchUpdateInstancesResponseResultPublicEndpointParamsRateLimit.fromJson(Map<String, dynamic> json) { return AiSearchUpdateInstancesResponseResultPublicEndpointParamsRateLimit(
  periodMs: json['period_ms'] != null ? (json['period_ms'] as num).toInt() : null,
  requests: json['requests'] != null ? (json['requests'] as num).toInt() : null,
  technique: json['technique'] != null ? AiSearchUpdateInstancesResponseResultPublicEndpointParamsRateLimitTechnique.fromJson(json['technique'] as String) : null,
); }

final int? periodMs;

final int? requests;

final AiSearchUpdateInstancesResponseResultPublicEndpointParamsRateLimitTechnique? technique;

Map<String, dynamic> toJson() { return {
  'period_ms': ?periodMs,
  'requests': ?requests,
  if (technique != null) 'technique': technique?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'period_ms', 'requests', 'technique'}.contains(key)); } 
AiSearchUpdateInstancesResponseResultPublicEndpointParamsRateLimit copyWith({int Function()? periodMs, int Function()? requests, AiSearchUpdateInstancesResponseResultPublicEndpointParamsRateLimitTechnique Function()? technique, }) { return AiSearchUpdateInstancesResponseResultPublicEndpointParamsRateLimit(
  periodMs: periodMs != null ? periodMs() : this.periodMs,
  requests: requests != null ? requests() : this.requests,
  technique: technique != null ? technique() : this.technique,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchUpdateInstancesResponseResultPublicEndpointParamsRateLimit &&
          periodMs == other.periodMs &&
          requests == other.requests &&
          technique == other.technique; } 
@override int get hashCode { return Object.hash(periodMs, requests, technique); } 
@override String toString() { return 'AiSearchUpdateInstancesResponseResultPublicEndpointParamsRateLimit(periodMs: $periodMs, requests: $requests, technique: $technique)'; } 
 }
