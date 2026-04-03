// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_intents_intent_increment_authorization_request_payment_details_customer_reference.dart';import 'post_payment_intents_intent_increment_authorization_request_payment_details_order_reference.dart';/// Provides industry-specific information about the charge.
@immutable final class PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetails {const PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetails({this.customerReference, this.orderReference, });

factory PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetails.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetails(
  customerReference: json['customer_reference'] != null ? OneOf2.parse(json['customer_reference'], fromA: (v) => v as String, fromB: (v) => PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReferenceVariant2.fromJson(v as String),) : null,
  orderReference: json['order_reference'] != null ? OneOf2.parse(json['order_reference'], fromA: (v) => v as String, fromB: (v) => PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReferenceVariant2.fromJson(v as String),) : null,
); }

final PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReference? customerReference;

final PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReference? orderReference;

Map<String, dynamic> toJson() { return {
  if (customerReference != null) 'customer_reference': customerReference?.toJson(),
  if (orderReference != null) 'order_reference': orderReference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'customer_reference', 'order_reference'}.contains(key)); } 
PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetails copyWith({PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsCustomerReference Function()? customerReference, PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetailsOrderReference Function()? orderReference, }) { return PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetails(
  customerReference: customerReference != null ? customerReference() : this.customerReference,
  orderReference: orderReference != null ? orderReference() : this.orderReference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetails &&
          customerReference == other.customerReference &&
          orderReference == other.orderReference; } 
@override int get hashCode { return Object.hash(customerReference, orderReference); } 
@override String toString() { return 'PostPaymentIntentsIntentIncrementAuthorizationRequestPaymentDetails(customerReference: $customerReference, orderReference: $orderReference)'; } 
 }
