// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class TreasuryReceivedCreditsResourceStatusTransitions {const TreasuryReceivedCreditsResourceStatusTransitions({this.postedAt = const Omittable.absent()});

factory TreasuryReceivedCreditsResourceStatusTransitions.fromJson(Map<String, dynamic> json) { return TreasuryReceivedCreditsResourceStatusTransitions(
  postedAt: json.containsKey('posted_at') ? Omittable(json['posted_at'] != null ? (json['posted_at'] as num).toInt() : null) : const Omittable.absent(),
); }

/// Timestamp describing when the CreditReversal changed status to `posted`
final Omittable<int?> postedAt;

Map<String, dynamic> toJson() { return {
  if (postedAt.isPresent) 'posted_at': postedAt.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'posted_at'}.contains(key)); } 
TreasuryReceivedCreditsResourceStatusTransitions copyWith({Omittable<int?>? postedAt}) { return TreasuryReceivedCreditsResourceStatusTransitions(
  postedAt: postedAt ?? this.postedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryReceivedCreditsResourceStatusTransitions &&
          postedAt == other.postedAt; } 
@override int get hashCode { return postedAt.hashCode; } 
@override String toString() { return 'TreasuryReceivedCreditsResourceStatusTransitions(postedAt: $postedAt)'; } 
 }
