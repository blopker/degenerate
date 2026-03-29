// GENERATED CODE - DO NOT MODIFY BY HAND

/// Preferred language of the SOFORT authorization page that the customer is redirected to.
final class PaymentMethodOptionsSofortPreferredLanguage {const PaymentMethodOptionsSofortPreferredLanguage._(this.value);

factory PaymentMethodOptionsSofortPreferredLanguage.fromJson(String json) { return switch (json) {
  'de' => de,
  'en' => en,
  'es' => es,
  'fr' => fr,
  'it' => it,
  'nl' => nl,
  'pl' => pl,
  _ => PaymentMethodOptionsSofortPreferredLanguage._(json),
}; }

static const PaymentMethodOptionsSofortPreferredLanguage de = PaymentMethodOptionsSofortPreferredLanguage._('de');

static const PaymentMethodOptionsSofortPreferredLanguage en = PaymentMethodOptionsSofortPreferredLanguage._('en');

static const PaymentMethodOptionsSofortPreferredLanguage es = PaymentMethodOptionsSofortPreferredLanguage._('es');

static const PaymentMethodOptionsSofortPreferredLanguage fr = PaymentMethodOptionsSofortPreferredLanguage._('fr');

static const PaymentMethodOptionsSofortPreferredLanguage it = PaymentMethodOptionsSofortPreferredLanguage._('it');

static const PaymentMethodOptionsSofortPreferredLanguage nl = PaymentMethodOptionsSofortPreferredLanguage._('nl');

static const PaymentMethodOptionsSofortPreferredLanguage pl = PaymentMethodOptionsSofortPreferredLanguage._('pl');

static const List<PaymentMethodOptionsSofortPreferredLanguage> values = [de, en, es, fr, it, nl, pl];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsSofortPreferredLanguage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsSofortPreferredLanguage($value)'; } 
 }
/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final class PaymentMethodOptionsSofortSetupFutureUsage {const PaymentMethodOptionsSofortSetupFutureUsage._(this.value);

factory PaymentMethodOptionsSofortSetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  'off_session' => offSession,
  _ => PaymentMethodOptionsSofortSetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsSofortSetupFutureUsage none = PaymentMethodOptionsSofortSetupFutureUsage._('none');

static const PaymentMethodOptionsSofortSetupFutureUsage offSession = PaymentMethodOptionsSofortSetupFutureUsage._('off_session');

static const List<PaymentMethodOptionsSofortSetupFutureUsage> values = [none, offSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsSofortSetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsSofortSetupFutureUsage($value)'; } 
 }
/// 
final class PaymentMethodOptionsSofort {const PaymentMethodOptionsSofort({this.preferredLanguage, this.setupFutureUsage, });

factory PaymentMethodOptionsSofort.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsSofort(
  preferredLanguage: json['preferred_language'] != null ? PaymentMethodOptionsSofortPreferredLanguage.fromJson(json['preferred_language'] as String) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsSofortSetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

/// Preferred language of the SOFORT authorization page that the customer is redirected to.
final PaymentMethodOptionsSofortPreferredLanguage? preferredLanguage;

/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final PaymentMethodOptionsSofortSetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (preferredLanguage != null) 'preferred_language': preferredLanguage?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentMethodOptionsSofort copyWith({PaymentMethodOptionsSofortPreferredLanguage? Function()? preferredLanguage, PaymentMethodOptionsSofortSetupFutureUsage Function()? setupFutureUsage, }) { return PaymentMethodOptionsSofort(
  preferredLanguage: preferredLanguage != null ? preferredLanguage() : this.preferredLanguage,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsSofort &&
          preferredLanguage == other.preferredLanguage &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(preferredLanguage, setupFutureUsage); } 
@override String toString() { return 'PaymentMethodOptionsSofort(preferredLanguage: $preferredLanguage, setupFutureUsage: $setupFutureUsage)'; } 
 }
