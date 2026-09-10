// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class IssuingAuthorizationTreasury {const IssuingAuthorizationTreasury({required this.receivedCredits, required this.receivedDebits, this.transaction = const Omittable.absent(), });

factory IssuingAuthorizationTreasury.fromJson(Map<String, dynamic> json) { return IssuingAuthorizationTreasury(
  receivedCredits: (json['received_credits'] as List<dynamic>).map((e) => e as String).toList(),
  receivedDebits: (json['received_debits'] as List<dynamic>).map((e) => e as String).toList(),
  transaction: json.containsKey('transaction') ? Omittable(json['transaction'] as String?) : const Omittable.absent(),
); }

/// The array of [ReceivedCredits](https://docs.stripe.com/api/treasury/received_credits) associated with this authorization
final List<String> receivedCredits;

/// The array of [ReceivedDebits](https://docs.stripe.com/api/treasury/received_debits) associated with this authorization
final List<String> receivedDebits;

/// The Treasury [Transaction](https://docs.stripe.com/api/treasury/transactions) associated with this authorization
final Omittable<String?> transaction;

Map<String, dynamic> toJson() { return {
  'received_credits': receivedCredits,
  'received_debits': receivedDebits,
  if (transaction.isPresent) 'transaction': transaction.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('received_credits') &&
      json.containsKey('received_debits'); } 
IssuingAuthorizationTreasury copyWith({List<String>? receivedCredits, List<String>? receivedDebits, Omittable<String?>? transaction, }) { return IssuingAuthorizationTreasury(
  receivedCredits: receivedCredits ?? this.receivedCredits,
  receivedDebits: receivedDebits ?? this.receivedDebits,
  transaction: transaction ?? this.transaction,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingAuthorizationTreasury &&
          listEquals(receivedCredits, other.receivedCredits) &&
          listEquals(receivedDebits, other.receivedDebits) &&
          transaction == other.transaction; } 
@override int get hashCode { return Object.hash(Object.hashAll(receivedCredits), Object.hashAll(receivedDebits), transaction); } 
@override String toString() { return 'IssuingAuthorizationTreasury(receivedCredits: $receivedCredits, receivedDebits: $receivedDebits, transaction: $transaction)'; } 
 }
