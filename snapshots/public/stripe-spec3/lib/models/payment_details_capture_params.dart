// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_details_capture_params_customer_reference.dart';import 'payment_details_capture_params_order_reference.dart';@immutable final class PaymentDetailsCaptureParams {const PaymentDetailsCaptureParams({this.customerReference, this.orderReference, });

factory PaymentDetailsCaptureParams.fromJson(Map<String, dynamic> json) {return PaymentDetailsCaptureParams(
  customerReference: json['customer_reference'] != null ? PaymentDetailsCaptureParamsCustomerReference.fromJson(json['customer_reference']) : null,
  orderReference: json['order_reference'] != null ? PaymentDetailsCaptureParamsOrderReference.fromJson(json['order_reference']) : null,
);}

final PaymentDetailsCaptureParamsCustomerReference? customerReference;

final PaymentDetailsCaptureParamsOrderReference? orderReference;

Map<String, dynamic> toJson() {return {
  if (customerReference != null) 'customer_reference': customerReference?.toJson(),
  if (orderReference != null) 'order_reference': orderReference?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'customer_reference', 'order_reference'}.contains(key));}
PaymentDetailsCaptureParams copyWith({PaymentDetailsCaptureParamsCustomerReference? Function()? customerReference, PaymentDetailsCaptureParamsOrderReference? Function()? orderReference, }) {return PaymentDetailsCaptureParams(
  customerReference: customerReference != null ? customerReference() : this.customerReference,
  orderReference: orderReference != null ? orderReference() : this.orderReference,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is PaymentDetailsCaptureParams &&
          customerReference == other.customerReference &&
          orderReference == other.orderReference;}
@override int get hashCode {return Object.hash(customerReference, orderReference);}
@override String toString() {return 'PaymentDetailsCaptureParams(customerReference: $customerReference, orderReference: $orderReference)';}
}
