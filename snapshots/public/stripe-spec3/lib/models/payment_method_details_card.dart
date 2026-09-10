// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_details_card_checks.dart';import 'payment_method_details_card_installments.dart';import 'payment_method_details_card_network_token.dart';import 'payment_method_details_card_wallet.dart';import 'resource_enterprise_features_extended_authorization_extended_authorization.dart';import 'resource_enterprise_features_incremental_authorization_incremental_authorization.dart';import 'resource_enterprise_features_overcapture_overcapture.dart';import 'resource_multicapture.dart';import 'three_d_secure_details_charge.dart';/// Status of a card based on the card issuer.
@immutable final class PaymentMethodDetailsCardRegulatedStatus {const PaymentMethodDetailsCardRegulatedStatus._(this.value);

factory PaymentMethodDetailsCardRegulatedStatus.fromJson(String json) { return switch (json) {
  'regulated' => regulated,
  'unregulated' => unregulated,
  _ => PaymentMethodDetailsCardRegulatedStatus._(json),
}; }

static const PaymentMethodDetailsCardRegulatedStatus regulated = PaymentMethodDetailsCardRegulatedStatus._('regulated');

static const PaymentMethodDetailsCardRegulatedStatus unregulated = PaymentMethodDetailsCardRegulatedStatus._('unregulated');

static const List<PaymentMethodDetailsCardRegulatedStatus> values = [regulated, unregulated];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodDetailsCardRegulatedStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsCardRegulatedStatus($value)'; } 
 }
/// 
@immutable final class PaymentMethodDetailsCard {const PaymentMethodDetailsCard({required this.expMonth, required this.expYear, this.amountAuthorized = const Omittable.absent(), this.authorizationCode = const Omittable.absent(), this.brand = const Omittable.absent(), this.captureBefore, this.checks = const Omittable.absent(), this.country = const Omittable.absent(), this.extendedAuthorization, this.fingerprint = const Omittable.absent(), this.funding = const Omittable.absent(), this.incrementalAuthorization, this.installments = const Omittable.absent(), this.last4 = const Omittable.absent(), this.mandate = const Omittable.absent(), this.multicapture, this.network = const Omittable.absent(), this.networkToken = const Omittable.absent(), this.networkTransactionId = const Omittable.absent(), this.overcapture, this.regulatedStatus = const Omittable.absent(), this.threeDSecure = const Omittable.absent(), this.wallet = const Omittable.absent(), });

factory PaymentMethodDetailsCard.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsCard(
  amountAuthorized: json.containsKey('amount_authorized') ? Omittable(json['amount_authorized'] != null ? (json['amount_authorized'] as num).toInt() : null) : const Omittable.absent(),
  authorizationCode: json.containsKey('authorization_code') ? Omittable(json['authorization_code'] as String?) : const Omittable.absent(),
  brand: json.containsKey('brand') ? Omittable(json['brand'] as String?) : const Omittable.absent(),
  captureBefore: json['capture_before'] != null ? (json['capture_before'] as num).toInt() : null,
  checks: json.containsKey('checks') ? Omittable(json['checks'] != null ? PaymentMethodDetailsCardChecks.fromJson(json['checks'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  country: json.containsKey('country') ? Omittable(json['country'] as String?) : const Omittable.absent(),
  expMonth: (json['exp_month'] as num).toInt(),
  expYear: (json['exp_year'] as num).toInt(),
  extendedAuthorization: json['extended_authorization'] != null ? ResourceEnterpriseFeaturesExtendedAuthorizationExtendedAuthorization.fromJson(json['extended_authorization'] as Map<String, dynamic>) : null,
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  funding: json.containsKey('funding') ? Omittable(json['funding'] as String?) : const Omittable.absent(),
  incrementalAuthorization: json['incremental_authorization'] != null ? ResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorization.fromJson(json['incremental_authorization'] as Map<String, dynamic>) : null,
  installments: json.containsKey('installments') ? Omittable(json['installments'] != null ? PaymentMethodDetailsCardInstallments.fromJson(json['installments'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
  mandate: json.containsKey('mandate') ? Omittable(json['mandate'] as String?) : const Omittable.absent(),
  multicapture: json['multicapture'] != null ? ResourceMulticapture.fromJson(json['multicapture'] as Map<String, dynamic>) : null,
  network: json.containsKey('network') ? Omittable(json['network'] as String?) : const Omittable.absent(),
  networkToken: json.containsKey('network_token') ? Omittable(json['network_token'] != null ? PaymentMethodDetailsCardNetworkToken.fromJson(json['network_token'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  networkTransactionId: json.containsKey('network_transaction_id') ? Omittable(json['network_transaction_id'] as String?) : const Omittable.absent(),
  overcapture: json['overcapture'] != null ? ResourceEnterpriseFeaturesOvercaptureOvercapture.fromJson(json['overcapture'] as Map<String, dynamic>) : null,
  regulatedStatus: json.containsKey('regulated_status') ? Omittable(json['regulated_status'] != null ? PaymentMethodDetailsCardRegulatedStatus.fromJson(json['regulated_status'] as String) : null) : const Omittable.absent(),
  threeDSecure: json.containsKey('three_d_secure') ? Omittable(json['three_d_secure'] != null ? ThreeDSecureDetailsCharge.fromJson(json['three_d_secure'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  wallet: json.containsKey('wallet') ? Omittable(json['wallet'] != null ? PaymentMethodDetailsCardWallet.fromJson(json['wallet'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// The authorized amount.
final Omittable<int?> amountAuthorized;

/// Authorization code on the charge.
final Omittable<String?> authorizationCode;

/// Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
final Omittable<String?> brand;

/// When using manual capture, a future timestamp at which the charge will be automatically refunded if uncaptured.
final int? captureBefore;

/// Check results by Card networks on Card address and CVC at time of payment.
final Omittable<PaymentMethodDetailsCardChecks?> checks;

/// Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
final Omittable<String?> country;

/// Two-digit number representing the card's expiration month.
final int expMonth;

/// Four-digit number representing the card's expiration year.
final int expYear;

final ResourceEnterpriseFeaturesExtendedAuthorizationExtendedAuthorization? extendedAuthorization;

/// Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.
/// 
/// *As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
final Omittable<String?> fingerprint;

/// Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
final Omittable<String?> funding;

final ResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorization? incrementalAuthorization;

/// Installment details for this payment.
/// 
/// For more information, see the [installments integration guide](https://docs.stripe.com/payments/installments).
final Omittable<PaymentMethodDetailsCardInstallments?> installments;

/// The last four digits of the card.
final Omittable<String?> last4;

/// ID of the mandate used to make this payment or created by it.
final Omittable<String?> mandate;

final ResourceMulticapture? multicapture;

/// Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `interac`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
final Omittable<String?> network;

/// If this card has network token credentials, this contains the details of the network token credentials.
final Omittable<PaymentMethodDetailsCardNetworkToken?> networkToken;

/// This is used by the financial networks to identify a transaction. Visa calls this the Transaction ID, Mastercard calls this the Trace ID, and American Express calls this the Acquirer Reference Data. This value will be present if it is returned by the financial network in the authorization response, and null otherwise.
final Omittable<String?> networkTransactionId;

final ResourceEnterpriseFeaturesOvercaptureOvercapture? overcapture;

/// Status of a card based on the card issuer.
final Omittable<PaymentMethodDetailsCardRegulatedStatus?> regulatedStatus;

/// Populated if this transaction used 3D Secure authentication.
final Omittable<ThreeDSecureDetailsCharge?> threeDSecure;

/// If this Card is part of a card wallet, this contains the details of the card wallet.
final Omittable<PaymentMethodDetailsCardWallet?> wallet;

Map<String, dynamic> toJson() { return {
  if (amountAuthorized.isPresent) 'amount_authorized': amountAuthorized.value,
  if (authorizationCode.isPresent) 'authorization_code': authorizationCode.value,
  if (brand.isPresent) 'brand': brand.value,
  'capture_before': ?captureBefore,
  if (checks.isPresent) 'checks': checks.value?.toJson(),
  if (country.isPresent) 'country': country.value,
  'exp_month': expMonth,
  'exp_year': expYear,
  if (extendedAuthorization != null) 'extended_authorization': extendedAuthorization?.toJson(),
  if (fingerprint.isPresent) 'fingerprint': fingerprint.value,
  if (funding.isPresent) 'funding': funding.value,
  if (incrementalAuthorization != null) 'incremental_authorization': incrementalAuthorization?.toJson(),
  if (installments.isPresent) 'installments': installments.value?.toJson(),
  if (last4.isPresent) 'last4': last4.value,
  if (mandate.isPresent) 'mandate': mandate.value,
  if (multicapture != null) 'multicapture': multicapture?.toJson(),
  if (network.isPresent) 'network': network.value,
  if (networkToken.isPresent) 'network_token': networkToken.value?.toJson(),
  if (networkTransactionId.isPresent) 'network_transaction_id': networkTransactionId.value,
  if (overcapture != null) 'overcapture': overcapture?.toJson(),
  if (regulatedStatus.isPresent) 'regulated_status': regulatedStatus.value?.toJson(),
  if (threeDSecure.isPresent) 'three_d_secure': threeDSecure.value?.toJson(),
  if (wallet.isPresent) 'wallet': wallet.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('exp_month') && json['exp_month'] is num &&
      json.containsKey('exp_year') && json['exp_year'] is num; } 
PaymentMethodDetailsCard copyWith({Omittable<int?>? amountAuthorized, Omittable<String?>? authorizationCode, Omittable<String?>? brand, int? Function()? captureBefore, Omittable<PaymentMethodDetailsCardChecks?>? checks, Omittable<String?>? country, int? expMonth, int? expYear, ResourceEnterpriseFeaturesExtendedAuthorizationExtendedAuthorization? Function()? extendedAuthorization, Omittable<String?>? fingerprint, Omittable<String?>? funding, ResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorization? Function()? incrementalAuthorization, Omittable<PaymentMethodDetailsCardInstallments?>? installments, Omittable<String?>? last4, Omittable<String?>? mandate, ResourceMulticapture? Function()? multicapture, Omittable<String?>? network, Omittable<PaymentMethodDetailsCardNetworkToken?>? networkToken, Omittable<String?>? networkTransactionId, ResourceEnterpriseFeaturesOvercaptureOvercapture? Function()? overcapture, Omittable<PaymentMethodDetailsCardRegulatedStatus?>? regulatedStatus, Omittable<ThreeDSecureDetailsCharge?>? threeDSecure, Omittable<PaymentMethodDetailsCardWallet?>? wallet, }) { return PaymentMethodDetailsCard(
  amountAuthorized: amountAuthorized ?? this.amountAuthorized,
  authorizationCode: authorizationCode ?? this.authorizationCode,
  brand: brand ?? this.brand,
  captureBefore: captureBefore != null ? captureBefore() : this.captureBefore,
  checks: checks ?? this.checks,
  country: country ?? this.country,
  expMonth: expMonth ?? this.expMonth,
  expYear: expYear ?? this.expYear,
  extendedAuthorization: extendedAuthorization != null ? extendedAuthorization() : this.extendedAuthorization,
  fingerprint: fingerprint ?? this.fingerprint,
  funding: funding ?? this.funding,
  incrementalAuthorization: incrementalAuthorization != null ? incrementalAuthorization() : this.incrementalAuthorization,
  installments: installments ?? this.installments,
  last4: last4 ?? this.last4,
  mandate: mandate ?? this.mandate,
  multicapture: multicapture != null ? multicapture() : this.multicapture,
  network: network ?? this.network,
  networkToken: networkToken ?? this.networkToken,
  networkTransactionId: networkTransactionId ?? this.networkTransactionId,
  overcapture: overcapture != null ? overcapture() : this.overcapture,
  regulatedStatus: regulatedStatus ?? this.regulatedStatus,
  threeDSecure: threeDSecure ?? this.threeDSecure,
  wallet: wallet ?? this.wallet,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsCard &&
          amountAuthorized == other.amountAuthorized &&
          authorizationCode == other.authorizationCode &&
          brand == other.brand &&
          captureBefore == other.captureBefore &&
          checks == other.checks &&
          country == other.country &&
          expMonth == other.expMonth &&
          expYear == other.expYear &&
          extendedAuthorization == other.extendedAuthorization &&
          fingerprint == other.fingerprint &&
          funding == other.funding &&
          incrementalAuthorization == other.incrementalAuthorization &&
          installments == other.installments &&
          last4 == other.last4 &&
          mandate == other.mandate &&
          multicapture == other.multicapture &&
          network == other.network &&
          networkToken == other.networkToken &&
          networkTransactionId == other.networkTransactionId &&
          overcapture == other.overcapture &&
          regulatedStatus == other.regulatedStatus &&
          threeDSecure == other.threeDSecure &&
          wallet == other.wallet; } 
@override int get hashCode { return Object.hashAll([amountAuthorized, authorizationCode, brand, captureBefore, checks, country, expMonth, expYear, extendedAuthorization, fingerprint, funding, incrementalAuthorization, installments, last4, mandate, multicapture, network, networkToken, networkTransactionId, overcapture, regulatedStatus, threeDSecure, wallet]); } 
@override String toString() { return 'PaymentMethodDetailsCard(amountAuthorized: $amountAuthorized, authorizationCode: $authorizationCode, brand: $brand, captureBefore: $captureBefore, checks: $checks, country: $country, expMonth: $expMonth, expYear: $expYear, extendedAuthorization: $extendedAuthorization, fingerprint: $fingerprint, funding: $funding, incrementalAuthorization: $incrementalAuthorization, installments: $installments, last4: $last4, mandate: $mandate, multicapture: $multicapture, network: $network, networkToken: $networkToken, networkTransactionId: $networkTransactionId, overcapture: $overcapture, regulatedStatus: $regulatedStatus, threeDSecure: $threeDSecure, wallet: $wallet)'; } 
 }
