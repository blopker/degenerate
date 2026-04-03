// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_setup_intents_request_payment_method_options_sepa_debit_mandate_options_reference_prefix.dart';@immutable final class PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptions {const PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptions({this.referencePrefix});

factory PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptions.fromJson(Map<String, dynamic> json) { return PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptions(
  referencePrefix: json['reference_prefix'] != null ? OneOf2.parse(json['reference_prefix'], fromA: (v) => v as String, fromB: (v) => PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2.fromJson(v as String),) : null,
); }

final PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix? referencePrefix;

Map<String, dynamic> toJson() { return {
  if (referencePrefix != null) 'reference_prefix': referencePrefix?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'reference_prefix'}.contains(key)); } 
PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptions copyWith({PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix Function()? referencePrefix}) { return PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptions(
  referencePrefix: referencePrefix != null ? referencePrefix() : this.referencePrefix,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptions &&
          referencePrefix == other.referencePrefix; } 
@override int get hashCode { return referencePrefix.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptions(referencePrefix: $referencePrefix)'; } 
 }
