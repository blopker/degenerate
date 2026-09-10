// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Custom processors represent payment processors not modeled directly in
/// the Stripe API. This resource consists of details about the custom processor
/// used for this payment attempt.
@immutable final class PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsResourceCustomDetails {const PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsResourceCustomDetails({this.paymentReference = const Omittable.absent()});

factory PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsResourceCustomDetails.fromJson(Map<String, dynamic> json) { return PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsResourceCustomDetails(
  paymentReference: json.containsKey('payment_reference') ? Omittable(json['payment_reference'] as String?) : const Omittable.absent(),
); }

/// An opaque string for manual reconciliation of this payment, for example a check number or a payment processor ID.
final Omittable<String?> paymentReference;

Map<String, dynamic> toJson() { return {
  if (paymentReference.isPresent) 'payment_reference': paymentReference.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'payment_reference'}.contains(key)); } 
PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsResourceCustomDetails copyWith({Omittable<String?>? paymentReference}) { return PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsResourceCustomDetails(
  paymentReference: paymentReference ?? this.paymentReference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsResourceCustomDetails &&
          paymentReference == other.paymentReference; } 
@override int get hashCode { return paymentReference.hashCode; } 
@override String toString() { return 'PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsResourceCustomDetails(paymentReference: $paymentReference)'; } 
 }
