// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class PaymentMethodDetailsPaymentRecordAfterpayClearpay {const PaymentMethodDetailsPaymentRecordAfterpayClearpay({this.orderId, this.reference, });

factory PaymentMethodDetailsPaymentRecordAfterpayClearpay.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsPaymentRecordAfterpayClearpay(
  orderId: json['order_id'] as String?,
  reference: json['reference'] as String?,
); }

/// The Afterpay order ID associated with this payment intent.
final String? orderId;

/// Order identifier shown to the merchant in Afterpay's online portal.
final String? reference;

Map<String, dynamic> toJson() { return {
  'order_id': ?orderId,
  'reference': ?reference,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentMethodDetailsPaymentRecordAfterpayClearpay copyWith({String? Function()? orderId, String? Function()? reference, }) { return PaymentMethodDetailsPaymentRecordAfterpayClearpay(
  orderId: orderId != null ? orderId() : this.orderId,
  reference: reference != null ? reference() : this.reference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsPaymentRecordAfterpayClearpay &&
          orderId == other.orderId &&
          reference == other.reference; } 
@override int get hashCode { return Object.hash(orderId, reference); } 
@override String toString() { return 'PaymentMethodDetailsPaymentRecordAfterpayClearpay(orderId: $orderId, reference: $reference)'; } 
 }
