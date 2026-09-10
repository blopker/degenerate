// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class IssuingTransactionTreasury {const IssuingTransactionTreasury({this.receivedCredit = const Omittable.absent(), this.receivedDebit = const Omittable.absent(), });

factory IssuingTransactionTreasury.fromJson(Map<String, dynamic> json) { return IssuingTransactionTreasury(
  receivedCredit: json.containsKey('received_credit') ? Omittable(json['received_credit'] as String?) : const Omittable.absent(),
  receivedDebit: json.containsKey('received_debit') ? Omittable(json['received_debit'] as String?) : const Omittable.absent(),
); }

/// The Treasury [ReceivedCredit](https://docs.stripe.com/api/treasury/received_credits) representing this Issuing transaction if it is a refund
final Omittable<String?> receivedCredit;

/// The Treasury [ReceivedDebit](https://docs.stripe.com/api/treasury/received_debits) representing this Issuing transaction if it is a capture
final Omittable<String?> receivedDebit;

Map<String, dynamic> toJson() { return {
  if (receivedCredit.isPresent) 'received_credit': receivedCredit.value,
  if (receivedDebit.isPresent) 'received_debit': receivedDebit.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'received_credit', 'received_debit'}.contains(key)); } 
IssuingTransactionTreasury copyWith({Omittable<String?>? receivedCredit, Omittable<String?>? receivedDebit, }) { return IssuingTransactionTreasury(
  receivedCredit: receivedCredit ?? this.receivedCredit,
  receivedDebit: receivedDebit ?? this.receivedDebit,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingTransactionTreasury &&
          receivedCredit == other.receivedCredit &&
          receivedDebit == other.receivedDebit; } 
@override int get hashCode { return Object.hash(receivedCredit, receivedDebit); } 
@override String toString() { return 'IssuingTransactionTreasury(receivedCredit: $receivedCredit, receivedDebit: $receivedDebit)'; } 
 }
