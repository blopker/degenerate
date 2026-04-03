// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account.dart';import 'transfer_data_destination.dart';/// 
@immutable final class TransferData {const TransferData({required this.destination, this.amount, });

factory TransferData.fromJson(Map<String, dynamic> json) { return TransferData(
  amount: json['amount'] != null ? (json['amount'] as num).toInt() : null,
  destination: OneOf2.parse(json['destination'], fromA: (v) => v as String, fromB: (v) => Account.fromJson(v as Map<String, dynamic>),),
); }

/// The amount transferred to the destination account. This transfer will occur automatically after the payment succeeds. If no amount is specified, by default the entire payment amount is transferred to the destination account.
///  The amount must be less than or equal to the [amount](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-amount), and must be a positive integer
///  representing how much to transfer in the smallest currency unit (e.g., 100 cents to charge $1.00).
final int? amount;

/// The account (if any) that the payment is attributed to for tax reporting, and where funds from the payment are transferred to after payment success.
final TransferDataDestination destination;

Map<String, dynamic> toJson() { return {
  'amount': ?amount,
  'destination': destination.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('destination'); } 
TransferData copyWith({int Function()? amount, TransferDataDestination? destination, }) { return TransferData(
  amount: amount != null ? amount() : this.amount,
  destination: destination ?? this.destination,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TransferData &&
          amount == other.amount &&
          destination == other.destination; } 
@override int get hashCode { return Object.hash(amount, destination); } 
@override String toString() { return 'TransferData(amount: $amount, destination: $destination)'; } 
 }
