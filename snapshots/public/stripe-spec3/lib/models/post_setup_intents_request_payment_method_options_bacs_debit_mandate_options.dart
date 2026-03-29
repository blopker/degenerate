// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_setup_intents_request_payment_method_options_bacs_debit_mandate_options_reference_prefix.dart';final class PostSetupIntentsRequestPaymentMethodOptionsBacsDebitMandateOptions {const PostSetupIntentsRequestPaymentMethodOptionsBacsDebitMandateOptions({this.referencePrefix});

factory PostSetupIntentsRequestPaymentMethodOptionsBacsDebitMandateOptions.fromJson(Map<String, dynamic> json) { return PostSetupIntentsRequestPaymentMethodOptionsBacsDebitMandateOptions(
  referencePrefix: json['reference_prefix'] != null ? OneOf2.parse(json['reference_prefix'], fromA: (v) => v as String, fromB: (v) => PostSetupIntentsRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2.fromJson(v as String),) : null,
); }

final PostSetupIntentsRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefix? referencePrefix;

Map<String, dynamic> toJson() { return {
  if (referencePrefix != null) 'reference_prefix': referencePrefix?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostSetupIntentsRequestPaymentMethodOptionsBacsDebitMandateOptions copyWith({PostSetupIntentsRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefix Function()? referencePrefix}) { return PostSetupIntentsRequestPaymentMethodOptionsBacsDebitMandateOptions(
  referencePrefix: referencePrefix != null ? referencePrefix() : this.referencePrefix,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsRequestPaymentMethodOptionsBacsDebitMandateOptions &&
          referencePrefix == other.referencePrefix; } 
@override int get hashCode { return referencePrefix.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodOptionsBacsDebitMandateOptions(referencePrefix: $referencePrefix)'; } 
 }
