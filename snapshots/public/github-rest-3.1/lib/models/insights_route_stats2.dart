// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class InsightsRouteStats2 {const InsightsRouteStats2({this.httpMethod, this.apiRoute, this.totalRequestCount, this.rateLimitedRequestCount, this.lastRateLimitedTimestamp, this.lastRequestTimestamp, });

factory InsightsRouteStats2.fromJson(Map<String, dynamic> json) { return InsightsRouteStats2(
  httpMethod: json['http_method'] as String?,
  apiRoute: json['api_route'] as String?,
  totalRequestCount: json['total_request_count'] != null ? (json['total_request_count'] as num).toInt() : null,
  rateLimitedRequestCount: json['rate_limited_request_count'] != null ? (json['rate_limited_request_count'] as num).toInt() : null,
  lastRateLimitedTimestamp: json['last_rate_limited_timestamp'] as String?,
  lastRequestTimestamp: json['last_request_timestamp'] as String?,
); }

/// The HTTP method
final String? httpMethod;

/// The API path's route template
final String? apiRoute;

/// The total number of requests within the queried time period
final int? totalRequestCount;

/// The total number of requests that were rate limited within the queried time period
final int? rateLimitedRequestCount;

final String? lastRateLimitedTimestamp;

final String? lastRequestTimestamp;

Map<String, dynamic> toJson() { return {
  'http_method': ?httpMethod,
  'api_route': ?apiRoute,
  'total_request_count': ?totalRequestCount,
  'rate_limited_request_count': ?rateLimitedRequestCount,
  'last_rate_limited_timestamp': ?lastRateLimitedTimestamp,
  'last_request_timestamp': ?lastRequestTimestamp,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'http_method', 'api_route', 'total_request_count', 'rate_limited_request_count', 'last_rate_limited_timestamp', 'last_request_timestamp'}.contains(key)); } 
InsightsRouteStats2 copyWith({String Function()? httpMethod, String Function()? apiRoute, int Function()? totalRequestCount, int Function()? rateLimitedRequestCount, String? Function()? lastRateLimitedTimestamp, String Function()? lastRequestTimestamp, }) { return InsightsRouteStats2(
  httpMethod: httpMethod != null ? httpMethod() : this.httpMethod,
  apiRoute: apiRoute != null ? apiRoute() : this.apiRoute,
  totalRequestCount: totalRequestCount != null ? totalRequestCount() : this.totalRequestCount,
  rateLimitedRequestCount: rateLimitedRequestCount != null ? rateLimitedRequestCount() : this.rateLimitedRequestCount,
  lastRateLimitedTimestamp: lastRateLimitedTimestamp != null ? lastRateLimitedTimestamp() : this.lastRateLimitedTimestamp,
  lastRequestTimestamp: lastRequestTimestamp != null ? lastRequestTimestamp() : this.lastRequestTimestamp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InsightsRouteStats2 &&
          httpMethod == other.httpMethod &&
          apiRoute == other.apiRoute &&
          totalRequestCount == other.totalRequestCount &&
          rateLimitedRequestCount == other.rateLimitedRequestCount &&
          lastRateLimitedTimestamp == other.lastRateLimitedTimestamp &&
          lastRequestTimestamp == other.lastRequestTimestamp; } 
@override int get hashCode { return Object.hash(httpMethod, apiRoute, totalRequestCount, rateLimitedRequestCount, lastRateLimitedTimestamp, lastRequestTimestamp); } 
@override String toString() { return 'InsightsRouteStats2(httpMethod: $httpMethod, apiRoute: $apiRoute, totalRequestCount: $totalRequestCount, rateLimitedRequestCount: $rateLimitedRequestCount, lastRateLimitedTimestamp: $lastRateLimitedTimestamp, lastRequestTimestamp: $lastRequestTimestamp)'; } 
 }
