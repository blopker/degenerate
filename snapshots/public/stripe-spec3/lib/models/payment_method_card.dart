// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'networks.dart';import 'payment_method_card_checks.dart';import 'payment_method_card_generated_card.dart';import 'payment_method_card_wallet.dart';import 'three_d_secure_usage.dart';/// Status of a card based on the card issuer.
@immutable final class PaymentMethodCardRegulatedStatus {const PaymentMethodCardRegulatedStatus._(this.value);

factory PaymentMethodCardRegulatedStatus.fromJson(String json) { return switch (json) {
  'regulated' => regulated,
  'unregulated' => unregulated,
  _ => PaymentMethodCardRegulatedStatus._(json),
}; }

static const PaymentMethodCardRegulatedStatus regulated = PaymentMethodCardRegulatedStatus._('regulated');

static const PaymentMethodCardRegulatedStatus unregulated = PaymentMethodCardRegulatedStatus._('unregulated');

static const List<PaymentMethodCardRegulatedStatus> values = [regulated, unregulated];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodCardRegulatedStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodCardRegulatedStatus($value)'; } 
 }
/// 
@immutable final class PaymentMethodCard {const PaymentMethodCard({required this.brand, required this.expMonth, required this.expYear, required this.funding, required this.last4, this.checks, this.country, this.displayBrand, this.fingerprint, this.generatedFrom, this.networks, this.regulatedStatus, this.threeDSecureUsage, this.wallet, });

factory PaymentMethodCard.fromJson(Map<String, dynamic> json) { return PaymentMethodCard(
  brand: json['brand'] as String,
  checks: json['checks'] != null ? PaymentMethodCardChecks.fromJson(json['checks'] as Map<String, dynamic>) : null,
  country: json['country'] as String?,
  displayBrand: json['display_brand'] as String?,
  expMonth: (json['exp_month'] as num).toInt(),
  expYear: (json['exp_year'] as num).toInt(),
  fingerprint: json['fingerprint'] as String?,
  funding: json['funding'] as String,
  generatedFrom: json['generated_from'] != null ? PaymentMethodCardGeneratedCard.fromJson(json['generated_from'] as Map<String, dynamic>) : null,
  last4: json['last4'] as String,
  networks: json['networks'] != null ? Networks.fromJson(json['networks'] as Map<String, dynamic>) : null,
  regulatedStatus: json['regulated_status'] != null ? PaymentMethodCardRegulatedStatus.fromJson(json['regulated_status'] as String) : null,
  threeDSecureUsage: json['three_d_secure_usage'] != null ? ThreeDSecureUsage.fromJson(json['three_d_secure_usage'] as Map<String, dynamic>) : null,
  wallet: json['wallet'] != null ? PaymentMethodCardWallet.fromJson(json['wallet'] as Map<String, dynamic>) : null,
); }

/// Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
final String brand;

/// Checks on Card address and CVC if provided.
final PaymentMethodCardChecks? checks;

/// Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
final String? country;

/// The brand to use when displaying the card, this accounts for customer's brand choice on dual-branded cards. Can be `american_express`, `cartes_bancaires`, `diners_club`, `discover`, `eftpos_australia`, `interac`, `jcb`, `mastercard`, `union_pay`, `visa`, or `other` and may contain more values in the future.
final String? displayBrand;

/// Two-digit number representing the card's expiration month.
final int expMonth;

/// Four-digit number representing the card's expiration year.
final int expYear;

/// Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.
/// 
/// *As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
final String? fingerprint;

/// Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
final String funding;

/// Details of the original PaymentMethod that created this object.
final PaymentMethodCardGeneratedCard? generatedFrom;

/// The last four digits of the card.
final String last4;

/// Contains information about card networks that can be used to process the payment.
final Networks? networks;

/// Status of a card based on the card issuer.
final PaymentMethodCardRegulatedStatus? regulatedStatus;

/// Contains details on how this Card may be used for 3D Secure authentication.
final ThreeDSecureUsage? threeDSecureUsage;

/// If this Card is part of a card wallet, this contains the details of the card wallet.
final PaymentMethodCardWallet? wallet;

Map<String, dynamic> toJson() { return {
  'brand': brand,
  if (checks != null) 'checks': checks?.toJson(),
  'country': ?country,
  'display_brand': ?displayBrand,
  'exp_month': expMonth,
  'exp_year': expYear,
  'fingerprint': ?fingerprint,
  'funding': funding,
  if (generatedFrom != null) 'generated_from': generatedFrom?.toJson(),
  'last4': last4,
  if (networks != null) 'networks': networks?.toJson(),
  if (regulatedStatus != null) 'regulated_status': regulatedStatus?.toJson(),
  if (threeDSecureUsage != null) 'three_d_secure_usage': threeDSecureUsage?.toJson(),
  if (wallet != null) 'wallet': wallet?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('brand') && json['brand'] is String &&
      json.containsKey('exp_month') && json['exp_month'] is num &&
      json.containsKey('exp_year') && json['exp_year'] is num &&
      json.containsKey('funding') && json['funding'] is String &&
      json.containsKey('last4') && json['last4'] is String; } 
PaymentMethodCard copyWith({String? brand, PaymentMethodCardChecks? Function()? checks, String? Function()? country, String? Function()? displayBrand, int? expMonth, int? expYear, String? Function()? fingerprint, String? funding, PaymentMethodCardGeneratedCard? Function()? generatedFrom, String? last4, Networks? Function()? networks, PaymentMethodCardRegulatedStatus? Function()? regulatedStatus, ThreeDSecureUsage? Function()? threeDSecureUsage, PaymentMethodCardWallet? Function()? wallet, }) { return PaymentMethodCard(
  brand: brand ?? this.brand,
  checks: checks != null ? checks() : this.checks,
  country: country != null ? country() : this.country,
  displayBrand: displayBrand != null ? displayBrand() : this.displayBrand,
  expMonth: expMonth ?? this.expMonth,
  expYear: expYear ?? this.expYear,
  fingerprint: fingerprint != null ? fingerprint() : this.fingerprint,
  funding: funding ?? this.funding,
  generatedFrom: generatedFrom != null ? generatedFrom() : this.generatedFrom,
  last4: last4 ?? this.last4,
  networks: networks != null ? networks() : this.networks,
  regulatedStatus: regulatedStatus != null ? regulatedStatus() : this.regulatedStatus,
  threeDSecureUsage: threeDSecureUsage != null ? threeDSecureUsage() : this.threeDSecureUsage,
  wallet: wallet != null ? wallet() : this.wallet,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodCard &&
          brand == other.brand &&
          checks == other.checks &&
          country == other.country &&
          displayBrand == other.displayBrand &&
          expMonth == other.expMonth &&
          expYear == other.expYear &&
          fingerprint == other.fingerprint &&
          funding == other.funding &&
          generatedFrom == other.generatedFrom &&
          last4 == other.last4 &&
          networks == other.networks &&
          regulatedStatus == other.regulatedStatus &&
          threeDSecureUsage == other.threeDSecureUsage &&
          wallet == other.wallet; } 
@override int get hashCode { return Object.hash(brand, checks, country, displayBrand, expMonth, expYear, fingerprint, funding, generatedFrom, last4, networks, regulatedStatus, threeDSecureUsage, wallet); } 
@override String toString() { return 'PaymentMethodCard(brand: $brand, checks: $checks, country: $country, displayBrand: $displayBrand, expMonth: $expMonth, expYear: $expYear, fingerprint: $fingerprint, funding: $funding, generatedFrom: $generatedFrom, last4: $last4, networks: $networks, regulatedStatus: $regulatedStatus, threeDSecureUsage: $threeDSecureUsage, wallet: $wallet)'; } 
 }
