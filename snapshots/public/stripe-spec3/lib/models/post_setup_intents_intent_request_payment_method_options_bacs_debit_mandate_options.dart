// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_setup_intents_intent_request_payment_method_options_bacs_debit_mandate_options_reference_prefix.dart';@immutable final class PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptions {const PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptions({this.referencePrefix});

factory PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptions.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptions(
  referencePrefix: json['reference_prefix'] != null ? OneOf2.parse(json['reference_prefix'], fromA: (v) => v as String, fromB: (v) => PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2.fromJson(v as String),) : null,
); }

final PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefix? referencePrefix;

Map<String, dynamic> toJson() { return {
  if (referencePrefix != null) 'reference_prefix': referencePrefix?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'reference_prefix'}.contains(key)); } 
PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptions copyWith({PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefix Function()? referencePrefix}) { return PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptions(
  referencePrefix: referencePrefix != null ? referencePrefix() : this.referencePrefix,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptions &&
          referencePrefix == other.referencePrefix; } 
@override int get hashCode { return referencePrefix.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptions(referencePrefix: $referencePrefix)'; } 
 }
