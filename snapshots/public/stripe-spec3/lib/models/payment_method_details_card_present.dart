// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_flows_private_payment_methods_card_present_common_wallet.dart';import 'payment_method_details_card_present_offline.dart';import 'payment_method_details_card_present_receipt.dart';/// How card details were read in this transaction.
@immutable final class PaymentMethodDetailsCardPresentReadMethod {const PaymentMethodDetailsCardPresentReadMethod._(this.value);

factory PaymentMethodDetailsCardPresentReadMethod.fromJson(String json) { return switch (json) {
  'contact_emv' => contactEmv,
  'contactless_emv' => contactlessEmv,
  'contactless_magstripe_mode' => contactlessMagstripeMode,
  'magnetic_stripe_fallback' => magneticStripeFallback,
  'magnetic_stripe_track2' => magneticStripeTrack2,
  _ => PaymentMethodDetailsCardPresentReadMethod._(json),
}; }

static const PaymentMethodDetailsCardPresentReadMethod contactEmv = PaymentMethodDetailsCardPresentReadMethod._('contact_emv');

static const PaymentMethodDetailsCardPresentReadMethod contactlessEmv = PaymentMethodDetailsCardPresentReadMethod._('contactless_emv');

static const PaymentMethodDetailsCardPresentReadMethod contactlessMagstripeMode = PaymentMethodDetailsCardPresentReadMethod._('contactless_magstripe_mode');

static const PaymentMethodDetailsCardPresentReadMethod magneticStripeFallback = PaymentMethodDetailsCardPresentReadMethod._('magnetic_stripe_fallback');

static const PaymentMethodDetailsCardPresentReadMethod magneticStripeTrack2 = PaymentMethodDetailsCardPresentReadMethod._('magnetic_stripe_track2');

static const List<PaymentMethodDetailsCardPresentReadMethod> values = [contactEmv, contactlessEmv, contactlessMagstripeMode, magneticStripeFallback, magneticStripeTrack2];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodDetailsCardPresentReadMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsCardPresentReadMethod($value)'; } 
 }
/// 
@immutable final class PaymentMethodDetailsCardPresent {const PaymentMethodDetailsCardPresent({required this.expMonth, required this.expYear, required this.incrementalAuthorizationSupported, required this.overcaptureSupported, this.amountAuthorized = const Omittable.absent(), this.brand = const Omittable.absent(), this.brandProduct = const Omittable.absent(), this.captureBefore, this.cardholderName = const Omittable.absent(), this.country = const Omittable.absent(), this.description = const Omittable.absent(), this.emvAuthData = const Omittable.absent(), this.fingerprint = const Omittable.absent(), this.funding = const Omittable.absent(), this.generatedCard = const Omittable.absent(), this.issuer = const Omittable.absent(), this.last4 = const Omittable.absent(), this.location, this.network = const Omittable.absent(), this.networkTransactionId = const Omittable.absent(), this.offline = const Omittable.absent(), this.preferredLocales = const Omittable.absent(), this.readMethod = const Omittable.absent(), this.reader, this.receipt = const Omittable.absent(), this.wallet, });

factory PaymentMethodDetailsCardPresent.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsCardPresent(
  amountAuthorized: json.containsKey('amount_authorized') ? Omittable(json['amount_authorized'] != null ? (json['amount_authorized'] as num).toInt() : null) : const Omittable.absent(),
  brand: json.containsKey('brand') ? Omittable(json['brand'] as String?) : const Omittable.absent(),
  brandProduct: json.containsKey('brand_product') ? Omittable(json['brand_product'] as String?) : const Omittable.absent(),
  captureBefore: json['capture_before'] != null ? (json['capture_before'] as num).toInt() : null,
  cardholderName: json.containsKey('cardholder_name') ? Omittable(json['cardholder_name'] as String?) : const Omittable.absent(),
  country: json.containsKey('country') ? Omittable(json['country'] as String?) : const Omittable.absent(),
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  emvAuthData: json.containsKey('emv_auth_data') ? Omittable(json['emv_auth_data'] as String?) : const Omittable.absent(),
  expMonth: (json['exp_month'] as num).toInt(),
  expYear: (json['exp_year'] as num).toInt(),
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  funding: json.containsKey('funding') ? Omittable(json['funding'] as String?) : const Omittable.absent(),
  generatedCard: json.containsKey('generated_card') ? Omittable(json['generated_card'] as String?) : const Omittable.absent(),
  incrementalAuthorizationSupported: json['incremental_authorization_supported'] as bool,
  issuer: json.containsKey('issuer') ? Omittable(json['issuer'] as String?) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
  location: json['location'] as String?,
  network: json.containsKey('network') ? Omittable(json['network'] as String?) : const Omittable.absent(),
  networkTransactionId: json.containsKey('network_transaction_id') ? Omittable(json['network_transaction_id'] as String?) : const Omittable.absent(),
  offline: json.containsKey('offline') ? Omittable(json['offline'] != null ? PaymentMethodDetailsCardPresentOffline.fromJson(json['offline'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  overcaptureSupported: json['overcapture_supported'] as bool,
  preferredLocales: json.containsKey('preferred_locales') ? Omittable((json['preferred_locales'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  readMethod: json.containsKey('read_method') ? Omittable(json['read_method'] != null ? PaymentMethodDetailsCardPresentReadMethod.fromJson(json['read_method'] as String) : null) : const Omittable.absent(),
  reader: json['reader'] as String?,
  receipt: json.containsKey('receipt') ? Omittable(json['receipt'] != null ? PaymentMethodDetailsCardPresentReceipt.fromJson(json['receipt'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  wallet: json['wallet'] != null ? PaymentFlowsPrivatePaymentMethodsCardPresentCommonWallet.fromJson(json['wallet'] as Map<String, dynamic>) : null,
); }

/// The authorized amount
final Omittable<int?> amountAuthorized;

/// Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
final Omittable<String?> brand;

/// The [product code](https://stripe.com/docs/card-product-codes) that identifies the specific program or product associated with a card.
final Omittable<String?> brandProduct;

/// When using manual capture, a future timestamp after which the charge will be automatically refunded if uncaptured.
final int? captureBefore;

/// The cardholder name as read from the card, in [ISO 7813](https://en.wikipedia.org/wiki/ISO/IEC_7813) format. May include alphanumeric characters, special characters and first/last name separator (`/`). In some cases, the cardholder name may not be available depending on how the issuer has configured the card. Cardholder name is typically not available on swipe or contactless payments, such as those made with Apple Pay and Google Pay.
final Omittable<String?> cardholderName;

/// Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
final Omittable<String?> country;

/// A high-level description of the type of cards issued in this range.
final Omittable<String?> description;

/// Authorization response cryptogram.
final Omittable<String?> emvAuthData;

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

/// ID of a card PaymentMethod generated from the card_present PaymentMethod that may be attached to a Customer for future transactions. Only present if it was possible to generate a card PaymentMethod.
final Omittable<String?> generatedCard;

/// Whether this [PaymentIntent](https://docs.stripe.com/api/payment_intents) is eligible for incremental authorizations. Request support using [request_incremental_authorization_support](https://docs.stripe.com/api/payment_intents/create#create_payment_intent-payment_method_options-card_present-request_incremental_authorization_support).
final bool incrementalAuthorizationSupported;

/// The name of the card's issuing bank.
final Omittable<String?> issuer;

/// The last four digits of the card.
final Omittable<String?> last4;

/// ID of the [location](https://docs.stripe.com/api/terminal/locations) that this transaction's reader is assigned to.
final String? location;

/// Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `interac`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
final Omittable<String?> network;

/// This is used by the financial networks to identify a transaction. Visa calls this the Transaction ID, Mastercard calls this the Trace ID, and American Express calls this the Acquirer Reference Data. This value will be present if it is returned by the financial network in the authorization response, and null otherwise.
final Omittable<String?> networkTransactionId;

/// Details about payments collected offline.
final Omittable<PaymentMethodDetailsCardPresentOffline?> offline;

/// Defines whether the authorized amount can be over-captured or not
final bool overcaptureSupported;

/// The languages that the issuing bank recommends using for localizing any customer-facing text, as read from the card. Referenced from EMV tag 5F2D, data encoded on the card's chip.
final Omittable<List<String>?> preferredLocales;

/// How card details were read in this transaction.
final Omittable<PaymentMethodDetailsCardPresentReadMethod?> readMethod;

/// ID of the [reader](https://docs.stripe.com/api/terminal/readers) this transaction was made on.
final String? reader;

/// A collection of fields required to be displayed on receipts. Only required for EMV transactions.
final Omittable<PaymentMethodDetailsCardPresentReceipt?> receipt;

final PaymentFlowsPrivatePaymentMethodsCardPresentCommonWallet? wallet;

Map<String, dynamic> toJson() { return {
  if (amountAuthorized.isPresent) 'amount_authorized': amountAuthorized.value,
  if (brand.isPresent) 'brand': brand.value,
  if (brandProduct.isPresent) 'brand_product': brandProduct.value,
  'capture_before': ?captureBefore,
  if (cardholderName.isPresent) 'cardholder_name': cardholderName.value,
  if (country.isPresent) 'country': country.value,
  if (description.isPresent) 'description': description.value,
  if (emvAuthData.isPresent) 'emv_auth_data': emvAuthData.value,
  'exp_month': expMonth,
  'exp_year': expYear,
  if (fingerprint.isPresent) 'fingerprint': fingerprint.value,
  if (funding.isPresent) 'funding': funding.value,
  if (generatedCard.isPresent) 'generated_card': generatedCard.value,
  'incremental_authorization_supported': incrementalAuthorizationSupported,
  if (issuer.isPresent) 'issuer': issuer.value,
  if (last4.isPresent) 'last4': last4.value,
  'location': ?location,
  if (network.isPresent) 'network': network.value,
  if (networkTransactionId.isPresent) 'network_transaction_id': networkTransactionId.value,
  if (offline.isPresent) 'offline': offline.value?.toJson(),
  'overcapture_supported': overcaptureSupported,
  if (preferredLocales.isPresent) 'preferred_locales': preferredLocales.value,
  if (readMethod.isPresent) 'read_method': readMethod.value?.toJson(),
  'reader': ?reader,
  if (receipt.isPresent) 'receipt': receipt.value?.toJson(),
  if (wallet != null) 'wallet': wallet?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('exp_month') && json['exp_month'] is num &&
      json.containsKey('exp_year') && json['exp_year'] is num &&
      json.containsKey('incremental_authorization_supported') && json['incremental_authorization_supported'] is bool &&
      json.containsKey('overcapture_supported') && json['overcapture_supported'] is bool; } 
PaymentMethodDetailsCardPresent copyWith({Omittable<int?>? amountAuthorized, Omittable<String?>? brand, Omittable<String?>? brandProduct, int? Function()? captureBefore, Omittable<String?>? cardholderName, Omittable<String?>? country, Omittable<String?>? description, Omittable<String?>? emvAuthData, int? expMonth, int? expYear, Omittable<String?>? fingerprint, Omittable<String?>? funding, Omittable<String?>? generatedCard, bool? incrementalAuthorizationSupported, Omittable<String?>? issuer, Omittable<String?>? last4, String? Function()? location, Omittable<String?>? network, Omittable<String?>? networkTransactionId, Omittable<PaymentMethodDetailsCardPresentOffline?>? offline, bool? overcaptureSupported, Omittable<List<String>?>? preferredLocales, Omittable<PaymentMethodDetailsCardPresentReadMethod?>? readMethod, String? Function()? reader, Omittable<PaymentMethodDetailsCardPresentReceipt?>? receipt, PaymentFlowsPrivatePaymentMethodsCardPresentCommonWallet? Function()? wallet, }) { return PaymentMethodDetailsCardPresent(
  amountAuthorized: amountAuthorized ?? this.amountAuthorized,
  brand: brand ?? this.brand,
  brandProduct: brandProduct ?? this.brandProduct,
  captureBefore: captureBefore != null ? captureBefore() : this.captureBefore,
  cardholderName: cardholderName ?? this.cardholderName,
  country: country ?? this.country,
  description: description ?? this.description,
  emvAuthData: emvAuthData ?? this.emvAuthData,
  expMonth: expMonth ?? this.expMonth,
  expYear: expYear ?? this.expYear,
  fingerprint: fingerprint ?? this.fingerprint,
  funding: funding ?? this.funding,
  generatedCard: generatedCard ?? this.generatedCard,
  incrementalAuthorizationSupported: incrementalAuthorizationSupported ?? this.incrementalAuthorizationSupported,
  issuer: issuer ?? this.issuer,
  last4: last4 ?? this.last4,
  location: location != null ? location() : this.location,
  network: network ?? this.network,
  networkTransactionId: networkTransactionId ?? this.networkTransactionId,
  offline: offline ?? this.offline,
  overcaptureSupported: overcaptureSupported ?? this.overcaptureSupported,
  preferredLocales: preferredLocales ?? this.preferredLocales,
  readMethod: readMethod ?? this.readMethod,
  reader: reader != null ? reader() : this.reader,
  receipt: receipt ?? this.receipt,
  wallet: wallet != null ? wallet() : this.wallet,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsCardPresent &&
          amountAuthorized == other.amountAuthorized &&
          brand == other.brand &&
          brandProduct == other.brandProduct &&
          captureBefore == other.captureBefore &&
          cardholderName == other.cardholderName &&
          country == other.country &&
          description == other.description &&
          emvAuthData == other.emvAuthData &&
          expMonth == other.expMonth &&
          expYear == other.expYear &&
          fingerprint == other.fingerprint &&
          funding == other.funding &&
          generatedCard == other.generatedCard &&
          incrementalAuthorizationSupported == other.incrementalAuthorizationSupported &&
          issuer == other.issuer &&
          last4 == other.last4 &&
          location == other.location &&
          network == other.network &&
          networkTransactionId == other.networkTransactionId &&
          offline == other.offline &&
          overcaptureSupported == other.overcaptureSupported &&
          preferredLocales.isPresent == other.preferredLocales.isPresent &&
          listEquals(preferredLocales.value, other.preferredLocales.value) &&
          readMethod == other.readMethod &&
          reader == other.reader &&
          receipt == other.receipt &&
          wallet == other.wallet; } 
@override int get hashCode { return Object.hashAll([amountAuthorized, brand, brandProduct, captureBefore, cardholderName, country, description, emvAuthData, expMonth, expYear, fingerprint, funding, generatedCard, incrementalAuthorizationSupported, issuer, last4, location, network, networkTransactionId, offline, overcaptureSupported, Object.hashAll(preferredLocales.value ?? const []), readMethod, reader, receipt, wallet]); } 
@override String toString() { return 'PaymentMethodDetailsCardPresent(amountAuthorized: $amountAuthorized, brand: $brand, brandProduct: $brandProduct, captureBefore: $captureBefore, cardholderName: $cardholderName, country: $country, description: $description, emvAuthData: $emvAuthData, expMonth: $expMonth, expYear: $expYear, fingerprint: $fingerprint, funding: $funding, generatedCard: $generatedCard, incrementalAuthorizationSupported: $incrementalAuthorizationSupported, issuer: $issuer, last4: $last4, location: $location, network: $network, networkTransactionId: $networkTransactionId, offline: $offline, overcaptureSupported: $overcaptureSupported, preferredLocales: $preferredLocales, readMethod: $readMethod, reader: $reader, receipt: $receipt, wallet: $wallet)'; } 
 }
