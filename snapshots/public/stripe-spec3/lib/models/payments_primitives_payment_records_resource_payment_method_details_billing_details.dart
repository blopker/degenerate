// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payments_primitives_payment_records_resource_billing_details.dart';/// The billing details associated with the method of payment.
final class PaymentsPrimitivesPaymentRecordsResourcePaymentMethodDetailsBillingDetails {const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodDetailsBillingDetails({this.paymentsPrimitivesPaymentRecordsResourceBillingDetails});

factory PaymentsPrimitivesPaymentRecordsResourcePaymentMethodDetailsBillingDetails.fromJson(Map<String, dynamic> json) { return PaymentsPrimitivesPaymentRecordsResourcePaymentMethodDetailsBillingDetails(
  paymentsPrimitivesPaymentRecordsResourceBillingDetails: PaymentsPrimitivesPaymentRecordsResourceBillingDetails.canParse(json) ? PaymentsPrimitivesPaymentRecordsResourceBillingDetails.fromJson(json) : null,
); }

final PaymentsPrimitivesPaymentRecordsResourceBillingDetails? paymentsPrimitivesPaymentRecordsResourceBillingDetails;

/// At least one variant must be present.
bool get isValid { return paymentsPrimitivesPaymentRecordsResourceBillingDetails != null; } 
Map<String, dynamic> toJson() { return {
  ...?paymentsPrimitivesPaymentRecordsResourceBillingDetails?.toJson(),
}; } 
 }
