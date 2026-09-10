// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_setup_intents_intent_confirm_request_payment_method_options_sepa_debit_mandate_options_reference_prefix.dart';@immutable final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptions {const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptions({this.referencePrefix});

factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptions.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptions(
  referencePrefix: json['reference_prefix'] != null ? PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix.fromJson(json['reference_prefix']) : null,
); }

final PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix? referencePrefix;

Map<String, dynamic> toJson() { return {
  if (referencePrefix != null) 'reference_prefix': referencePrefix?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'reference_prefix'}.contains(key)); } 
PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptions copyWith({PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix? Function()? referencePrefix}) { return PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptions(
  referencePrefix: referencePrefix != null ? referencePrefix() : this.referencePrefix,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptions &&
          referencePrefix == other.referencePrefix; } 
@override int get hashCode { return referencePrefix.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptions(referencePrefix: $referencePrefix)'; } 
 }
