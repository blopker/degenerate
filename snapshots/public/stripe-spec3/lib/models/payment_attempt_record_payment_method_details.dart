// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payments_primitives_payment_records_resource_payment_method_details.dart';/// Information about the Payment Method debited for this payment.
final class PaymentAttemptRecordPaymentMethodDetails {const PaymentAttemptRecordPaymentMethodDetails({this.paymentsPrimitivesPaymentRecordsResourcePaymentMethodDetails});

factory PaymentAttemptRecordPaymentMethodDetails.fromJson(Map<String, dynamic> json) { return PaymentAttemptRecordPaymentMethodDetails(
  paymentsPrimitivesPaymentRecordsResourcePaymentMethodDetails: PaymentsPrimitivesPaymentRecordsResourcePaymentMethodDetails.canParse(json) ? PaymentsPrimitivesPaymentRecordsResourcePaymentMethodDetails.fromJson(json) : null,
); }

final PaymentsPrimitivesPaymentRecordsResourcePaymentMethodDetails? paymentsPrimitivesPaymentRecordsResourcePaymentMethodDetails;

/// At least one variant must be present.
bool get isValid { return paymentsPrimitivesPaymentRecordsResourcePaymentMethodDetails != null; } 
Map<String, dynamic> toJson() { return {
  ...?paymentsPrimitivesPaymentRecordsResourcePaymentMethodDetails?.toJson(),
}; } 
 }
