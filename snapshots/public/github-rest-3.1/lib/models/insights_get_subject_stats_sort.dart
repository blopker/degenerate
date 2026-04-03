// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class InsightsGetSubjectStatsSort {const InsightsGetSubjectStatsSort._(this.value);

factory InsightsGetSubjectStatsSort.fromJson(String json) { return switch (json) {
  'last_rate_limited_timestamp' => lastRateLimitedTimestamp,
  'last_request_timestamp' => lastRequestTimestamp,
  'rate_limited_request_count' => rateLimitedRequestCount,
  'subject_name' => subjectName,
  'total_request_count' => totalRequestCount,
  _ => InsightsGetSubjectStatsSort._(json),
}; }

static const InsightsGetSubjectStatsSort lastRateLimitedTimestamp = InsightsGetSubjectStatsSort._('last_rate_limited_timestamp');

static const InsightsGetSubjectStatsSort lastRequestTimestamp = InsightsGetSubjectStatsSort._('last_request_timestamp');

static const InsightsGetSubjectStatsSort rateLimitedRequestCount = InsightsGetSubjectStatsSort._('rate_limited_request_count');

static const InsightsGetSubjectStatsSort subjectName = InsightsGetSubjectStatsSort._('subject_name');

static const InsightsGetSubjectStatsSort totalRequestCount = InsightsGetSubjectStatsSort._('total_request_count');

static const List<InsightsGetSubjectStatsSort> values = [lastRateLimitedTimestamp, lastRequestTimestamp, rateLimitedRequestCount, subjectName, totalRequestCount];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InsightsGetSubjectStatsSort && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InsightsGetSubjectStatsSort($value)'; } 
 }
