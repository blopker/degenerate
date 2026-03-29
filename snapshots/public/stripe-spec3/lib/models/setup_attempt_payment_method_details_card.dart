// GENERATED CODE - DO NOT MODIFY BY HAND

import 'setup_attempt_payment_method_details_card_checks2.dart';import 'setup_attempt_payment_method_details_card_three_d_secure.dart';import 'setup_attempt_payment_method_details_card_wallet2.dart';/// 
final class SetupAttemptPaymentMethodDetailsCard {const SetupAttemptPaymentMethodDetailsCard({this.brand, this.checks, this.country, this.expMonth, this.expYear, this.fingerprint, this.funding, this.last4, this.network, this.threeDSecure, this.wallet, });

factory SetupAttemptPaymentMethodDetailsCard.fromJson(Map<String, dynamic> json) { return SetupAttemptPaymentMethodDetailsCard(
  brand: json['brand'] as String?,
  checks: json['checks'] != null ? SetupAttemptPaymentMethodDetailsCardChecks2.fromJson(json['checks'] as Map<String, dynamic>) : null,
  country: json['country'] as String?,
  expMonth: json['exp_month'] != null ? (json['exp_month'] as num).toInt() : null,
  expYear: json['exp_year'] != null ? (json['exp_year'] as num).toInt() : null,
  fingerprint: json['fingerprint'] as String?,
  funding: json['funding'] as String?,
  last4: json['last4'] as String?,
  network: json['network'] as String?,
  threeDSecure: json['three_d_secure'] != null ? SetupAttemptPaymentMethodDetailsCardThreeDSecure.fromJson(json['three_d_secure'] as Map<String, dynamic>) : null,
  wallet: json['wallet'] != null ? SetupAttemptPaymentMethodDetailsCardWallet2.fromJson(json['wallet'] as Map<String, dynamic>) : null,
); }

/// Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
final String? brand;

/// Check results by Card networks on Card address and CVC at the time of authorization
final SetupAttemptPaymentMethodDetailsCardChecks2? checks;

/// Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
final String? country;

/// Two-digit number representing the card's expiration month.
final int? expMonth;

/// Four-digit number representing the card's expiration year.
final int? expYear;

/// Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.
/// 
/// *As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
final String? fingerprint;

/// Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
final String? funding;

/// The last four digits of the card.
final String? last4;

/// Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `interac`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
final String? network;

/// Populated if this authorization used 3D Secure authentication.
final SetupAttemptPaymentMethodDetailsCardThreeDSecure? threeDSecure;

/// If this Card is part of a card wallet, this contains the details of the card wallet.
final SetupAttemptPaymentMethodDetailsCardWallet2? wallet;

Map<String, dynamic> toJson() { return {
  'brand': ?brand,
  if (checks != null) 'checks': checks?.toJson(),
  'country': ?country,
  'exp_month': ?expMonth,
  'exp_year': ?expYear,
  'fingerprint': ?fingerprint,
  'funding': ?funding,
  'last4': ?last4,
  'network': ?network,
  if (threeDSecure != null) 'three_d_secure': threeDSecure?.toJson(),
  if (wallet != null) 'wallet': wallet?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'brand', 'checks', 'country', 'exp_month', 'exp_year', 'fingerprint', 'funding', 'last4', 'network', 'three_d_secure', 'wallet'}.contains(key)); } 
SetupAttemptPaymentMethodDetailsCard copyWith({String? Function()? brand, SetupAttemptPaymentMethodDetailsCardChecks2? Function()? checks, String? Function()? country, int? Function()? expMonth, int? Function()? expYear, String? Function()? fingerprint, String? Function()? funding, String? Function()? last4, String? Function()? network, SetupAttemptPaymentMethodDetailsCardThreeDSecure? Function()? threeDSecure, SetupAttemptPaymentMethodDetailsCardWallet2? Function()? wallet, }) { return SetupAttemptPaymentMethodDetailsCard(
  brand: brand != null ? brand() : this.brand,
  checks: checks != null ? checks() : this.checks,
  country: country != null ? country() : this.country,
  expMonth: expMonth != null ? expMonth() : this.expMonth,
  expYear: expYear != null ? expYear() : this.expYear,
  fingerprint: fingerprint != null ? fingerprint() : this.fingerprint,
  funding: funding != null ? funding() : this.funding,
  last4: last4 != null ? last4() : this.last4,
  network: network != null ? network() : this.network,
  threeDSecure: threeDSecure != null ? threeDSecure() : this.threeDSecure,
  wallet: wallet != null ? wallet() : this.wallet,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SetupAttemptPaymentMethodDetailsCard &&
          brand == other.brand &&
          checks == other.checks &&
          country == other.country &&
          expMonth == other.expMonth &&
          expYear == other.expYear &&
          fingerprint == other.fingerprint &&
          funding == other.funding &&
          last4 == other.last4 &&
          network == other.network &&
          threeDSecure == other.threeDSecure &&
          wallet == other.wallet; } 
@override int get hashCode { return Object.hash(brand, checks, country, expMonth, expYear, fingerprint, funding, last4, network, threeDSecure, wallet); } 
@override String toString() { return 'SetupAttemptPaymentMethodDetailsCard(brand: $brand, checks: $checks, country: $country, expMonth: $expMonth, expYear: $expYear, fingerprint: $fingerprint, funding: $funding, last4: $last4, network: $network, threeDSecure: $threeDSecure, wallet: $wallet)'; } 
 }
