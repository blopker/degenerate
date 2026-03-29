// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_setup_intents_intent_request_payment_method_options_sepa_debit_mandate_options_reference_prefix.dart';final class PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptions {const PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptions({this.referencePrefix});

factory PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptions.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptions(
  referencePrefix: json['reference_prefix'] != null ? OneOf2.parse(json['reference_prefix'], fromA: (v) => v as String, fromB: (v) => PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2.fromJson(v as String),) : null,
); }

final PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix? referencePrefix;

Map<String, dynamic> toJson() { return {
  if (referencePrefix != null) 'reference_prefix': referencePrefix?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptions copyWith({PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix Function()? referencePrefix}) { return PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptions(
  referencePrefix: referencePrefix != null ? referencePrefix() : this.referencePrefix,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptions &&
          referencePrefix == other.referencePrefix; } 
@override int get hashCode { return referencePrefix.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptions(referencePrefix: $referencePrefix)'; } 
 }
