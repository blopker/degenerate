// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsSamsungPay {const PaymentMethodDetailsSamsungPay({this.buyerId, this.transactionId, });

factory PaymentMethodDetailsSamsungPay.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsSamsungPay(
  buyerId: json['buyer_id'] as String?,
  transactionId: json['transaction_id'] as String?,
); }

/// A unique identifier for the buyer as determined by the local payment processor.
final String? buyerId;

/// The Samsung Pay transaction ID associated with this payment.
final String? transactionId;

Map<String, dynamic> toJson() { return {
  'buyer_id': ?buyerId,
  'transaction_id': ?transactionId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'buyer_id', 'transaction_id'}.contains(key)); } 
PaymentMethodDetailsSamsungPay copyWith({String? Function()? buyerId, String? Function()? transactionId, }) { return PaymentMethodDetailsSamsungPay(
  buyerId: buyerId != null ? buyerId() : this.buyerId,
  transactionId: transactionId != null ? transactionId() : this.transactionId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsSamsungPay &&
          buyerId == other.buyerId &&
          transactionId == other.transactionId; } 
@override int get hashCode { return Object.hash(buyerId, transactionId); } 
@override String toString() { return 'PaymentMethodDetailsSamsungPay(buyerId: $buyerId, transactionId: $transactionId)'; } 
 }
