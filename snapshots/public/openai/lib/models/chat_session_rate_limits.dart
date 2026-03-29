// GENERATED CODE - DO NOT MODIFY BY HAND

/// Active per-minute request limit for the session.
final class ChatSessionRateLimits {const ChatSessionRateLimits({required this.maxRequestsPer1Minute});

factory ChatSessionRateLimits.fromJson(Map<String, dynamic> json) { return ChatSessionRateLimits(
  maxRequestsPer1Minute: (json['max_requests_per_1_minute'] as num).toInt(),
); }

/// Maximum allowed requests per one-minute window.
final int maxRequestsPer1Minute;

Map<String, dynamic> toJson() { return {
  'max_requests_per_1_minute': maxRequestsPer1Minute,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('max_requests_per_1_minute') && json['max_requests_per_1_minute'] is num; } 
ChatSessionRateLimits copyWith({int? maxRequestsPer1Minute}) { return ChatSessionRateLimits(
  maxRequestsPer1Minute: maxRequestsPer1Minute ?? this.maxRequestsPer1Minute,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChatSessionRateLimits &&
          maxRequestsPer1Minute == other.maxRequestsPer1Minute; } 
@override int get hashCode { return maxRequestsPer1Minute.hashCode; } 
@override String toString() { return 'ChatSessionRateLimits(maxRequestsPer1Minute: $maxRequestsPer1Minute)'; } 
 }
