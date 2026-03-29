// GENERATED CODE - DO NOT MODIFY BY HAND

final class InsightsTimeStats2 {const InsightsTimeStats2({this.timestamp, this.totalRequestCount, this.rateLimitedRequestCount, });

factory InsightsTimeStats2.fromJson(Map<String, dynamic> json) { return InsightsTimeStats2(
  timestamp: json['timestamp'] as String?,
  totalRequestCount: json['total_request_count'] != null ? (json['total_request_count'] as num).toInt() : null,
  rateLimitedRequestCount: json['rate_limited_request_count'] != null ? (json['rate_limited_request_count'] as num).toInt() : null,
); }

final String? timestamp;

final int? totalRequestCount;

final int? rateLimitedRequestCount;

Map<String, dynamic> toJson() { return {
  'timestamp': ?timestamp,
  'total_request_count': ?totalRequestCount,
  'rate_limited_request_count': ?rateLimitedRequestCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'timestamp', 'total_request_count', 'rate_limited_request_count'}.contains(key)); } 
InsightsTimeStats2 copyWith({String Function()? timestamp, int Function()? totalRequestCount, int Function()? rateLimitedRequestCount, }) { return InsightsTimeStats2(
  timestamp: timestamp != null ? timestamp() : this.timestamp,
  totalRequestCount: totalRequestCount != null ? totalRequestCount() : this.totalRequestCount,
  rateLimitedRequestCount: rateLimitedRequestCount != null ? rateLimitedRequestCount() : this.rateLimitedRequestCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InsightsTimeStats2 &&
          timestamp == other.timestamp &&
          totalRequestCount == other.totalRequestCount &&
          rateLimitedRequestCount == other.rateLimitedRequestCount; } 
@override int get hashCode { return Object.hash(timestamp, totalRequestCount, rateLimitedRequestCount); } 
@override String toString() { return 'InsightsTimeStats2(timestamp: $timestamp, totalRequestCount: $totalRequestCount, rateLimitedRequestCount: $rateLimitedRequestCount)'; } 
 }
