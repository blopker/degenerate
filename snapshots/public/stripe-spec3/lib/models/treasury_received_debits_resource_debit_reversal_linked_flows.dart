// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class TreasuryReceivedDebitsResourceDebitReversalLinkedFlows {const TreasuryReceivedDebitsResourceDebitReversalLinkedFlows({this.issuingDispute = const Omittable.absent()});

factory TreasuryReceivedDebitsResourceDebitReversalLinkedFlows.fromJson(Map<String, dynamic> json) { return TreasuryReceivedDebitsResourceDebitReversalLinkedFlows(
  issuingDispute: json.containsKey('issuing_dispute') ? Omittable(json['issuing_dispute'] as String?) : const Omittable.absent(),
); }

/// Set if there is an Issuing dispute associated with the DebitReversal.
final Omittable<String?> issuingDispute;

Map<String, dynamic> toJson() { return {
  if (issuingDispute.isPresent) 'issuing_dispute': issuingDispute.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'issuing_dispute'}.contains(key)); } 
TreasuryReceivedDebitsResourceDebitReversalLinkedFlows copyWith({Omittable<String?>? issuingDispute}) { return TreasuryReceivedDebitsResourceDebitReversalLinkedFlows(
  issuingDispute: issuingDispute ?? this.issuingDispute,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryReceivedDebitsResourceDebitReversalLinkedFlows &&
          issuingDispute == other.issuingDispute; } 
@override int get hashCode { return issuingDispute.hashCode; } 
@override String toString() { return 'TreasuryReceivedDebitsResourceDebitReversalLinkedFlows(issuingDispute: $issuingDispute)'; } 
 }
