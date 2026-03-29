// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class TreasuryReceivedDebitsResourceDebitReversalLinkedFlows {const TreasuryReceivedDebitsResourceDebitReversalLinkedFlows({this.issuingDispute});

factory TreasuryReceivedDebitsResourceDebitReversalLinkedFlows.fromJson(Map<String, dynamic> json) { return TreasuryReceivedDebitsResourceDebitReversalLinkedFlows(
  issuingDispute: json['issuing_dispute'] as String?,
); }

/// Set if there is an Issuing dispute associated with the DebitReversal.
final String? issuingDispute;

Map<String, dynamic> toJson() { return {
  'issuing_dispute': ?issuingDispute,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'issuing_dispute'}.contains(key)); } 
TreasuryReceivedDebitsResourceDebitReversalLinkedFlows copyWith({String? Function()? issuingDispute}) { return TreasuryReceivedDebitsResourceDebitReversalLinkedFlows(
  issuingDispute: issuingDispute != null ? issuingDispute() : this.issuingDispute,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryReceivedDebitsResourceDebitReversalLinkedFlows &&
          issuingDispute == other.issuingDispute; } 
@override int get hashCode { return issuingDispute.hashCode; } 
@override String toString() { return 'TreasuryReceivedDebitsResourceDebitReversalLinkedFlows(issuingDispute: $issuingDispute)'; } 
 }
