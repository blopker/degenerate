// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'klarna_payer_details.dart';/// 
@immutable final class PaymentMethodDetailsKlarna {const PaymentMethodDetailsKlarna({this.payerDetails = const Omittable.absent(), this.paymentMethodCategory = const Omittable.absent(), this.preferredLocale = const Omittable.absent(), });

factory PaymentMethodDetailsKlarna.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsKlarna(
  payerDetails: json.containsKey('payer_details') ? Omittable(json['payer_details'] != null ? KlarnaPayerDetails.fromJson(json['payer_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  paymentMethodCategory: json.containsKey('payment_method_category') ? Omittable(json['payment_method_category'] as String?) : const Omittable.absent(),
  preferredLocale: json.containsKey('preferred_locale') ? Omittable(json['preferred_locale'] as String?) : const Omittable.absent(),
); }

/// The payer details for this transaction.
final Omittable<KlarnaPayerDetails?> payerDetails;

/// The Klarna payment method used for this transaction.
/// Can be one of `pay_later`, `pay_now`, `pay_with_financing`, or `pay_in_installments`
final Omittable<String?> paymentMethodCategory;

/// Preferred language of the Klarna authorization page that the customer is redirected to.
/// Can be one of `de-AT`, `en-AT`, `nl-BE`, `fr-BE`, `en-BE`, `de-DE`, `en-DE`, `da-DK`, `en-DK`, `es-ES`, `en-ES`, `fi-FI`, `sv-FI`, `en-FI`, `en-GB`, `en-IE`, `it-IT`, `en-IT`, `nl-NL`, `en-NL`, `nb-NO`, `en-NO`, `sv-SE`, `en-SE`, `en-US`, `es-US`, `fr-FR`, `en-FR`, `cs-CZ`, `en-CZ`, `ro-RO`, `en-RO`, `el-GR`, `en-GR`, `en-AU`, `en-NZ`, `en-CA`, `fr-CA`, `pl-PL`, `en-PL`, `pt-PT`, `en-PT`, `de-CH`, `fr-CH`, `it-CH`, or `en-CH`
final Omittable<String?> preferredLocale;

Map<String, dynamic> toJson() { return {
  if (payerDetails.isPresent) 'payer_details': payerDetails.value?.toJson(),
  if (paymentMethodCategory.isPresent) 'payment_method_category': paymentMethodCategory.value,
  if (preferredLocale.isPresent) 'preferred_locale': preferredLocale.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'payer_details', 'payment_method_category', 'preferred_locale'}.contains(key)); } 
PaymentMethodDetailsKlarna copyWith({Omittable<KlarnaPayerDetails?>? payerDetails, Omittable<String?>? paymentMethodCategory, Omittable<String?>? preferredLocale, }) { return PaymentMethodDetailsKlarna(
  payerDetails: payerDetails ?? this.payerDetails,
  paymentMethodCategory: paymentMethodCategory ?? this.paymentMethodCategory,
  preferredLocale: preferredLocale ?? this.preferredLocale,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsKlarna &&
          payerDetails == other.payerDetails &&
          paymentMethodCategory == other.paymentMethodCategory &&
          preferredLocale == other.preferredLocale; } 
@override int get hashCode { return Object.hash(payerDetails, paymentMethodCategory, preferredLocale); } 
@override String toString() { return 'PaymentMethodDetailsKlarna(payerDetails: $payerDetails, paymentMethodCategory: $paymentMethodCategory, preferredLocale: $preferredLocale)'; } 
 }
