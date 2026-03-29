// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_details_customer_reference.dart';import 'payment_details_order_reference.dart';final class PaymentDetails {const PaymentDetails({this.customerReference, this.orderReference, });

factory PaymentDetails.fromJson(Map<String, dynamic> json) { return PaymentDetails(
  customerReference: json['customer_reference'] != null ? OneOf2.parse(json['customer_reference'], fromA: (v) => v as String, fromB: (v) => PaymentDetailsCustomerReferenceVariant2.fromJson(v as String),) : null,
  orderReference: json['order_reference'] != null ? OneOf2.parse(json['order_reference'], fromA: (v) => v as String, fromB: (v) => PaymentDetailsOrderReferenceVariant2.fromJson(v as String),) : null,
); }

final PaymentDetailsCustomerReference? customerReference;

final PaymentDetailsOrderReference? orderReference;

Map<String, dynamic> toJson() { return {
  if (customerReference != null) 'customer_reference': customerReference?.toJson(),
  if (orderReference != null) 'order_reference': orderReference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentDetails copyWith({PaymentDetailsCustomerReference Function()? customerReference, PaymentDetailsOrderReference Function()? orderReference, }) { return PaymentDetails(
  customerReference: customerReference != null ? customerReference() : this.customerReference,
  orderReference: orderReference != null ? orderReference() : this.orderReference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentDetails &&
          customerReference == other.customerReference &&
          orderReference == other.orderReference; } 
@override int get hashCode { return Object.hash(customerReference, orderReference); } 
@override String toString() { return 'PaymentDetails(customerReference: $customerReference, orderReference: $orderReference)'; } 
 }
