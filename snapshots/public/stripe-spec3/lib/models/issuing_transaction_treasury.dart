// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class IssuingTransactionTreasury {const IssuingTransactionTreasury({this.receivedCredit, this.receivedDebit, });

factory IssuingTransactionTreasury.fromJson(Map<String, dynamic> json) { return IssuingTransactionTreasury(
  receivedCredit: json['received_credit'] as String?,
  receivedDebit: json['received_debit'] as String?,
); }

/// The Treasury [ReceivedCredit](https://docs.stripe.com/api/treasury/received_credits) representing this Issuing transaction if it is a refund
final String? receivedCredit;

/// The Treasury [ReceivedDebit](https://docs.stripe.com/api/treasury/received_debits) representing this Issuing transaction if it is a capture
final String? receivedDebit;

Map<String, dynamic> toJson() { return {
  'received_credit': ?receivedCredit,
  'received_debit': ?receivedDebit,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'received_credit', 'received_debit'}.contains(key)); } 
IssuingTransactionTreasury copyWith({String? Function()? receivedCredit, String? Function()? receivedDebit, }) { return IssuingTransactionTreasury(
  receivedCredit: receivedCredit != null ? receivedCredit() : this.receivedCredit,
  receivedDebit: receivedDebit != null ? receivedDebit() : this.receivedDebit,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingTransactionTreasury &&
          receivedCredit == other.receivedCredit &&
          receivedDebit == other.receivedDebit; } 
@override int get hashCode { return Object.hash(receivedCredit, receivedDebit); } 
@override String toString() { return 'IssuingTransactionTreasury(receivedCredit: $receivedCredit, receivedDebit: $receivedDebit)'; } 
 }
