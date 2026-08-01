// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentFlowsPaymentDetails {const PaymentFlowsPaymentDetails({this.customerReference = const Omittable.absent(), this.orderReference = const Omittable.absent(), });

factory PaymentFlowsPaymentDetails.fromJson(Map<String, dynamic> json) { return PaymentFlowsPaymentDetails(
  customerReference: json.containsKey('customer_reference') ? Omittable(json['customer_reference'] as String?) : const Omittable.absent(),
  orderReference: json.containsKey('order_reference') ? Omittable(json['order_reference'] as String?) : const Omittable.absent(),
); }

/// A unique value to identify the customer. This field is available only for card payments.
/// 
/// This field is truncated to 25 alphanumeric characters, excluding spaces, before being sent to card networks.
final Omittable<String?> customerReference;

/// A unique value assigned by the business to identify the transaction. Required for L2 and L3 rates.
/// 
/// Required when the Payment Method Types array contains `card`, including when [automatic_payment_methods.enabled](/api/payment_intents/create#create_payment_intent-automatic_payment_methods-enabled) is set to `true`.
/// 
/// For Cards, this field is truncated to 25 alphanumeric characters, excluding spaces, before being sent to card networks. For Klarna, this field is truncated to 255 characters and is visible to customers when they view the order in the Klarna app.
final Omittable<String?> orderReference;

Map<String, dynamic> toJson() { return {
  if (customerReference.isPresent) 'customer_reference': customerReference.value,
  if (orderReference.isPresent) 'order_reference': orderReference.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'customer_reference', 'order_reference'}.contains(key)); } 
PaymentFlowsPaymentDetails copyWith({Omittable<String?>? customerReference, Omittable<String?>? orderReference, }) { return PaymentFlowsPaymentDetails(
  customerReference: customerReference ?? this.customerReference,
  orderReference: orderReference ?? this.orderReference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentFlowsPaymentDetails &&
          customerReference == other.customerReference &&
          orderReference == other.orderReference; } 
@override int get hashCode { return Object.hash(customerReference, orderReference); } 
@override String toString() { return 'PaymentFlowsPaymentDetails(customerReference: $customerReference, orderReference: $orderReference)'; } 
 }
