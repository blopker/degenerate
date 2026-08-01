// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class SetupIntentPaymentMethodOptionsKlarna {const SetupIntentPaymentMethodOptionsKlarna({this.currency = const Omittable.absent(), this.preferredLocale = const Omittable.absent(), });

factory SetupIntentPaymentMethodOptionsKlarna.fromJson(Map<String, dynamic> json) { return SetupIntentPaymentMethodOptionsKlarna(
  currency: json.containsKey('currency') ? Omittable(json['currency'] as String?) : const Omittable.absent(),
  preferredLocale: json.containsKey('preferred_locale') ? Omittable(json['preferred_locale'] as String?) : const Omittable.absent(),
); }

/// The currency of the setup intent. Three letter ISO currency code.
final Omittable<String?> currency;

/// Preferred locale of the Klarna checkout page that the customer is redirected to.
final Omittable<String?> preferredLocale;

Map<String, dynamic> toJson() { return {
  if (currency.isPresent) 'currency': currency.value,
  if (preferredLocale.isPresent) 'preferred_locale': preferredLocale.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'currency', 'preferred_locale'}.contains(key)); } 
SetupIntentPaymentMethodOptionsKlarna copyWith({Omittable<String?>? currency, Omittable<String?>? preferredLocale, }) { return SetupIntentPaymentMethodOptionsKlarna(
  currency: currency ?? this.currency,
  preferredLocale: preferredLocale ?? this.preferredLocale,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SetupIntentPaymentMethodOptionsKlarna &&
          currency == other.currency &&
          preferredLocale == other.preferredLocale; } 
@override int get hashCode { return Object.hash(currency, preferredLocale); } 
@override String toString() { return 'SetupIntentPaymentMethodOptionsKlarna(currency: $currency, preferredLocale: $preferredLocale)'; } 
 }
