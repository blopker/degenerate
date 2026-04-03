// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Use this parameter to automatically create a Transfer when the payment succeeds. Learn more about the [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
@immutable final class PostPaymentIntentsIntentRequestTransferData {const PostPaymentIntentsIntentRequestTransferData({this.amount});

factory PostPaymentIntentsIntentRequestTransferData.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentRequestTransferData(
  amount: json['amount'] != null ? (json['amount'] as num).toInt() : null,
); }

final int? amount;

Map<String, dynamic> toJson() { return {
  'amount': ?amount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount'}.contains(key)); } 
PostPaymentIntentsIntentRequestTransferData copyWith({int Function()? amount}) { return PostPaymentIntentsIntentRequestTransferData(
  amount: amount != null ? amount() : this.amount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentRequestTransferData &&
          amount == other.amount; } 
@override int get hashCode { return amount.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestTransferData(amount: $amount)'; } 
 }
