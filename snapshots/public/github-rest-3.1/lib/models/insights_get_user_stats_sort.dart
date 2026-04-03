// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class InsightsGetUserStatsSort {const InsightsGetUserStatsSort._(this.value);

factory InsightsGetUserStatsSort.fromJson(String json) { return switch (json) {
  'last_rate_limited_timestamp' => lastRateLimitedTimestamp,
  'last_request_timestamp' => lastRequestTimestamp,
  'rate_limited_request_count' => rateLimitedRequestCount,
  'subject_name' => subjectName,
  'total_request_count' => totalRequestCount,
  _ => InsightsGetUserStatsSort._(json),
}; }

static const InsightsGetUserStatsSort lastRateLimitedTimestamp = InsightsGetUserStatsSort._('last_rate_limited_timestamp');

static const InsightsGetUserStatsSort lastRequestTimestamp = InsightsGetUserStatsSort._('last_request_timestamp');

static const InsightsGetUserStatsSort rateLimitedRequestCount = InsightsGetUserStatsSort._('rate_limited_request_count');

static const InsightsGetUserStatsSort subjectName = InsightsGetUserStatsSort._('subject_name');

static const InsightsGetUserStatsSort totalRequestCount = InsightsGetUserStatsSort._('total_request_count');

static const List<InsightsGetUserStatsSort> values = [lastRateLimitedTimestamp, lastRequestTimestamp, rateLimitedRequestCount, subjectName, totalRequestCount];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InsightsGetUserStatsSort && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InsightsGetUserStatsSort($value)'; } 
 }
