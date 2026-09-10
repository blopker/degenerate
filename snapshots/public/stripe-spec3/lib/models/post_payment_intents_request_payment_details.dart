// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_intents_request_payment_details_customer_reference.dart';import 'post_payment_intents_request_payment_details_order_reference.dart';/// Provides industry-specific information about the charge.
@immutable final class PostPaymentIntentsRequestPaymentDetails {const PostPaymentIntentsRequestPaymentDetails({this.customerReference, this.orderReference, });

factory PostPaymentIntentsRequestPaymentDetails.fromJson(Map<String, dynamic> json) {return PostPaymentIntentsRequestPaymentDetails(
  customerReference: json['customer_reference'] != null ? PostPaymentIntentsRequestPaymentDetailsCustomerReference.fromJson(json['customer_reference']) : null,
  orderReference: json['order_reference'] != null ? PostPaymentIntentsRequestPaymentDetailsOrderReference.fromJson(json['order_reference']) : null,
);}

final PostPaymentIntentsRequestPaymentDetailsCustomerReference? customerReference;

final PostPaymentIntentsRequestPaymentDetailsOrderReference? orderReference;

Map<String, dynamic> toJson() {return {
  if (customerReference != null) 'customer_reference': customerReference?.toJson(),
  if (orderReference != null) 'order_reference': orderReference?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'customer_reference', 'order_reference'}.contains(key));}
PostPaymentIntentsRequestPaymentDetails copyWith({PostPaymentIntentsRequestPaymentDetailsCustomerReference? Function()? customerReference, PostPaymentIntentsRequestPaymentDetailsOrderReference? Function()? orderReference, }) {return PostPaymentIntentsRequestPaymentDetails(
  customerReference: customerReference != null ? customerReference() : this.customerReference,
  orderReference: orderReference != null ? orderReference() : this.orderReference,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentDetails &&
          customerReference == other.customerReference &&
          orderReference == other.orderReference;}
@override int get hashCode {return Object.hash(customerReference, orderReference);}
@override String toString() {return 'PostPaymentIntentsRequestPaymentDetails(customerReference: $customerReference, orderReference: $orderReference)';}
}
