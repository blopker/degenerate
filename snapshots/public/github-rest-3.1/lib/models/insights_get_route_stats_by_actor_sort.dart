// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class InsightsGetRouteStatsByActorSort {const InsightsGetRouteStatsByActorSort._(this.value);

factory InsightsGetRouteStatsByActorSort.fromJson(String json) { return switch (json) {
  'last_rate_limited_timestamp' => lastRateLimitedTimestamp,
  'last_request_timestamp' => lastRequestTimestamp,
  'rate_limited_request_count' => rateLimitedRequestCount,
  'http_method' => httpMethod,
  'api_route' => apiRoute,
  'total_request_count' => totalRequestCount,
  _ => InsightsGetRouteStatsByActorSort._(json),
}; }

static const InsightsGetRouteStatsByActorSort lastRateLimitedTimestamp = InsightsGetRouteStatsByActorSort._('last_rate_limited_timestamp');

static const InsightsGetRouteStatsByActorSort lastRequestTimestamp = InsightsGetRouteStatsByActorSort._('last_request_timestamp');

static const InsightsGetRouteStatsByActorSort rateLimitedRequestCount = InsightsGetRouteStatsByActorSort._('rate_limited_request_count');

static const InsightsGetRouteStatsByActorSort httpMethod = InsightsGetRouteStatsByActorSort._('http_method');

static const InsightsGetRouteStatsByActorSort apiRoute = InsightsGetRouteStatsByActorSort._('api_route');

static const InsightsGetRouteStatsByActorSort totalRequestCount = InsightsGetRouteStatsByActorSort._('total_request_count');

static const List<InsightsGetRouteStatsByActorSort> values = [lastRateLimitedTimestamp, lastRequestTimestamp, rateLimitedRequestCount, httpMethod, apiRoute, totalRequestCount];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InsightsGetRouteStatsByActorSort && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InsightsGetRouteStatsByActorSort($value)'; } 
 }
