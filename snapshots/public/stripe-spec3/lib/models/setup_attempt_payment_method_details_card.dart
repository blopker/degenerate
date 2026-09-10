// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'setup_attempt_payment_method_details_card_checks.dart';import 'setup_attempt_payment_method_details_card_wallet.dart';import 'three_d_secure_details.dart';/// 
@immutable final class SetupAttemptPaymentMethodDetailsCard {const SetupAttemptPaymentMethodDetailsCard({this.brand = const Omittable.absent(), this.checks = const Omittable.absent(), this.country = const Omittable.absent(), this.expMonth = const Omittable.absent(), this.expYear = const Omittable.absent(), this.fingerprint = const Omittable.absent(), this.funding = const Omittable.absent(), this.last4 = const Omittable.absent(), this.network = const Omittable.absent(), this.threeDSecure = const Omittable.absent(), this.wallet = const Omittable.absent(), });

factory SetupAttemptPaymentMethodDetailsCard.fromJson(Map<String, dynamic> json) { return SetupAttemptPaymentMethodDetailsCard(
  brand: json.containsKey('brand') ? Omittable(json['brand'] as String?) : const Omittable.absent(),
  checks: json.containsKey('checks') ? Omittable(json['checks'] != null ? SetupAttemptPaymentMethodDetailsCardChecks.fromJson(json['checks'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  country: json.containsKey('country') ? Omittable(json['country'] as String?) : const Omittable.absent(),
  expMonth: json.containsKey('exp_month') ? Omittable(json['exp_month'] != null ? (json['exp_month'] as num).toInt() : null) : const Omittable.absent(),
  expYear: json.containsKey('exp_year') ? Omittable(json['exp_year'] != null ? (json['exp_year'] as num).toInt() : null) : const Omittable.absent(),
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  funding: json.containsKey('funding') ? Omittable(json['funding'] as String?) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
  network: json.containsKey('network') ? Omittable(json['network'] as String?) : const Omittable.absent(),
  threeDSecure: json.containsKey('three_d_secure') ? Omittable(json['three_d_secure'] != null ? ThreeDSecureDetails.fromJson(json['three_d_secure'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  wallet: json.containsKey('wallet') ? Omittable(json['wallet'] != null ? SetupAttemptPaymentMethodDetailsCardWallet.fromJson(json['wallet'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
final Omittable<String?> brand;

/// Check results by Card networks on Card address and CVC at the time of authorization
final Omittable<SetupAttemptPaymentMethodDetailsCardChecks?> checks;

/// Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
final Omittable<String?> country;

/// Two-digit number representing the card's expiration month.
final Omittable<int?> expMonth;

/// Four-digit number representing the card's expiration year.
final Omittable<int?> expYear;

/// Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.
/// 
/// *As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
final Omittable<String?> fingerprint;

/// Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
final Omittable<String?> funding;

/// The last four digits of the card.
final Omittable<String?> last4;

/// Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `interac`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
final Omittable<String?> network;

/// Populated if this authorization used 3D Secure authentication.
final Omittable<ThreeDSecureDetails?> threeDSecure;

/// If this Card is part of a card wallet, this contains the details of the card wallet.
final Omittable<SetupAttemptPaymentMethodDetailsCardWallet?> wallet;

Map<String, dynamic> toJson() { return {
  if (brand.isPresent) 'brand': brand.value,
  if (checks.isPresent) 'checks': checks.value?.toJson(),
  if (country.isPresent) 'country': country.value,
  if (expMonth.isPresent) 'exp_month': expMonth.value,
  if (expYear.isPresent) 'exp_year': expYear.value,
  if (fingerprint.isPresent) 'fingerprint': fingerprint.value,
  if (funding.isPresent) 'funding': funding.value,
  if (last4.isPresent) 'last4': last4.value,
  if (network.isPresent) 'network': network.value,
  if (threeDSecure.isPresent) 'three_d_secure': threeDSecure.value?.toJson(),
  if (wallet.isPresent) 'wallet': wallet.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'brand', 'checks', 'country', 'exp_month', 'exp_year', 'fingerprint', 'funding', 'last4', 'network', 'three_d_secure', 'wallet'}.contains(key)); } 
SetupAttemptPaymentMethodDetailsCard copyWith({Omittable<String?>? brand, Omittable<SetupAttemptPaymentMethodDetailsCardChecks?>? checks, Omittable<String?>? country, Omittable<int?>? expMonth, Omittable<int?>? expYear, Omittable<String?>? fingerprint, Omittable<String?>? funding, Omittable<String?>? last4, Omittable<String?>? network, Omittable<ThreeDSecureDetails?>? threeDSecure, Omittable<SetupAttemptPaymentMethodDetailsCardWallet?>? wallet, }) { return SetupAttemptPaymentMethodDetailsCard(
  brand: brand ?? this.brand,
  checks: checks ?? this.checks,
  country: country ?? this.country,
  expMonth: expMonth ?? this.expMonth,
  expYear: expYear ?? this.expYear,
  fingerprint: fingerprint ?? this.fingerprint,
  funding: funding ?? this.funding,
  last4: last4 ?? this.last4,
  network: network ?? this.network,
  threeDSecure: threeDSecure ?? this.threeDSecure,
  wallet: wallet ?? this.wallet,
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
