// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account.dart';import 'subscription_transfer_data_destination.dart';/// 
final class SubscriptionTransferData {const SubscriptionTransferData({this.amountPercent, required this.destination, });

factory SubscriptionTransferData.fromJson(Map<String, dynamic> json) { return SubscriptionTransferData(
  amountPercent: json['amount_percent'] != null ? (json['amount_percent'] as num).toDouble() : null,
  destination: OneOf2.parse(json['destination'], fromA: (v) => v as String, fromB: (v) => Account.fromJson(v as Map<String, dynamic>),),
); }

/// A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
final double? amountPercent;

/// The account where funds from the payment will be transferred to upon payment success.
final SubscriptionTransferDataDestination destination;

Map<String, dynamic> toJson() { return {
  'amount_percent': ?amountPercent,
  'destination': destination.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('destination'); } 
SubscriptionTransferData copyWith({double? Function()? amountPercent, SubscriptionTransferDataDestination? destination, }) { return SubscriptionTransferData(
  amountPercent: amountPercent != null ? amountPercent() : this.amountPercent,
  destination: destination ?? this.destination,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SubscriptionTransferData &&
          amountPercent == other.amountPercent &&
          destination == other.destination; } 
@override int get hashCode { return Object.hash(amountPercent, destination); } 
@override String toString() { return 'SubscriptionTransferData(amountPercent: $amountPercent, destination: $destination)'; } 
 }
