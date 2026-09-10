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
@immutable final class PaymentMethodCard {const PaymentMethodCard({required this.brand, required this.expMonth, required this.expYear, required this.funding, required this.last4, this.checks = const Omittable.absent(), this.country = const Omittable.absent(), this.displayBrand = const Omittable.absent(), this.fingerprint = const Omittable.absent(), this.generatedFrom = const Omittable.absent(), this.networks = const Omittable.absent(), this.regulatedStatus = const Omittable.absent(), this.threeDSecureUsage = const Omittable.absent(), this.wallet = const Omittable.absent(), });

factory PaymentMethodCard.fromJson(Map<String, dynamic> json) { return PaymentMethodCard(
  brand: json['brand'] as String,
  checks: json.containsKey('checks') ? Omittable(json['checks'] != null ? PaymentMethodCardChecks.fromJson(json['checks'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  country: json.containsKey('country') ? Omittable(json['country'] as String?) : const Omittable.absent(),
  displayBrand: json.containsKey('display_brand') ? Omittable(json['display_brand'] as String?) : const Omittable.absent(),
  expMonth: (json['exp_month'] as num).toInt(),
  expYear: (json['exp_year'] as num).toInt(),
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  funding: json['funding'] as String,
  generatedFrom: json.containsKey('generated_from') ? Omittable(json['generated_from'] != null ? PaymentMethodCardGeneratedCard.fromJson(json['generated_from'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  last4: json['last4'] as String,
  networks: json.containsKey('networks') ? Omittable(json['networks'] != null ? Networks.fromJson(json['networks'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  regulatedStatus: json.containsKey('regulated_status') ? Omittable(json['regulated_status'] != null ? PaymentMethodCardRegulatedStatus.fromJson(json['regulated_status'] as String) : null) : const Omittable.absent(),
  threeDSecureUsage: json.containsKey('three_d_secure_usage') ? Omittable(json['three_d_secure_usage'] != null ? ThreeDSecureUsage.fromJson(json['three_d_secure_usage'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  wallet: json.containsKey('wallet') ? Omittable(json['wallet'] != null ? PaymentMethodCardWallet.fromJson(json['wallet'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
final String brand;

/// Checks on Card address and CVC if provided.
final Omittable<PaymentMethodCardChecks?> checks;

/// Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
final Omittable<String?> country;

/// The brand to use when displaying the card, this accounts for customer's brand choice on dual-branded cards. Can be `american_express`, `cartes_bancaires`, `diners_club`, `discover`, `eftpos_australia`, `interac`, `jcb`, `mastercard`, `union_pay`, `visa`, or `other` and may contain more values in the future.
final Omittable<String?> displayBrand;

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

/// Details of the original PaymentMethod that created this object.
final Omittable<PaymentMethodCardGeneratedCard?> generatedFrom;

/// The last four digits of the card.
final String last4;

/// Contains information about card networks that can be used to process the payment.
final Omittable<Networks?> networks;

/// Status of a card based on the card issuer.
final Omittable<PaymentMethodCardRegulatedStatus?> regulatedStatus;

/// Contains details on how this Card may be used for 3D Secure authentication.
final Omittable<ThreeDSecureUsage?> threeDSecureUsage;

/// If this Card is part of a card wallet, this contains the details of the card wallet.
final Omittable<PaymentMethodCardWallet?> wallet;

Map<String, dynamic> toJson() { return {
  'brand': brand,
  if (checks.isPresent) 'checks': checks.value?.toJson(),
  if (country.isPresent) 'country': country.value,
  if (displayBrand.isPresent) 'display_brand': displayBrand.value,
  'exp_month': expMonth,
  'exp_year': expYear,
  if (fingerprint.isPresent) 'fingerprint': fingerprint.value,
  'funding': funding,
  if (generatedFrom.isPresent) 'generated_from': generatedFrom.value?.toJson(),
  'last4': last4,
  if (networks.isPresent) 'networks': networks.value?.toJson(),
  if (regulatedStatus.isPresent) 'regulated_status': regulatedStatus.value?.toJson(),
  if (threeDSecureUsage.isPresent) 'three_d_secure_usage': threeDSecureUsage.value?.toJson(),
  if (wallet.isPresent) 'wallet': wallet.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('brand') && json['brand'] is String &&
      json.containsKey('exp_month') && json['exp_month'] is num &&
      json.containsKey('exp_year') && json['exp_year'] is num &&
      json.containsKey('funding') && json['funding'] is String &&
      json.containsKey('last4') && json['last4'] is String; } 
PaymentMethodCard copyWith({String? brand, Omittable<PaymentMethodCardChecks?>? checks, Omittable<String?>? country, Omittable<String?>? displayBrand, int? expMonth, int? expYear, Omittable<String?>? fingerprint, String? funding, Omittable<PaymentMethodCardGeneratedCard?>? generatedFrom, String? last4, Omittable<Networks?>? networks, Omittable<PaymentMethodCardRegulatedStatus?>? regulatedStatus, Omittable<ThreeDSecureUsage?>? threeDSecureUsage, Omittable<PaymentMethodCardWallet?>? wallet, }) { return PaymentMethodCard(
  brand: brand ?? this.brand,
  checks: checks ?? this.checks,
  country: country ?? this.country,
  displayBrand: displayBrand ?? this.displayBrand,
  expMonth: expMonth ?? this.expMonth,
  expYear: expYear ?? this.expYear,
  fingerprint: fingerprint ?? this.fingerprint,
  funding: funding ?? this.funding,
  generatedFrom: generatedFrom ?? this.generatedFrom,
  last4: last4 ?? this.last4,
  networks: networks ?? this.networks,
  regulatedStatus: regulatedStatus ?? this.regulatedStatus,
  threeDSecureUsage: threeDSecureUsage ?? this.threeDSecureUsage,
  wallet: wallet ?? this.wallet,
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
