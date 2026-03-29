// GENERATED CODE - DO NOT MODIFY BY HAND

final class InsightsSubjectStats2 {const InsightsSubjectStats2({this.subjectType, this.subjectName, this.subjectId, this.totalRequestCount, this.rateLimitedRequestCount, this.lastRateLimitedTimestamp, this.lastRequestTimestamp, });

factory InsightsSubjectStats2.fromJson(Map<String, dynamic> json) { return InsightsSubjectStats2(
  subjectType: json['subject_type'] as String?,
  subjectName: json['subject_name'] as String?,
  subjectId: json['subject_id'] != null ? (json['subject_id'] as num).toInt() : null,
  totalRequestCount: json['total_request_count'] != null ? (json['total_request_count'] as num).toInt() : null,
  rateLimitedRequestCount: json['rate_limited_request_count'] != null ? (json['rate_limited_request_count'] as num).toInt() : null,
  lastRateLimitedTimestamp: json['last_rate_limited_timestamp'] as String?,
  lastRequestTimestamp: json['last_request_timestamp'] as String?,
); }

final String? subjectType;

final String? subjectName;

final int? subjectId;

final int? totalRequestCount;

final int? rateLimitedRequestCount;

final String? lastRateLimitedTimestamp;

final String? lastRequestTimestamp;

Map<String, dynamic> toJson() { return {
  'subject_type': ?subjectType,
  'subject_name': ?subjectName,
  'subject_id': ?subjectId,
  'total_request_count': ?totalRequestCount,
  'rate_limited_request_count': ?rateLimitedRequestCount,
  'last_rate_limited_timestamp': ?lastRateLimitedTimestamp,
  'last_request_timestamp': ?lastRequestTimestamp,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'subject_type', 'subject_name', 'subject_id', 'total_request_count', 'rate_limited_request_count', 'last_rate_limited_timestamp', 'last_request_timestamp'}.contains(key)); } 
InsightsSubjectStats2 copyWith({String Function()? subjectType, String Function()? subjectName, int Function()? subjectId, int Function()? totalRequestCount, int Function()? rateLimitedRequestCount, String? Function()? lastRateLimitedTimestamp, String Function()? lastRequestTimestamp, }) { return InsightsSubjectStats2(
  subjectType: subjectType != null ? subjectType() : this.subjectType,
  subjectName: subjectName != null ? subjectName() : this.subjectName,
  subjectId: subjectId != null ? subjectId() : this.subjectId,
  totalRequestCount: totalRequestCount != null ? totalRequestCount() : this.totalRequestCount,
  rateLimitedRequestCount: rateLimitedRequestCount != null ? rateLimitedRequestCount() : this.rateLimitedRequestCount,
  lastRateLimitedTimestamp: lastRateLimitedTimestamp != null ? lastRateLimitedTimestamp() : this.lastRateLimitedTimestamp,
  lastRequestTimestamp: lastRequestTimestamp != null ? lastRequestTimestamp() : this.lastRequestTimestamp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InsightsSubjectStats2 &&
          subjectType == other.subjectType &&
          subjectName == other.subjectName &&
          subjectId == other.subjectId &&
          totalRequestCount == other.totalRequestCount &&
          rateLimitedRequestCount == other.rateLimitedRequestCount &&
          lastRateLimitedTimestamp == other.lastRateLimitedTimestamp &&
          lastRequestTimestamp == other.lastRequestTimestamp; } 
@override int get hashCode { return Object.hash(subjectType, subjectName, subjectId, totalRequestCount, rateLimitedRequestCount, lastRateLimitedTimestamp, lastRequestTimestamp); } 
@override String toString() { return 'InsightsSubjectStats2(subjectType: $subjectType, subjectName: $subjectName, subjectId: $subjectId, totalRequestCount: $totalRequestCount, rateLimitedRequestCount: $rateLimitedRequestCount, lastRateLimitedTimestamp: $lastRateLimitedTimestamp, lastRequestTimestamp: $lastRequestTimestamp)'; } 
 }
