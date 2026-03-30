// GENERATED CODE - DO NOT MODIFY BY HAND

/// The parameters used to automatically create a transfer after the payment is captured.
/// Learn more about the [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
final class PostPaymentIntentsIntentIncrementAuthorizationRequestTransferData {const PostPaymentIntentsIntentIncrementAuthorizationRequestTransferData({this.amount});

factory PostPaymentIntentsIntentIncrementAuthorizationRequestTransferData.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentIncrementAuthorizationRequestTransferData(
  amount: json['amount'] != null ? (json['amount'] as num).toInt() : null,
); }

final int? amount;

Map<String, dynamic> toJson() { return {
  'amount': ?amount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount'}.contains(key)); } 
PostPaymentIntentsIntentIncrementAuthorizationRequestTransferData copyWith({int Function()? amount}) { return PostPaymentIntentsIntentIncrementAuthorizationRequestTransferData(
  amount: amount != null ? amount() : this.amount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentIncrementAuthorizationRequestTransferData &&
          amount == other.amount; } 
@override int get hashCode { return amount.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentIncrementAuthorizationRequestTransferData(amount: $amount)'; } 
 }
