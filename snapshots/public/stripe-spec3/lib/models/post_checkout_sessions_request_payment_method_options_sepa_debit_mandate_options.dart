// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_checkout_sessions_request_payment_method_options_sepa_debit_mandate_options_reference_prefix.dart';@immutable final class PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptions {const PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptions({this.referencePrefix});

factory PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptions.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptions(
  referencePrefix: json['reference_prefix'] != null ? OneOf2.parse(json['reference_prefix'], fromA: (v) => v as String, fromB: (v) => PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2.fromJson(v as String),) : null,
); }

final PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix? referencePrefix;

Map<String, dynamic> toJson() { return {
  if (referencePrefix != null) 'reference_prefix': referencePrefix?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'reference_prefix'}.contains(key)); } 
PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptions copyWith({PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix Function()? referencePrefix}) { return PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptions(
  referencePrefix: referencePrefix != null ? referencePrefix() : this.referencePrefix,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptions &&
          referencePrefix == other.referencePrefix; } 
@override int get hashCode { return referencePrefix.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptions(referencePrefix: $referencePrefix)'; } 
 }
