// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class InsightsUserStats2 {const InsightsUserStats2({this.actorType, this.actorName, this.actorId, this.integrationId, this.oauthApplicationId, this.totalRequestCount, this.rateLimitedRequestCount, this.lastRateLimitedTimestamp, this.lastRequestTimestamp, });

factory InsightsUserStats2.fromJson(Map<String, dynamic> json) { return InsightsUserStats2(
  actorType: json['actor_type'] as String?,
  actorName: json['actor_name'] as String?,
  actorId: json['actor_id'] != null ? (json['actor_id'] as num).toInt() : null,
  integrationId: json['integration_id'] != null ? (json['integration_id'] as num).toInt() : null,
  oauthApplicationId: json['oauth_application_id'] != null ? (json['oauth_application_id'] as num).toInt() : null,
  totalRequestCount: json['total_request_count'] != null ? (json['total_request_count'] as num).toInt() : null,
  rateLimitedRequestCount: json['rate_limited_request_count'] != null ? (json['rate_limited_request_count'] as num).toInt() : null,
  lastRateLimitedTimestamp: json['last_rate_limited_timestamp'] as String?,
  lastRequestTimestamp: json['last_request_timestamp'] as String?,
); }

final String? actorType;

final String? actorName;

final int? actorId;

final int? integrationId;

final int? oauthApplicationId;

final int? totalRequestCount;

final int? rateLimitedRequestCount;

final String? lastRateLimitedTimestamp;

final String? lastRequestTimestamp;

Map<String, dynamic> toJson() { return {
  'actor_type': ?actorType,
  'actor_name': ?actorName,
  'actor_id': ?actorId,
  'integration_id': ?integrationId,
  'oauth_application_id': ?oauthApplicationId,
  'total_request_count': ?totalRequestCount,
  'rate_limited_request_count': ?rateLimitedRequestCount,
  'last_rate_limited_timestamp': ?lastRateLimitedTimestamp,
  'last_request_timestamp': ?lastRequestTimestamp,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'actor_type', 'actor_name', 'actor_id', 'integration_id', 'oauth_application_id', 'total_request_count', 'rate_limited_request_count', 'last_rate_limited_timestamp', 'last_request_timestamp'}.contains(key)); } 
InsightsUserStats2 copyWith({String Function()? actorType, String Function()? actorName, int Function()? actorId, int? Function()? integrationId, int? Function()? oauthApplicationId, int Function()? totalRequestCount, int Function()? rateLimitedRequestCount, String? Function()? lastRateLimitedTimestamp, String Function()? lastRequestTimestamp, }) { return InsightsUserStats2(
  actorType: actorType != null ? actorType() : this.actorType,
  actorName: actorName != null ? actorName() : this.actorName,
  actorId: actorId != null ? actorId() : this.actorId,
  integrationId: integrationId != null ? integrationId() : this.integrationId,
  oauthApplicationId: oauthApplicationId != null ? oauthApplicationId() : this.oauthApplicationId,
  totalRequestCount: totalRequestCount != null ? totalRequestCount() : this.totalRequestCount,
  rateLimitedRequestCount: rateLimitedRequestCount != null ? rateLimitedRequestCount() : this.rateLimitedRequestCount,
  lastRateLimitedTimestamp: lastRateLimitedTimestamp != null ? lastRateLimitedTimestamp() : this.lastRateLimitedTimestamp,
  lastRequestTimestamp: lastRequestTimestamp != null ? lastRequestTimestamp() : this.lastRequestTimestamp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InsightsUserStats2 &&
          actorType == other.actorType &&
          actorName == other.actorName &&
          actorId == other.actorId &&
          integrationId == other.integrationId &&
          oauthApplicationId == other.oauthApplicationId &&
          totalRequestCount == other.totalRequestCount &&
          rateLimitedRequestCount == other.rateLimitedRequestCount &&
          lastRateLimitedTimestamp == other.lastRateLimitedTimestamp &&
          lastRequestTimestamp == other.lastRequestTimestamp; } 
@override int get hashCode { return Object.hash(actorType, actorName, actorId, integrationId, oauthApplicationId, totalRequestCount, rateLimitedRequestCount, lastRateLimitedTimestamp, lastRequestTimestamp); } 
@override String toString() { return 'InsightsUserStats2(actorType: $actorType, actorName: $actorName, actorId: $actorId, integrationId: $integrationId, oauthApplicationId: $oauthApplicationId, totalRequestCount: $totalRequestCount, rateLimitedRequestCount: $rateLimitedRequestCount, lastRateLimitedTimestamp: $lastRateLimitedTimestamp, lastRequestTimestamp: $lastRequestTimestamp)'; } 
 }
