// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_treasury_transactions_status_transitions_posted_at.dart';@immutable final class GetTreasuryTransactionsStatusTransitions {const GetTreasuryTransactionsStatusTransitions({this.postedAt});

factory GetTreasuryTransactionsStatusTransitions.fromJson(Map<String, dynamic> json) { return GetTreasuryTransactionsStatusTransitions(
  postedAt: json['posted_at'] != null ? GetTreasuryTransactionsStatusTransitionsPostedAt.fromJson(json['posted_at']) : null,
); }

final GetTreasuryTransactionsStatusTransitionsPostedAt? postedAt;

Map<String, dynamic> toJson() { return {
  if (postedAt != null) 'posted_at': postedAt?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'posted_at'}.contains(key)); } 
GetTreasuryTransactionsStatusTransitions copyWith({GetTreasuryTransactionsStatusTransitionsPostedAt? Function()? postedAt}) { return GetTreasuryTransactionsStatusTransitions(
  postedAt: postedAt != null ? postedAt() : this.postedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetTreasuryTransactionsStatusTransitions &&
          postedAt == other.postedAt; } 
@override int get hashCode { return postedAt.hashCode; } 
@override String toString() { return 'GetTreasuryTransactionsStatusTransitions(postedAt: $postedAt)'; } 
 }
