// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account.dart';import 'card_account.dart';import 'card_customer.dart';import 'customer.dart';import 'deleted_customer.dart';import 'token_card_networks.dart';/// This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to “unspecified”.
@immutable final class CardAllowRedisplay {const CardAllowRedisplay._(this.value);

factory CardAllowRedisplay.fromJson(String json) { return switch (json) {
  'always' => always,
  'limited' => limited,
  'unspecified' => unspecified,
  _ => CardAllowRedisplay._(json),
}; }

static const CardAllowRedisplay always = CardAllowRedisplay._('always');

static const CardAllowRedisplay limited = CardAllowRedisplay._('limited');

static const CardAllowRedisplay unspecified = CardAllowRedisplay._('unspecified');

static const List<CardAllowRedisplay> values = [always, limited, unspecified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CardAllowRedisplay && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CardAllowRedisplay($value)'; } 
 }
@immutable final class CardAvailablePayoutMethods {const CardAvailablePayoutMethods._(this.value);

factory CardAvailablePayoutMethods.fromJson(String json) { return switch (json) {
  'instant' => instant,
  'standard' => standard,
  _ => CardAvailablePayoutMethods._(json),
}; }

static const CardAvailablePayoutMethods instant = CardAvailablePayoutMethods._('instant');

static const CardAvailablePayoutMethods standard = CardAvailablePayoutMethods._('standard');

static const List<CardAvailablePayoutMethods> values = [instant, standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CardAvailablePayoutMethods && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CardAvailablePayoutMethods($value)'; } 
 }
/// String representing the object's type. Objects of the same type share the same value.
@immutable final class CardObject {const CardObject._(this.value);

factory CardObject.fromJson(String json) { return switch (json) {
  'card' => card,
  _ => CardObject._(json),
}; }

static const CardObject card = CardObject._('card');

static const List<CardObject> values = [card];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CardObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CardObject($value)'; } 
 }
/// Status of a card based on the card issuer.
@immutable final class CardRegulatedStatus {const CardRegulatedStatus._(this.value);

factory CardRegulatedStatus.fromJson(String json) { return switch (json) {
  'regulated' => regulated,
  'unregulated' => unregulated,
  _ => CardRegulatedStatus._(json),
}; }

static const CardRegulatedStatus regulated = CardRegulatedStatus._('regulated');

static const CardRegulatedStatus unregulated = CardRegulatedStatus._('unregulated');

static const List<CardRegulatedStatus> values = [regulated, unregulated];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CardRegulatedStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CardRegulatedStatus($value)'; } 
 }
/// You can store multiple cards on a customer in order to charge the customer
/// later. You can also store multiple debit cards on a recipient in order to
/// transfer to those cards later.
/// 
/// Related guide: [Card payments with Sources](https://docs.stripe.com/sources/cards)
@immutable final class Card {const Card({required this.brand, required this.expMonth, required this.expYear, required this.funding, required this.id, required this.last4, required this.object, this.account = const Omittable.absent(), this.addressCity = const Omittable.absent(), this.addressCountry = const Omittable.absent(), this.addressLine1 = const Omittable.absent(), this.addressLine1Check = const Omittable.absent(), this.addressLine2 = const Omittable.absent(), this.addressState = const Omittable.absent(), this.addressZip = const Omittable.absent(), this.addressZipCheck = const Omittable.absent(), this.allowRedisplay = const Omittable.absent(), this.availablePayoutMethods = const Omittable.absent(), this.country = const Omittable.absent(), this.currency = const Omittable.absent(), this.customer = const Omittable.absent(), this.cvcCheck = const Omittable.absent(), this.defaultForCurrency = const Omittable.absent(), this.dynamicLast4 = const Omittable.absent(), this.fingerprint = const Omittable.absent(), this.iin, this.metadata = const Omittable.absent(), this.name = const Omittable.absent(), this.networks, this.regulatedStatus = const Omittable.absent(), this.status = const Omittable.absent(), this.tokenizationMethod = const Omittable.absent(), });

factory Card.fromJson(Map<String, dynamic> json) { return Card(
  account: json.containsKey('account') ? Omittable(json['account'] != null ? OneOf2.parse(json['account'], fromA: (v) => v as String, fromB: (v) => Account.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  addressCity: json.containsKey('address_city') ? Omittable(json['address_city'] as String?) : const Omittable.absent(),
  addressCountry: json.containsKey('address_country') ? Omittable(json['address_country'] as String?) : const Omittable.absent(),
  addressLine1: json.containsKey('address_line1') ? Omittable(json['address_line1'] as String?) : const Omittable.absent(),
  addressLine1Check: json.containsKey('address_line1_check') ? Omittable(json['address_line1_check'] as String?) : const Omittable.absent(),
  addressLine2: json.containsKey('address_line2') ? Omittable(json['address_line2'] as String?) : const Omittable.absent(),
  addressState: json.containsKey('address_state') ? Omittable(json['address_state'] as String?) : const Omittable.absent(),
  addressZip: json.containsKey('address_zip') ? Omittable(json['address_zip'] as String?) : const Omittable.absent(),
  addressZipCheck: json.containsKey('address_zip_check') ? Omittable(json['address_zip_check'] as String?) : const Omittable.absent(),
  allowRedisplay: json.containsKey('allow_redisplay') ? Omittable(json['allow_redisplay'] != null ? CardAllowRedisplay.fromJson(json['allow_redisplay'] as String) : null) : const Omittable.absent(),
  availablePayoutMethods: json.containsKey('available_payout_methods') ? Omittable((json['available_payout_methods'] as List<dynamic>?)?.map((e) => CardAvailablePayoutMethods.fromJson(e as String)).toList()) : const Omittable.absent(),
  brand: json['brand'] as String,
  country: json.containsKey('country') ? Omittable(json['country'] as String?) : const Omittable.absent(),
  currency: json.containsKey('currency') ? Omittable(json['currency'] as String?) : const Omittable.absent(),
  customer: json.containsKey('customer') ? Omittable(json['customer'] != null ? OneOf3.parse(json['customer'], fromA: (v) => v as String, fromB: (v) => Customer.fromJson(v as Map<String, dynamic>), fromC: (v) => DeletedCustomer.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  cvcCheck: json.containsKey('cvc_check') ? Omittable(json['cvc_check'] as String?) : const Omittable.absent(),
  defaultForCurrency: json.containsKey('default_for_currency') ? Omittable(json['default_for_currency'] as bool?) : const Omittable.absent(),
  dynamicLast4: json.containsKey('dynamic_last4') ? Omittable(json['dynamic_last4'] as String?) : const Omittable.absent(),
  expMonth: (json['exp_month'] as num).toInt(),
  expYear: (json['exp_year'] as num).toInt(),
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  funding: json['funding'] as String,
  id: json['id'] as String,
  iin: json['iin'] as String?,
  last4: json['last4'] as String,
  metadata: json.containsKey('metadata') ? Omittable((json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String))) : const Omittable.absent(),
  name: json.containsKey('name') ? Omittable(json['name'] as String?) : const Omittable.absent(),
  networks: json['networks'] != null ? TokenCardNetworks.fromJson(json['networks'] as Map<String, dynamic>) : null,
  object: CardObject.fromJson(json['object'] as String),
  regulatedStatus: json.containsKey('regulated_status') ? Omittable(json['regulated_status'] != null ? CardRegulatedStatus.fromJson(json['regulated_status'] as String) : null) : const Omittable.absent(),
  status: json.containsKey('status') ? Omittable(json['status'] as String?) : const Omittable.absent(),
  tokenizationMethod: json.containsKey('tokenization_method') ? Omittable(json['tokenization_method'] as String?) : const Omittable.absent(),
); }

final Omittable<CardAccount?> account;

/// City/District/Suburb/Town/Village.
final Omittable<String?> addressCity;

/// Billing address country, if provided when creating card.
final Omittable<String?> addressCountry;

/// Address line 1 (Street address/PO Box/Company name).
final Omittable<String?> addressLine1;

/// If `address_line1` was provided, results of the check: `pass`, `fail`, `unavailable`, or `unchecked`.
final Omittable<String?> addressLine1Check;

/// Address line 2 (Apartment/Suite/Unit/Building).
final Omittable<String?> addressLine2;

/// State/County/Province/Region.
final Omittable<String?> addressState;

/// ZIP or postal code.
final Omittable<String?> addressZip;

/// If `address_zip` was provided, results of the check: `pass`, `fail`, `unavailable`, or `unchecked`.
final Omittable<String?> addressZipCheck;

/// This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to “unspecified”.
final Omittable<CardAllowRedisplay?> allowRedisplay;

/// A set of available payout methods for this card. Only values from this set should be passed as the `method` when creating a payout.
final Omittable<List<CardAvailablePayoutMethods>?> availablePayoutMethods;

/// Card brand. Can be `American Express`, `Cartes Bancaires`, `Diners Club`, `Discover`, `Eftpos Australia`, `Girocard`, `JCB`, `MasterCard`, `UnionPay`, `Visa`, or `Unknown`.
final String brand;

/// Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
final Omittable<String?> country;

/// Three-letter [ISO code for currency](https://www.iso.org/iso-4217-currency-codes.html) in lowercase. Must be a [supported currency](https://docs.stripe.com/currencies). Only applicable on accounts (not customers or recipients). The card can be used as a transfer destination for funds in this currency. This property is only available when returned as an [External Account](/api/external_account_cards/object) where [controller.is_controller](/api/accounts/object#account_object-controller-is_controller) is `true`.
final Omittable<String?> currency;

/// The customer that this card belongs to. This attribute will not be in the card object if the card belongs to an account or recipient instead.
final Omittable<CardCustomer?> customer;

/// If a CVC was provided, results of the check: `pass`, `fail`, `unavailable`, or `unchecked`. A result of unchecked indicates that CVC was provided but hasn't been checked yet. Checks are typically performed when attaching a card to a Customer object, or when creating a charge. For more details, see [Check if a card is valid without a charge](https://support.stripe.com/questions/check-if-a-card-is-valid-without-a-charge).
final Omittable<String?> cvcCheck;

/// Whether this card is the default external account for its currency. This property is only available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
final Omittable<bool?> defaultForCurrency;

/// (For tokenized numbers only.) The last four digits of the device account number.
final Omittable<String?> dynamicLast4;

/// Two-digit number representing the card's expiration month.
final int expMonth;

/// Four-digit number representing the card's expiration year.
final int expYear;

/// Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.
/// 
/// *As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
final Omittable<String?> fingerprint;

/// Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
final String funding;

/// Unique identifier for the object.
final String id;

/// Issuer identification number of the card.
final String? iin;

/// The last four digits of the card.
final String last4;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Omittable<Map<String,String>?> metadata;

/// Cardholder name.
final Omittable<String?> name;

final TokenCardNetworks? networks;

/// String representing the object's type. Objects of the same type share the same value.
final CardObject object;

/// Status of a card based on the card issuer.
final Omittable<CardRegulatedStatus?> regulatedStatus;

/// For external accounts that are cards, possible values are `new` and `errored`. If a payout fails, the status is set to `errored` and [scheduled payouts](https://stripe.com/docs/payouts#payout-schedule) are stopped until account details are updated.
final Omittable<String?> status;

/// If the card number is tokenized, this is the method that was used. Can be `android_pay` (includes Google Pay), `apple_pay`, `masterpass`, `visa_checkout`, or null.
final Omittable<String?> tokenizationMethod;

Map<String, dynamic> toJson() { return {
  if (account.isPresent) 'account': account.value?.toJson(),
  if (addressCity.isPresent) 'address_city': addressCity.value,
  if (addressCountry.isPresent) 'address_country': addressCountry.value,
  if (addressLine1.isPresent) 'address_line1': addressLine1.value,
  if (addressLine1Check.isPresent) 'address_line1_check': addressLine1Check.value,
  if (addressLine2.isPresent) 'address_line2': addressLine2.value,
  if (addressState.isPresent) 'address_state': addressState.value,
  if (addressZip.isPresent) 'address_zip': addressZip.value,
  if (addressZipCheck.isPresent) 'address_zip_check': addressZipCheck.value,
  if (allowRedisplay.isPresent) 'allow_redisplay': allowRedisplay.value?.toJson(),
  if (availablePayoutMethods.isPresent) 'available_payout_methods': availablePayoutMethods.value?.map((e) => e.toJson()).toList(),
  'brand': brand,
  if (country.isPresent) 'country': country.value,
  if (currency.isPresent) 'currency': currency.value,
  if (customer.isPresent) 'customer': customer.value?.toJson(),
  if (cvcCheck.isPresent) 'cvc_check': cvcCheck.value,
  if (defaultForCurrency.isPresent) 'default_for_currency': defaultForCurrency.value,
  if (dynamicLast4.isPresent) 'dynamic_last4': dynamicLast4.value,
  'exp_month': expMonth,
  'exp_year': expYear,
  if (fingerprint.isPresent) 'fingerprint': fingerprint.value,
  'funding': funding,
  'id': id,
  'iin': ?iin,
  'last4': last4,
  if (metadata.isPresent) 'metadata': metadata.value,
  if (name.isPresent) 'name': name.value,
  if (networks != null) 'networks': networks?.toJson(),
  'object': object.toJson(),
  if (regulatedStatus.isPresent) 'regulated_status': regulatedStatus.value?.toJson(),
  if (status.isPresent) 'status': status.value,
  if (tokenizationMethod.isPresent) 'tokenization_method': tokenizationMethod.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('brand') && json['brand'] is String &&
      json.containsKey('exp_month') && json['exp_month'] is num &&
      json.containsKey('exp_year') && json['exp_year'] is num &&
      json.containsKey('funding') && json['funding'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('last4') && json['last4'] is String &&
      json.containsKey('object'); } 
Card copyWith({Omittable<CardAccount?>? account, Omittable<String?>? addressCity, Omittable<String?>? addressCountry, Omittable<String?>? addressLine1, Omittable<String?>? addressLine1Check, Omittable<String?>? addressLine2, Omittable<String?>? addressState, Omittable<String?>? addressZip, Omittable<String?>? addressZipCheck, Omittable<CardAllowRedisplay?>? allowRedisplay, Omittable<List<CardAvailablePayoutMethods>?>? availablePayoutMethods, String? brand, Omittable<String?>? country, Omittable<String?>? currency, Omittable<CardCustomer?>? customer, Omittable<String?>? cvcCheck, Omittable<bool?>? defaultForCurrency, Omittable<String?>? dynamicLast4, int? expMonth, int? expYear, Omittable<String?>? fingerprint, String? funding, String? id, String? Function()? iin, String? last4, Omittable<Map<String,String>?>? metadata, Omittable<String?>? name, TokenCardNetworks? Function()? networks, CardObject? object, Omittable<CardRegulatedStatus?>? regulatedStatus, Omittable<String?>? status, Omittable<String?>? tokenizationMethod, }) { return Card(
  account: account ?? this.account,
  addressCity: addressCity ?? this.addressCity,
  addressCountry: addressCountry ?? this.addressCountry,
  addressLine1: addressLine1 ?? this.addressLine1,
  addressLine1Check: addressLine1Check ?? this.addressLine1Check,
  addressLine2: addressLine2 ?? this.addressLine2,
  addressState: addressState ?? this.addressState,
  addressZip: addressZip ?? this.addressZip,
  addressZipCheck: addressZipCheck ?? this.addressZipCheck,
  allowRedisplay: allowRedisplay ?? this.allowRedisplay,
  availablePayoutMethods: availablePayoutMethods ?? this.availablePayoutMethods,
  brand: brand ?? this.brand,
  country: country ?? this.country,
  currency: currency ?? this.currency,
  customer: customer ?? this.customer,
  cvcCheck: cvcCheck ?? this.cvcCheck,
  defaultForCurrency: defaultForCurrency ?? this.defaultForCurrency,
  dynamicLast4: dynamicLast4 ?? this.dynamicLast4,
  expMonth: expMonth ?? this.expMonth,
  expYear: expYear ?? this.expYear,
  fingerprint: fingerprint ?? this.fingerprint,
  funding: funding ?? this.funding,
  id: id ?? this.id,
  iin: iin != null ? iin() : this.iin,
  last4: last4 ?? this.last4,
  metadata: metadata ?? this.metadata,
  name: name ?? this.name,
  networks: networks != null ? networks() : this.networks,
  object: object ?? this.object,
  regulatedStatus: regulatedStatus ?? this.regulatedStatus,
  status: status ?? this.status,
  tokenizationMethod: tokenizationMethod ?? this.tokenizationMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Card &&
          account == other.account &&
          addressCity == other.addressCity &&
          addressCountry == other.addressCountry &&
          addressLine1 == other.addressLine1 &&
          addressLine1Check == other.addressLine1Check &&
          addressLine2 == other.addressLine2 &&
          addressState == other.addressState &&
          addressZip == other.addressZip &&
          addressZipCheck == other.addressZipCheck &&
          allowRedisplay == other.allowRedisplay &&
          availablePayoutMethods.isPresent == other.availablePayoutMethods.isPresent &&
          listEquals(availablePayoutMethods.value, other.availablePayoutMethods.value) &&
          brand == other.brand &&
          country == other.country &&
          currency == other.currency &&
          customer == other.customer &&
          cvcCheck == other.cvcCheck &&
          defaultForCurrency == other.defaultForCurrency &&
          dynamicLast4 == other.dynamicLast4 &&
          expMonth == other.expMonth &&
          expYear == other.expYear &&
          fingerprint == other.fingerprint &&
          funding == other.funding &&
          id == other.id &&
          iin == other.iin &&
          last4 == other.last4 &&
          metadata == other.metadata &&
          name == other.name &&
          networks == other.networks &&
          object == other.object &&
          regulatedStatus == other.regulatedStatus &&
          status == other.status &&
          tokenizationMethod == other.tokenizationMethod; } 
@override int get hashCode { return Object.hashAll([account, addressCity, addressCountry, addressLine1, addressLine1Check, addressLine2, addressState, addressZip, addressZipCheck, allowRedisplay, Object.hashAll(availablePayoutMethods.value ?? const []), brand, country, currency, customer, cvcCheck, defaultForCurrency, dynamicLast4, expMonth, expYear, fingerprint, funding, id, iin, last4, metadata, name, networks, object, regulatedStatus, status, tokenizationMethod]); } 
@override String toString() { return 'Card(account: $account, addressCity: $addressCity, addressCountry: $addressCountry, addressLine1: $addressLine1, addressLine1Check: $addressLine1Check, addressLine2: $addressLine2, addressState: $addressState, addressZip: $addressZip, addressZipCheck: $addressZipCheck, allowRedisplay: $allowRedisplay, availablePayoutMethods: $availablePayoutMethods, brand: $brand, country: $country, currency: $currency, customer: $customer, cvcCheck: $cvcCheck, defaultForCurrency: $defaultForCurrency, dynamicLast4: $dynamicLast4, expMonth: $expMonth, expYear: $expYear, fingerprint: $fingerprint, funding: $funding, id: $id, iin: $iin, last4: $last4, metadata: $metadata, name: $name, networks: $networks, object: $object, regulatedStatus: $regulatedStatus, status: $status, tokenizationMethod: $tokenizationMethod)'; } 
 }
