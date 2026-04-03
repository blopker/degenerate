// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The parameters that you can use to automatically create a transfer after the payment
/// is captured. Learn more about the [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
@immutable final class PostPaymentIntentsIntentCaptureRequestTransferData {const PostPaymentIntentsIntentCaptureRequestTransferData({this.amount});

factory PostPaymentIntentsIntentCaptureRequestTransferData.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentCaptureRequestTransferData(
  amount: json['amount'] != null ? (json['amount'] as num).toInt() : null,
); }

final int? amount;

Map<String, dynamic> toJson() { return {
  'amount': ?amount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount'}.contains(key)); } 
PostPaymentIntentsIntentCaptureRequestTransferData copyWith({int Function()? amount}) { return PostPaymentIntentsIntentCaptureRequestTransferData(
  amount: amount != null ? amount() : this.amount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentCaptureRequestTransferData &&
          amount == other.amount; } 
@override int get hashCode { return amount.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentCaptureRequestTransferData(amount: $amount)'; } 
 }
