// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payments_primitives_payment_records_resource_payment_method_card_details_resource_checks.dart';import 'payments_primitives_payment_records_resource_payment_method_card_details_resource_installments.dart';import 'payments_primitives_payment_records_resource_payment_method_card_details_resource_network_token.dart';import 'payments_primitives_payment_records_resource_payment_method_card_details_resource_three_d_secure.dart';import 'payments_primitives_payment_records_resource_payment_method_card_details_resource_wallet.dart';/// Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
@immutable final class PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand {const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand._(this.value);

factory PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand.fromJson(String json) { return switch (json) {
  'amex' => amex,
  'cartes_bancaires' => cartesBancaires,
  'diners' => diners,
  'discover' => discover,
  'eftpos_au' => eftposAu,
  'interac' => interac,
  'jcb' => jcb,
  'link' => link,
  'mastercard' => mastercard,
  'unionpay' => unionpay,
  'unknown' => unknown,
  'visa' => visa,
  _ => PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand._(json),
}; }

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand amex = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand._('amex');

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand cartesBancaires = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand._('cartes_bancaires');

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand diners = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand._('diners');

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand discover = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand._('discover');

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand eftposAu = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand._('eftpos_au');

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand interac = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand._('interac');

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand jcb = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand._('jcb');

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand link = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand._('link');

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand mastercard = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand._('mastercard');

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand unionpay = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand._('unionpay');

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand unknown = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand._('unknown');

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand visa = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand._('visa');

static const List<PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand> values = [amex, cartesBancaires, diners, discover, eftposAu, interac, jcb, link, mastercard, unionpay, unknown, visa];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand($value)'; } 
 }
/// Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
@immutable final class PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsFunding {const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsFunding._(this.value);

factory PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsFunding.fromJson(String json) { return switch (json) {
  'credit' => credit,
  'debit' => debit,
  'prepaid' => prepaid,
  'unknown' => unknown,
  _ => PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsFunding._(json),
}; }

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsFunding credit = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsFunding._('credit');

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsFunding debit = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsFunding._('debit');

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsFunding prepaid = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsFunding._('prepaid');

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsFunding unknown = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsFunding._('unknown');

static const List<PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsFunding> values = [credit, debit, prepaid, unknown];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsFunding && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsFunding($value)'; } 
 }
/// Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `interac`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
@immutable final class PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork {const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork._(this.value);

factory PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork.fromJson(String json) { return switch (json) {
  'amex' => amex,
  'cartes_bancaires' => cartesBancaires,
  'diners' => diners,
  'discover' => discover,
  'eftpos_au' => eftposAu,
  'interac' => interac,
  'jcb' => jcb,
  'link' => link,
  'mastercard' => mastercard,
  'unionpay' => unionpay,
  'unknown' => unknown,
  'visa' => visa,
  _ => PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork._(json),
}; }

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork amex = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork._('amex');

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork cartesBancaires = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork._('cartes_bancaires');

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork diners = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork._('diners');

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork discover = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork._('discover');

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork eftposAu = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork._('eftpos_au');

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork interac = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork._('interac');

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork jcb = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork._('jcb');

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork link = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork._('link');

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork mastercard = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork._('mastercard');

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork unionpay = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork._('unionpay');

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork unknown = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork._('unknown');

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork visa = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork._('visa');

static const List<PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork> values = [amex, cartesBancaires, diners, discover, eftposAu, interac, jcb, link, mastercard, unionpay, unknown, visa];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork($value)'; } 
 }
/// The transaction type that was passed for an off-session, Merchant-Initiated transaction, one of `recurring` or `unscheduled`.
@immutable final class PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsStoredCredentialUsage {const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsStoredCredentialUsage._(this.value);

factory PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsStoredCredentialUsage.fromJson(String json) { return switch (json) {
  'recurring' => recurring,
  'unscheduled' => unscheduled,
  _ => PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsStoredCredentialUsage._(json),
}; }

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsStoredCredentialUsage recurring = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsStoredCredentialUsage._('recurring');

static const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsStoredCredentialUsage unscheduled = PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsStoredCredentialUsage._('unscheduled');

static const List<PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsStoredCredentialUsage> values = [recurring, unscheduled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsStoredCredentialUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsStoredCredentialUsage($value)'; } 
 }
/// Details of the card used for this payment attempt.
@immutable final class PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetails {const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetails({required this.brand, required this.expMonth, required this.expYear, required this.funding, required this.last4, this.authorizationCode = const Omittable.absent(), this.captureBefore, this.checks = const Omittable.absent(), this.country = const Omittable.absent(), this.description = const Omittable.absent(), this.fingerprint = const Omittable.absent(), this.iin = const Omittable.absent(), this.installments = const Omittable.absent(), this.issuer = const Omittable.absent(), this.network = const Omittable.absent(), this.networkAdviceCode = const Omittable.absent(), this.networkDeclineCode = const Omittable.absent(), this.networkToken = const Omittable.absent(), this.networkTransactionId = const Omittable.absent(), this.storedCredentialUsage = const Omittable.absent(), this.threeDSecure = const Omittable.absent(), this.wallet = const Omittable.absent(), });

factory PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetails.fromJson(Map<String, dynamic> json) { return PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetails(
  authorizationCode: json.containsKey('authorization_code') ? Omittable(json['authorization_code'] as String?) : const Omittable.absent(),
  brand: PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand.fromJson(json['brand'] as String),
  captureBefore: json['capture_before'] != null ? (json['capture_before'] as num).toInt() : null,
  checks: json.containsKey('checks') ? Omittable(json['checks'] != null ? PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceChecks.fromJson(json['checks'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  country: json.containsKey('country') ? Omittable(json['country'] as String?) : const Omittable.absent(),
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  expMonth: (json['exp_month'] as num).toInt(),
  expYear: (json['exp_year'] as num).toInt(),
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  funding: PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsFunding.fromJson(json['funding'] as String),
  iin: json.containsKey('iin') ? Omittable(json['iin'] as String?) : const Omittable.absent(),
  installments: json.containsKey('installments') ? Omittable(json['installments'] != null ? PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments.fromJson(json['installments'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  issuer: json.containsKey('issuer') ? Omittable(json['issuer'] as String?) : const Omittable.absent(),
  last4: json['last4'] as String,
  network: json.containsKey('network') ? Omittable(json['network'] != null ? PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork.fromJson(json['network'] as String) : null) : const Omittable.absent(),
  networkAdviceCode: json.containsKey('network_advice_code') ? Omittable(json['network_advice_code'] as String?) : const Omittable.absent(),
  networkDeclineCode: json.containsKey('network_decline_code') ? Omittable(json['network_decline_code'] as String?) : const Omittable.absent(),
  networkToken: json.containsKey('network_token') ? Omittable(json['network_token'] != null ? PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceNetworkToken.fromJson(json['network_token'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  networkTransactionId: json.containsKey('network_transaction_id') ? Omittable(json['network_transaction_id'] as String?) : const Omittable.absent(),
  storedCredentialUsage: json.containsKey('stored_credential_usage') ? Omittable(json['stored_credential_usage'] != null ? PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsStoredCredentialUsage.fromJson(json['stored_credential_usage'] as String) : null) : const Omittable.absent(),
  threeDSecure: json.containsKey('three_d_secure') ? Omittable(json['three_d_secure'] != null ? PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceThreeDSecure.fromJson(json['three_d_secure'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  wallet: json.containsKey('wallet') ? Omittable(json['wallet'] != null ? PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWallet.fromJson(json['wallet'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// The authorization code of the payment.
final Omittable<String?> authorizationCode;

/// Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
final PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand brand;

/// When using manual capture, a future timestamp at which the charge will be automatically refunded if uncaptured.
final int? captureBefore;

/// Check results by Card networks on Card address and CVC at time of payment.
final Omittable<PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceChecks?> checks;

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
final PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsFunding funding;

/// Issuer identification number of the card.
final Omittable<String?> iin;

/// Installment details for this payment.
final Omittable<PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments?> installments;

/// The name of the card's issuing bank.
final Omittable<String?> issuer;

/// The last four digits of the card.
final String last4;

/// Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `interac`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
final Omittable<PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork?> network;

/// Advice code from the card network for the failed payment.
final Omittable<String?> networkAdviceCode;

/// Decline code from the card network for the failed payment.
final Omittable<String?> networkDeclineCode;

/// If this card has network token credentials, this contains the details of the network token credentials.
final Omittable<PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceNetworkToken?> networkToken;

/// This is used by the financial networks to identify a transaction. Visa calls this the Transaction ID, Mastercard calls this the Trace ID, and American Express calls this the Acquirer Reference Data. This value will be present if it is returned by the financial network in the authorization response, and null otherwise.
final Omittable<String?> networkTransactionId;

/// The transaction type that was passed for an off-session, Merchant-Initiated transaction, one of `recurring` or `unscheduled`.
final Omittable<PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsStoredCredentialUsage?> storedCredentialUsage;

/// Populated if this transaction used 3D Secure authentication.
final Omittable<PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceThreeDSecure?> threeDSecure;

/// If this Card is part of a card wallet, this contains the details of the card wallet.
final Omittable<PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWallet?> wallet;

Map<String, dynamic> toJson() { return {
  if (authorizationCode.isPresent) 'authorization_code': authorizationCode.value,
  'brand': brand.toJson(),
  'capture_before': ?captureBefore,
  if (checks.isPresent) 'checks': checks.value?.toJson(),
  if (country.isPresent) 'country': country.value,
  if (description.isPresent) 'description': description.value,
  'exp_month': expMonth,
  'exp_year': expYear,
  if (fingerprint.isPresent) 'fingerprint': fingerprint.value,
  'funding': funding.toJson(),
  if (iin.isPresent) 'iin': iin.value,
  if (installments.isPresent) 'installments': installments.value?.toJson(),
  if (issuer.isPresent) 'issuer': issuer.value,
  'last4': last4,
  if (network.isPresent) 'network': network.value?.toJson(),
  if (networkAdviceCode.isPresent) 'network_advice_code': networkAdviceCode.value,
  if (networkDeclineCode.isPresent) 'network_decline_code': networkDeclineCode.value,
  if (networkToken.isPresent) 'network_token': networkToken.value?.toJson(),
  if (networkTransactionId.isPresent) 'network_transaction_id': networkTransactionId.value,
  if (storedCredentialUsage.isPresent) 'stored_credential_usage': storedCredentialUsage.value?.toJson(),
  if (threeDSecure.isPresent) 'three_d_secure': threeDSecure.value?.toJson(),
  if (wallet.isPresent) 'wallet': wallet.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('brand') &&
      json.containsKey('exp_month') && json['exp_month'] is num &&
      json.containsKey('exp_year') && json['exp_year'] is num &&
      json.containsKey('funding') &&
      json.containsKey('last4') && json['last4'] is String; } 
PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetails copyWith({Omittable<String?>? authorizationCode, PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand? brand, int? Function()? captureBefore, Omittable<PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceChecks?>? checks, Omittable<String?>? country, Omittable<String?>? description, int? expMonth, int? expYear, Omittable<String?>? fingerprint, PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsFunding? funding, Omittable<String?>? iin, Omittable<PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments?>? installments, Omittable<String?>? issuer, String? last4, Omittable<PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork?>? network, Omittable<String?>? networkAdviceCode, Omittable<String?>? networkDeclineCode, Omittable<PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceNetworkToken?>? networkToken, Omittable<String?>? networkTransactionId, Omittable<PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsStoredCredentialUsage?>? storedCredentialUsage, Omittable<PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceThreeDSecure?>? threeDSecure, Omittable<PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWallet?>? wallet, }) { return PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetails(
  authorizationCode: authorizationCode ?? this.authorizationCode,
  brand: brand ?? this.brand,
  captureBefore: captureBefore != null ? captureBefore() : this.captureBefore,
  checks: checks ?? this.checks,
  country: country ?? this.country,
  description: description ?? this.description,
  expMonth: expMonth ?? this.expMonth,
  expYear: expYear ?? this.expYear,
  fingerprint: fingerprint ?? this.fingerprint,
  funding: funding ?? this.funding,
  iin: iin ?? this.iin,
  installments: installments ?? this.installments,
  issuer: issuer ?? this.issuer,
  last4: last4 ?? this.last4,
  network: network ?? this.network,
  networkAdviceCode: networkAdviceCode ?? this.networkAdviceCode,
  networkDeclineCode: networkDeclineCode ?? this.networkDeclineCode,
  networkToken: networkToken ?? this.networkToken,
  networkTransactionId: networkTransactionId ?? this.networkTransactionId,
  storedCredentialUsage: storedCredentialUsage ?? this.storedCredentialUsage,
  threeDSecure: threeDSecure ?? this.threeDSecure,
  wallet: wallet ?? this.wallet,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetails &&
          authorizationCode == other.authorizationCode &&
          brand == other.brand &&
          captureBefore == other.captureBefore &&
          checks == other.checks &&
          country == other.country &&
          description == other.description &&
          expMonth == other.expMonth &&
          expYear == other.expYear &&
          fingerprint == other.fingerprint &&
          funding == other.funding &&
          iin == other.iin &&
          installments == other.installments &&
          issuer == other.issuer &&
          last4 == other.last4 &&
          network == other.network &&
          networkAdviceCode == other.networkAdviceCode &&
          networkDeclineCode == other.networkDeclineCode &&
          networkToken == other.networkToken &&
          networkTransactionId == other.networkTransactionId &&
          storedCredentialUsage == other.storedCredentialUsage &&
          threeDSecure == other.threeDSecure &&
          wallet == other.wallet; } 
@override int get hashCode { return Object.hashAll([authorizationCode, brand, captureBefore, checks, country, description, expMonth, expYear, fingerprint, funding, iin, installments, issuer, last4, network, networkAdviceCode, networkDeclineCode, networkToken, networkTransactionId, storedCredentialUsage, threeDSecure, wallet]); } 
@override String toString() { return 'PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetails(authorizationCode: $authorizationCode, brand: $brand, captureBefore: $captureBefore, checks: $checks, country: $country, description: $description, expMonth: $expMonth, expYear: $expYear, fingerprint: $fingerprint, funding: $funding, iin: $iin, installments: $installments, issuer: $issuer, last4: $last4, network: $network, networkAdviceCode: $networkAdviceCode, networkDeclineCode: $networkDeclineCode, networkToken: $networkToken, networkTransactionId: $networkTransactionId, storedCredentialUsage: $storedCredentialUsage, threeDSecure: $threeDSecure, wallet: $wallet)'; } 
 }
