// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class TreasuryReceivedDebitsResourceLinkedFlows {const TreasuryReceivedDebitsResourceLinkedFlows({this.debitReversal = const Omittable.absent(), this.inboundTransfer = const Omittable.absent(), this.issuingAuthorization = const Omittable.absent(), this.issuingTransaction = const Omittable.absent(), this.payout = const Omittable.absent(), this.topup = const Omittable.absent(), });

factory TreasuryReceivedDebitsResourceLinkedFlows.fromJson(Map<String, dynamic> json) { return TreasuryReceivedDebitsResourceLinkedFlows(
  debitReversal: json.containsKey('debit_reversal') ? Omittable(json['debit_reversal'] as String?) : const Omittable.absent(),
  inboundTransfer: json.containsKey('inbound_transfer') ? Omittable(json['inbound_transfer'] as String?) : const Omittable.absent(),
  issuingAuthorization: json.containsKey('issuing_authorization') ? Omittable(json['issuing_authorization'] as String?) : const Omittable.absent(),
  issuingTransaction: json.containsKey('issuing_transaction') ? Omittable(json['issuing_transaction'] as String?) : const Omittable.absent(),
  payout: json.containsKey('payout') ? Omittable(json['payout'] as String?) : const Omittable.absent(),
  topup: json.containsKey('topup') ? Omittable(json['topup'] as String?) : const Omittable.absent(),
); }

/// The DebitReversal created as a result of this ReceivedDebit being reversed.
final Omittable<String?> debitReversal;

/// Set if the ReceivedDebit is associated with an InboundTransfer's return of funds.
final Omittable<String?> inboundTransfer;

/// Set if the ReceivedDebit was created due to an [Issuing Authorization](https://api.stripe.com#issuing_authorizations) object.
final Omittable<String?> issuingAuthorization;

/// Set if the ReceivedDebit is also viewable as an [Issuing Dispute](https://api.stripe.com#issuing_disputes) object.
final Omittable<String?> issuingTransaction;

/// Set if the ReceivedDebit was created due to a [Payout](https://api.stripe.com#payouts) object.
final Omittable<String?> payout;

/// Set if the ReceivedDebit was created due to a [Topup](https://api.stripe.com#topups) object.
final Omittable<String?> topup;

Map<String, dynamic> toJson() { return {
  if (debitReversal.isPresent) 'debit_reversal': debitReversal.value,
  if (inboundTransfer.isPresent) 'inbound_transfer': inboundTransfer.value,
  if (issuingAuthorization.isPresent) 'issuing_authorization': issuingAuthorization.value,
  if (issuingTransaction.isPresent) 'issuing_transaction': issuingTransaction.value,
  if (payout.isPresent) 'payout': payout.value,
  if (topup.isPresent) 'topup': topup.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'debit_reversal', 'inbound_transfer', 'issuing_authorization', 'issuing_transaction', 'payout', 'topup'}.contains(key)); } 
TreasuryReceivedDebitsResourceLinkedFlows copyWith({Omittable<String?>? debitReversal, Omittable<String?>? inboundTransfer, Omittable<String?>? issuingAuthorization, Omittable<String?>? issuingTransaction, Omittable<String?>? payout, Omittable<String?>? topup, }) { return TreasuryReceivedDebitsResourceLinkedFlows(
  debitReversal: debitReversal ?? this.debitReversal,
  inboundTransfer: inboundTransfer ?? this.inboundTransfer,
  issuingAuthorization: issuingAuthorization ?? this.issuingAuthorization,
  issuingTransaction: issuingTransaction ?? this.issuingTransaction,
  payout: payout ?? this.payout,
  topup: topup ?? this.topup,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryReceivedDebitsResourceLinkedFlows &&
          debitReversal == other.debitReversal &&
          inboundTransfer == other.inboundTransfer &&
          issuingAuthorization == other.issuingAuthorization &&
          issuingTransaction == other.issuingTransaction &&
          payout == other.payout &&
          topup == other.topup; } 
@override int get hashCode { return Object.hash(debitReversal, inboundTransfer, issuingAuthorization, issuingTransaction, payout, topup); } 
@override String toString() { return 'TreasuryReceivedDebitsResourceLinkedFlows(debitReversal: $debitReversal, inboundTransfer: $inboundTransfer, issuingAuthorization: $issuingAuthorization, issuingTransaction: $issuingTransaction, payout: $payout, topup: $topup)'; } 
 }
