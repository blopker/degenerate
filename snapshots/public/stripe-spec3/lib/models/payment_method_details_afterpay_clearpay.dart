// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsAfterpayClearpay {const PaymentMethodDetailsAfterpayClearpay({this.orderId = const Omittable.absent(), this.reference = const Omittable.absent(), });

factory PaymentMethodDetailsAfterpayClearpay.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsAfterpayClearpay(
  orderId: json.containsKey('order_id') ? Omittable(json['order_id'] as String?) : const Omittable.absent(),
  reference: json.containsKey('reference') ? Omittable(json['reference'] as String?) : const Omittable.absent(),
); }

/// The Afterpay order ID associated with this payment intent.
final Omittable<String?> orderId;

/// Order identifier shown to the merchant in Afterpay’s online portal.
final Omittable<String?> reference;

Map<String, dynamic> toJson() { return {
  if (orderId.isPresent) 'order_id': orderId.value,
  if (reference.isPresent) 'reference': reference.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'order_id', 'reference'}.contains(key)); } 
PaymentMethodDetailsAfterpayClearpay copyWith({Omittable<String?>? orderId, Omittable<String?>? reference, }) { return PaymentMethodDetailsAfterpayClearpay(
  orderId: orderId ?? this.orderId,
  reference: reference ?? this.reference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsAfterpayClearpay &&
          orderId == other.orderId &&
          reference == other.reference; } 
@override int get hashCode { return Object.hash(orderId, reference); } 
@override String toString() { return 'PaymentMethodDetailsAfterpayClearpay(orderId: $orderId, reference: $reference)'; } 
 }
