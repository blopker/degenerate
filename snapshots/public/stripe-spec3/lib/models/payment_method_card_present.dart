// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_flows_private_payment_methods_card_present_common_wallet.dart';import 'payment_method_card_present_networks.dart';import 'payment_method_details_card_present_offline.dart';/// How card details were read in this transaction.
@immutable final class PaymentMethodCardPresentReadMethod {const PaymentMethodCardPresentReadMethod._(this.value);

factory PaymentMethodCardPresentReadMethod.fromJson(String json) { return switch (json) {
  'contact_emv' => contactEmv,
  'contactless_emv' => contactlessEmv,
  'contactless_magstripe_mode' => contactlessMagstripeMode,
  'magnetic_stripe_fallback' => magneticStripeFallback,
  'magnetic_stripe_track2' => magneticStripeTrack2,
  _ => PaymentMethodCardPresentReadMethod._(json),
}; }

static const PaymentMethodCardPresentReadMethod contactEmv = PaymentMethodCardPresentReadMethod._('contact_emv');

static const PaymentMethodCardPresentReadMethod contactlessEmv = PaymentMethodCardPresentReadMethod._('contactless_emv');

static const PaymentMethodCardPresentReadMethod contactlessMagstripeMode = PaymentMethodCardPresentReadMethod._('contactless_magstripe_mode');

static const PaymentMethodCardPresentReadMethod magneticStripeFallback = PaymentMethodCardPresentReadMethod._('magnetic_stripe_fallback');

static const PaymentMethodCardPresentReadMethod magneticStripeTrack2 = PaymentMethodCardPresentReadMethod._('magnetic_stripe_track2');

static const List<PaymentMethodCardPresentReadMethod> values = [contactEmv, contactlessEmv, contactlessMagstripeMode, magneticStripeFallback, magneticStripeTrack2];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodCardPresentReadMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodCardPresentReadMethod($value)'; } 
 }
/// 
@immutable final class PaymentMethodCardPresent {const PaymentMethodCardPresent({required this.expMonth, required this.expYear, this.brand = const Omittable.absent(), this.brandProduct = const Omittable.absent(), this.cardholderName = const Omittable.absent(), this.country = const Omittable.absent(), this.description = const Omittable.absent(), this.fingerprint = const Omittable.absent(), this.funding = const Omittable.absent(), this.issuer = const Omittable.absent(), this.last4 = const Omittable.absent(), this.networks = const Omittable.absent(), this.offline = const Omittable.absent(), this.preferredLocales = const Omittable.absent(), this.readMethod = const Omittable.absent(), this.wallet, });

factory PaymentMethodCardPresent.fromJson(Map<String, dynamic> json) { return PaymentMethodCardPresent(
  brand: json.containsKey('brand') ? Omittable(json['brand'] as String?) : const Omittable.absent(),
  brandProduct: json.containsKey('brand_product') ? Omittable(json['brand_product'] as String?) : const Omittable.absent(),
  cardholderName: json.containsKey('cardholder_name') ? Omittable(json['cardholder_name'] as String?) : const Omittable.absent(),
  country: json.containsKey('country') ? Omittable(json['country'] as String?) : const Omittable.absent(),
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  expMonth: (json['exp_month'] as num).toInt(),
  expYear: (json['exp_year'] as num).toInt(),
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  funding: json.containsKey('funding') ? Omittable(json['funding'] as String?) : const Omittable.absent(),
  issuer: json.containsKey('issuer') ? Omittable(json['issuer'] as String?) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
  networks: json.containsKey('networks') ? Omittable(json['networks'] != null ? PaymentMethodCardPresentNetworks.fromJson(json['networks'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  offline: json.containsKey('offline') ? Omittable(json['offline'] != null ? PaymentMethodDetailsCardPresentOffline.fromJson(json['offline'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  preferredLocales: json.containsKey('preferred_locales') ? Omittable((json['preferred_locales'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  readMethod: json.containsKey('read_method') ? Omittable(json['read_method'] != null ? PaymentMethodCardPresentReadMethod.fromJson(json['read_method'] as String) : null) : const Omittable.absent(),
  wallet: json['wallet'] != null ? PaymentFlowsPrivatePaymentMethodsCardPresentCommonWallet.fromJson(json['wallet'] as Map<String, dynamic>) : null,
); }

/// Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
final Omittable<String?> brand;

/// The [product code](https://stripe.com/docs/card-product-codes) that identifies the specific program or product associated with a card.
final Omittable<String?> brandProduct;

/// The cardholder name as read from the card, in [ISO 7813](https://en.wikipedia.org/wiki/ISO/IEC_7813) format. May include alphanumeric characters, special characters and first/last name separator (`/`). In some cases, the cardholder name may not be available depending on how the issuer has configured the card. Cardholder name is typically not available on swipe or contactless payments, such as those made with Apple Pay and Google Pay.
final Omittable<String?> cardholderName;

/// Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
final Omittable<String?> country;

/// A high-level description of the type of cards issued in this range.
final Omittable<String?> description;

/// Two-digit number representing the card's expiration month.
final int expMonth;

/// Four-digit number representing the card's expiration year.
final int expYear;

/// Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.
/// 
/// *As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
final Omittable<String?> fingerprint;

/// Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
final Omittable<String?> funding;

/// The name of the card's issuing bank.
final Omittable<String?> issuer;

/// The last four digits of the card.
final Omittable<String?> last4;

/// Contains information about card networks that can be used to process the payment.
final Omittable<PaymentMethodCardPresentNetworks?> networks;

/// Details about payment methods collected offline.
final Omittable<PaymentMethodDetailsCardPresentOffline?> offline;

/// The languages that the issuing bank recommends using for localizing any customer-facing text, as read from the card. Referenced from EMV tag 5F2D, data encoded on the card's chip.
final Omittable<List<String>?> preferredLocales;

/// How card details were read in this transaction.
final Omittable<PaymentMethodCardPresentReadMethod?> readMethod;

final PaymentFlowsPrivatePaymentMethodsCardPresentCommonWallet? wallet;

Map<String, dynamic> toJson() { return {
  if (brand.isPresent) 'brand': brand.value,
  if (brandProduct.isPresent) 'brand_product': brandProduct.value,
  if (cardholderName.isPresent) 'cardholder_name': cardholderName.value,
  if (country.isPresent) 'country': country.value,
  if (description.isPresent) 'description': description.value,
  'exp_month': expMonth,
  'exp_year': expYear,
  if (fingerprint.isPresent) 'fingerprint': fingerprint.value,
  if (funding.isPresent) 'funding': funding.value,
  if (issuer.isPresent) 'issuer': issuer.value,
  if (last4.isPresent) 'last4': last4.value,
  if (networks.isPresent) 'networks': networks.value?.toJson(),
  if (offline.isPresent) 'offline': offline.value?.toJson(),
  if (preferredLocales.isPresent) 'preferred_locales': preferredLocales.value,
  if (readMethod.isPresent) 'read_method': readMethod.value?.toJson(),
  if (wallet != null) 'wallet': wallet?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('exp_month') && json['exp_month'] is num &&
      json.containsKey('exp_year') && json['exp_year'] is num; } 
PaymentMethodCardPresent copyWith({Omittable<String?>? brand, Omittable<String?>? brandProduct, Omittable<String?>? cardholderName, Omittable<String?>? country, Omittable<String?>? description, int? expMonth, int? expYear, Omittable<String?>? fingerprint, Omittable<String?>? funding, Omittable<String?>? issuer, Omittable<String?>? last4, Omittable<PaymentMethodCardPresentNetworks?>? networks, Omittable<PaymentMethodDetailsCardPresentOffline?>? offline, Omittable<List<String>?>? preferredLocales, Omittable<PaymentMethodCardPresentReadMethod?>? readMethod, PaymentFlowsPrivatePaymentMethodsCardPresentCommonWallet? Function()? wallet, }) { return PaymentMethodCardPresent(
  brand: brand ?? this.brand,
  brandProduct: brandProduct ?? this.brandProduct,
  cardholderName: cardholderName ?? this.cardholderName,
  country: country ?? this.country,
  description: description ?? this.description,
  expMonth: expMonth ?? this.expMonth,
  expYear: expYear ?? this.expYear,
  fingerprint: fingerprint ?? this.fingerprint,
  funding: funding ?? this.funding,
  issuer: issuer ?? this.issuer,
  last4: last4 ?? this.last4,
  networks: networks ?? this.networks,
  offline: offline ?? this.offline,
  preferredLocales: preferredLocales ?? this.preferredLocales,
  readMethod: readMethod ?? this.readMethod,
  wallet: wallet != null ? wallet() : this.wallet,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodCardPresent &&
          brand == other.brand &&
          brandProduct == other.brandProduct &&
          cardholderName == other.cardholderName &&
          country == other.country &&
          description == other.description &&
          expMonth == other.expMonth &&
          expYear == other.expYear &&
          fingerprint == other.fingerprint &&
          funding == other.funding &&
          issuer == other.issuer &&
          last4 == other.last4 &&
          networks == other.networks &&
          offline == other.offline &&
          preferredLocales.isPresent == other.preferredLocales.isPresent &&
          listEquals(preferredLocales.value, other.preferredLocales.value) &&
          readMethod == other.readMethod &&
          wallet == other.wallet; } 
@override int get hashCode { return Object.hash(brand, brandProduct, cardholderName, country, description, expMonth, expYear, fingerprint, funding, issuer, last4, networks, offline, Object.hashAll(preferredLocales.value ?? const []), readMethod, wallet); } 
@override String toString() { return 'PaymentMethodCardPresent(brand: $brand, brandProduct: $brandProduct, cardholderName: $cardholderName, country: $country, description: $description, expMonth: $expMonth, expYear: $expYear, fingerprint: $fingerprint, funding: $funding, issuer: $issuer, last4: $last4, networks: $networks, offline: $offline, preferredLocales: $preferredLocales, readMethod: $readMethod, wallet: $wallet)'; } 
 }
