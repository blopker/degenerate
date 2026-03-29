// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentLinksRequestRestrictionsCompletedSessions {const PostPaymentLinksRequestRestrictionsCompletedSessions({required this.limit});

factory PostPaymentLinksRequestRestrictionsCompletedSessions.fromJson(Map<String, dynamic> json) { return PostPaymentLinksRequestRestrictionsCompletedSessions(
  limit: (json['limit'] as num).toInt(),
); }

final int limit;

Map<String, dynamic> toJson() { return {
  'limit': limit,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('limit') && json['limit'] is num; } 
PostPaymentLinksRequestRestrictionsCompletedSessions copyWith({int? limit}) { return PostPaymentLinksRequestRestrictionsCompletedSessions(
  limit: limit ?? this.limit,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentLinksRequestRestrictionsCompletedSessions &&
          limit == other.limit; } 
@override int get hashCode { return limit.hashCode; } 
@override String toString() { return 'PostPaymentLinksRequestRestrictionsCompletedSessions(limit: $limit)'; } 
 }
