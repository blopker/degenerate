// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param40_mandate_options_reference_prefix.dart';final class PaymentIntentPaymentMethodOptionsParam40MandateOptions {const PaymentIntentPaymentMethodOptionsParam40MandateOptions({this.referencePrefix});

factory PaymentIntentPaymentMethodOptionsParam40MandateOptions.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsParam40MandateOptions(
  referencePrefix: json['reference_prefix'] != null ? OneOf2.parse(json['reference_prefix'], fromA: (v) => v as String, fromB: (v) => PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2.fromJson(v as String),) : null,
); }

final PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefix? referencePrefix;

Map<String, dynamic> toJson() { return {
  if (referencePrefix != null) 'reference_prefix': referencePrefix?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentIntentPaymentMethodOptionsParam40MandateOptions copyWith({PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefix Function()? referencePrefix}) { return PaymentIntentPaymentMethodOptionsParam40MandateOptions(
  referencePrefix: referencePrefix != null ? referencePrefix() : this.referencePrefix,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam40MandateOptions &&
          referencePrefix == other.referencePrefix; } 
@override int get hashCode { return referencePrefix.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam40MandateOptions(referencePrefix: $referencePrefix)'; } 
 }
