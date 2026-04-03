// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchCreateInstancesResponseResultPublicEndpointParamsRateLimitTechnique {const AiSearchCreateInstancesResponseResultPublicEndpointParamsRateLimitTechnique._(this.value);

factory AiSearchCreateInstancesResponseResultPublicEndpointParamsRateLimitTechnique.fromJson(String json) { return switch (json) {
  'fixed' => fixed,
  'sliding' => sliding,
  _ => AiSearchCreateInstancesResponseResultPublicEndpointParamsRateLimitTechnique._(json),
}; }

static const AiSearchCreateInstancesResponseResultPublicEndpointParamsRateLimitTechnique fixed = AiSearchCreateInstancesResponseResultPublicEndpointParamsRateLimitTechnique._('fixed');

static const AiSearchCreateInstancesResponseResultPublicEndpointParamsRateLimitTechnique sliding = AiSearchCreateInstancesResponseResultPublicEndpointParamsRateLimitTechnique._('sliding');

static const List<AiSearchCreateInstancesResponseResultPublicEndpointParamsRateLimitTechnique> values = [fixed, sliding];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchCreateInstancesResponseResultPublicEndpointParamsRateLimitTechnique && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchCreateInstancesResponseResultPublicEndpointParamsRateLimitTechnique($value)'; } 
 }
@immutable final class AiSearchCreateInstancesResponseResultPublicEndpointParamsRateLimit {const AiSearchCreateInstancesResponseResultPublicEndpointParamsRateLimit({this.periodMs, this.requests, this.technique, });

factory AiSearchCreateInstancesResponseResultPublicEndpointParamsRateLimit.fromJson(Map<String, dynamic> json) { return AiSearchCreateInstancesResponseResultPublicEndpointParamsRateLimit(
  periodMs: json['period_ms'] != null ? (json['period_ms'] as num).toInt() : null,
  requests: json['requests'] != null ? (json['requests'] as num).toInt() : null,
  technique: json['technique'] != null ? AiSearchCreateInstancesResponseResultPublicEndpointParamsRateLimitTechnique.fromJson(json['technique'] as String) : null,
); }

final int? periodMs;

final int? requests;

final AiSearchCreateInstancesResponseResultPublicEndpointParamsRateLimitTechnique? technique;

Map<String, dynamic> toJson() { return {
  'period_ms': ?periodMs,
  'requests': ?requests,
  if (technique != null) 'technique': technique?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'period_ms', 'requests', 'technique'}.contains(key)); } 
AiSearchCreateInstancesResponseResultPublicEndpointParamsRateLimit copyWith({int Function()? periodMs, int Function()? requests, AiSearchCreateInstancesResponseResultPublicEndpointParamsRateLimitTechnique Function()? technique, }) { return AiSearchCreateInstancesResponseResultPublicEndpointParamsRateLimit(
  periodMs: periodMs != null ? periodMs() : this.periodMs,
  requests: requests != null ? requests() : this.requests,
  technique: technique != null ? technique() : this.technique,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchCreateInstancesResponseResultPublicEndpointParamsRateLimit &&
          periodMs == other.periodMs &&
          requests == other.requests &&
          technique == other.technique; } 
@override int get hashCode { return Object.hash(periodMs, requests, technique); } 
@override String toString() { return 'AiSearchCreateInstancesResponseResultPublicEndpointParamsRateLimit(periodMs: $periodMs, requests: $requests, technique: $technique)'; } 
 }
