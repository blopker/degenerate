// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentLinksResourceCompletedSessions {const PaymentLinksResourceCompletedSessions({required this.count, required this.limit, });

factory PaymentLinksResourceCompletedSessions.fromJson(Map<String, dynamic> json) { return PaymentLinksResourceCompletedSessions(
  count: (json['count'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
); }

/// The current number of checkout sessions that have been completed on the payment link which count towards the `completed_sessions` restriction to be met.
final int count;

/// The maximum number of checkout sessions that can be completed for the `completed_sessions` restriction to be met.
final int limit;

Map<String, dynamic> toJson() { return {
  'count': count,
  'limit': limit,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('count') && json['count'] is num &&
      json.containsKey('limit') && json['limit'] is num; } 
PaymentLinksResourceCompletedSessions copyWith({int? count, int? limit, }) { return PaymentLinksResourceCompletedSessions(
  count: count ?? this.count,
  limit: limit ?? this.limit,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentLinksResourceCompletedSessions &&
          count == other.count &&
          limit == other.limit; } 
@override int get hashCode { return Object.hash(count, limit); } 
@override String toString() { return 'PaymentLinksResourceCompletedSessions(count: $count, limit: $limit)'; } 
 }
