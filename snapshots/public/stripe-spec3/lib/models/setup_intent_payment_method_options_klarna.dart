// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class SetupIntentPaymentMethodOptionsKlarna {const SetupIntentPaymentMethodOptionsKlarna({this.currency, this.preferredLocale, });

factory SetupIntentPaymentMethodOptionsKlarna.fromJson(Map<String, dynamic> json) { return SetupIntentPaymentMethodOptionsKlarna(
  currency: json['currency'] as String?,
  preferredLocale: json['preferred_locale'] as String?,
); }

/// The currency of the setup intent. Three letter ISO currency code.
final String? currency;

/// Preferred locale of the Klarna checkout page that the customer is redirected to.
final String? preferredLocale;

Map<String, dynamic> toJson() { return {
  'currency': ?currency,
  'preferred_locale': ?preferredLocale,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'currency', 'preferred_locale'}.contains(key)); } 
SetupIntentPaymentMethodOptionsKlarna copyWith({String? Function()? currency, String? Function()? preferredLocale, }) { return SetupIntentPaymentMethodOptionsKlarna(
  currency: currency != null ? currency() : this.currency,
  preferredLocale: preferredLocale != null ? preferredLocale() : this.preferredLocale,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SetupIntentPaymentMethodOptionsKlarna &&
          currency == other.currency &&
          preferredLocale == other.preferredLocale; } 
@override int get hashCode { return Object.hash(currency, preferredLocale); } 
@override String toString() { return 'SetupIntentPaymentMethodOptionsKlarna(currency: $currency, preferredLocale: $preferredLocale)'; } 
 }
