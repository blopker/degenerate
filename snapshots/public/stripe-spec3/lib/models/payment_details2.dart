// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_details2_customer_reference.dart';import 'payment_details2_order_reference.dart';final class PaymentDetails2 {const PaymentDetails2({this.customerReference, this.orderReference, });

factory PaymentDetails2.fromJson(Map<String, dynamic> json) { return PaymentDetails2(
  customerReference: json['customer_reference'] != null ? OneOf2.parse(json['customer_reference'], fromA: (v) => v as String, fromB: (v) => PaymentDetails2CustomerReferenceVariant2.fromJson(v as String),) : null,
  orderReference: json['order_reference'] != null ? OneOf2.parse(json['order_reference'], fromA: (v) => v as String, fromB: (v) => PaymentDetails2OrderReferenceVariant2.fromJson(v as String),) : null,
); }

final PaymentDetails2CustomerReference? customerReference;

final PaymentDetails2OrderReference? orderReference;

Map<String, dynamic> toJson() { return {
  if (customerReference != null) 'customer_reference': customerReference?.toJson(),
  if (orderReference != null) 'order_reference': orderReference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentDetails2 copyWith({PaymentDetails2CustomerReference Function()? customerReference, PaymentDetails2OrderReference Function()? orderReference, }) { return PaymentDetails2(
  customerReference: customerReference != null ? customerReference() : this.customerReference,
  orderReference: orderReference != null ? orderReference() : this.orderReference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentDetails2 &&
          customerReference == other.customerReference &&
          orderReference == other.orderReference; } 
@override int get hashCode { return Object.hash(customerReference, orderReference); } 
@override String toString() { return 'PaymentDetails2(customerReference: $customerReference, orderReference: $orderReference)'; } 
 }
