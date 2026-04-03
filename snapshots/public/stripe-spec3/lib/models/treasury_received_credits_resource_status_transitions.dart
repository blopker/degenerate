// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class TreasuryReceivedCreditsResourceStatusTransitions {const TreasuryReceivedCreditsResourceStatusTransitions({this.postedAt});

factory TreasuryReceivedCreditsResourceStatusTransitions.fromJson(Map<String, dynamic> json) { return TreasuryReceivedCreditsResourceStatusTransitions(
  postedAt: json['posted_at'] != null ? (json['posted_at'] as num).toInt() : null,
); }

/// Timestamp describing when the CreditReversal changed status to `posted`
final int? postedAt;

Map<String, dynamic> toJson() { return {
  'posted_at': ?postedAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'posted_at'}.contains(key)); } 
TreasuryReceivedCreditsResourceStatusTransitions copyWith({int? Function()? postedAt}) { return TreasuryReceivedCreditsResourceStatusTransitions(
  postedAt: postedAt != null ? postedAt() : this.postedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryReceivedCreditsResourceStatusTransitions &&
          postedAt == other.postedAt; } 
@override int get hashCode { return postedAt.hashCode; } 
@override String toString() { return 'TreasuryReceivedCreditsResourceStatusTransitions(postedAt: $postedAt)'; } 
 }
