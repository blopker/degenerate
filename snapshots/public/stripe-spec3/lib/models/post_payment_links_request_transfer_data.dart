// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The account (if any) the payments will be attributed to for tax reporting, and where funds from each payment will be transferred to.
@immutable final class PostPaymentLinksRequestTransferData {const PostPaymentLinksRequestTransferData({required this.destination, this.amount, });

factory PostPaymentLinksRequestTransferData.fromJson(Map<String, dynamic> json) { return PostPaymentLinksRequestTransferData(
  amount: json['amount'] != null ? (json['amount'] as num).toInt() : null,
  destination: json['destination'] as String,
); }

final int? amount;

final String destination;

Map<String, dynamic> toJson() { return {
  'amount': ?amount,
  'destination': destination,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('destination') && json['destination'] is String; } 
PostPaymentLinksRequestTransferData copyWith({int Function()? amount, String? destination, }) { return PostPaymentLinksRequestTransferData(
  amount: amount != null ? amount() : this.amount,
  destination: destination ?? this.destination,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentLinksRequestTransferData &&
          amount == other.amount &&
          destination == other.destination; } 
@override int get hashCode { return Object.hash(amount, destination); } 
@override String toString() { return 'PostPaymentLinksRequestTransferData(amount: $amount, destination: $destination)'; } 
 }
