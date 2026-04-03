// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mandate.dart';import 'payment_method.dart';import 'setup_attempt_payment_method_details_ideal_generated_sepa_debit.dart';import 'setup_attempt_payment_method_details_ideal_generated_sepa_debit_mandate.dart';/// The customer's bank. Can be one of `abn_amro`, `adyen`, `asn_bank`, `bunq`, `buut`, `finom`, `handelsbanken`, `ing`, `knab`, `mollie`, `moneyou`, `n26`, `nn`, `rabobank`, `regiobank`, `revolut`, `sns_bank`, `triodos_bank`, `van_lanschot`, or `yoursafe`.
@immutable final class SetupAttemptPaymentMethodDetailsIdealBank {const SetupAttemptPaymentMethodDetailsIdealBank._(this.value);

factory SetupAttemptPaymentMethodDetailsIdealBank.fromJson(String json) { return switch (json) {
  'abn_amro' => abnAmro,
  'adyen' => adyen,
  'asn_bank' => asnBank,
  'bunq' => bunq,
  'buut' => buut,
  'finom' => finom,
  'handelsbanken' => handelsbanken,
  'ing' => ing,
  'knab' => knab,
  'mollie' => mollie,
  'moneyou' => moneyou,
  'n26' => n26,
  'nn' => nn,
  'rabobank' => rabobank,
  'regiobank' => regiobank,
  'revolut' => revolut,
  'sns_bank' => snsBank,
  'triodos_bank' => triodosBank,
  'van_lanschot' => vanLanschot,
  'yoursafe' => yoursafe,
  _ => SetupAttemptPaymentMethodDetailsIdealBank._(json),
}; }

static const SetupAttemptPaymentMethodDetailsIdealBank abnAmro = SetupAttemptPaymentMethodDetailsIdealBank._('abn_amro');

static const SetupAttemptPaymentMethodDetailsIdealBank adyen = SetupAttemptPaymentMethodDetailsIdealBank._('adyen');

static const SetupAttemptPaymentMethodDetailsIdealBank asnBank = SetupAttemptPaymentMethodDetailsIdealBank._('asn_bank');

static const SetupAttemptPaymentMethodDetailsIdealBank bunq = SetupAttemptPaymentMethodDetailsIdealBank._('bunq');

static const SetupAttemptPaymentMethodDetailsIdealBank buut = SetupAttemptPaymentMethodDetailsIdealBank._('buut');

static const SetupAttemptPaymentMethodDetailsIdealBank finom = SetupAttemptPaymentMethodDetailsIdealBank._('finom');

static const SetupAttemptPaymentMethodDetailsIdealBank handelsbanken = SetupAttemptPaymentMethodDetailsIdealBank._('handelsbanken');

static const SetupAttemptPaymentMethodDetailsIdealBank ing = SetupAttemptPaymentMethodDetailsIdealBank._('ing');

static const SetupAttemptPaymentMethodDetailsIdealBank knab = SetupAttemptPaymentMethodDetailsIdealBank._('knab');

static const SetupAttemptPaymentMethodDetailsIdealBank mollie = SetupAttemptPaymentMethodDetailsIdealBank._('mollie');

static const SetupAttemptPaymentMethodDetailsIdealBank moneyou = SetupAttemptPaymentMethodDetailsIdealBank._('moneyou');

static const SetupAttemptPaymentMethodDetailsIdealBank n26 = SetupAttemptPaymentMethodDetailsIdealBank._('n26');

static const SetupAttemptPaymentMethodDetailsIdealBank nn = SetupAttemptPaymentMethodDetailsIdealBank._('nn');

static const SetupAttemptPaymentMethodDetailsIdealBank rabobank = SetupAttemptPaymentMethodDetailsIdealBank._('rabobank');

static const SetupAttemptPaymentMethodDetailsIdealBank regiobank = SetupAttemptPaymentMethodDetailsIdealBank._('regiobank');

static const SetupAttemptPaymentMethodDetailsIdealBank revolut = SetupAttemptPaymentMethodDetailsIdealBank._('revolut');

static const SetupAttemptPaymentMethodDetailsIdealBank snsBank = SetupAttemptPaymentMethodDetailsIdealBank._('sns_bank');

static const SetupAttemptPaymentMethodDetailsIdealBank triodosBank = SetupAttemptPaymentMethodDetailsIdealBank._('triodos_bank');

static const SetupAttemptPaymentMethodDetailsIdealBank vanLanschot = SetupAttemptPaymentMethodDetailsIdealBank._('van_lanschot');

static const SetupAttemptPaymentMethodDetailsIdealBank yoursafe = SetupAttemptPaymentMethodDetailsIdealBank._('yoursafe');

static const List<SetupAttemptPaymentMethodDetailsIdealBank> values = [abnAmro, adyen, asnBank, bunq, buut, finom, handelsbanken, ing, knab, mollie, moneyou, n26, nn, rabobank, regiobank, revolut, snsBank, triodosBank, vanLanschot, yoursafe];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SetupAttemptPaymentMethodDetailsIdealBank && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SetupAttemptPaymentMethodDetailsIdealBank($value)'; } 
 }
/// The Bank Identifier Code of the customer's bank.
@immutable final class SetupAttemptPaymentMethodDetailsIdealBic {const SetupAttemptPaymentMethodDetailsIdealBic._(this.value);

factory SetupAttemptPaymentMethodDetailsIdealBic.fromJson(String json) { return switch (json) {
  'ABNANL2A' => abnanl2A,
  'ADYBNL2A' => adybnl2A,
  'ASNBNL21' => asnbnl21,
  'BITSNL2A' => bitsnl2A,
  'BUNQNL2A' => bunqnl2A,
  'BUUTNL2A' => buutnl2A,
  'FNOMNL22' => fnomnl22,
  'FVLBNL22' => fvlbnl22,
  'HANDNL2A' => handnl2A,
  'INGBNL2A' => ingbnl2A,
  'KNABNL2H' => knabnl2H,
  'MLLENL2A' => mllenl2A,
  'MOYONL21' => moyonl21,
  'NNBANL2G' => nnbanl2G,
  'NTSBDEB1' => ntsbdeb1,
  'RABONL2U' => rabonl2U,
  'RBRBNL21' => rbrbnl21,
  'REVOIE23' => revoie23,
  'REVOLT21' => revolt21,
  'SNSBNL2A' => snsbnl2A,
  'TRIONL2U' => trionl2U,
  _ => SetupAttemptPaymentMethodDetailsIdealBic._(json),
}; }

static const SetupAttemptPaymentMethodDetailsIdealBic abnanl2A = SetupAttemptPaymentMethodDetailsIdealBic._('ABNANL2A');

static const SetupAttemptPaymentMethodDetailsIdealBic adybnl2A = SetupAttemptPaymentMethodDetailsIdealBic._('ADYBNL2A');

static const SetupAttemptPaymentMethodDetailsIdealBic asnbnl21 = SetupAttemptPaymentMethodDetailsIdealBic._('ASNBNL21');

static const SetupAttemptPaymentMethodDetailsIdealBic bitsnl2A = SetupAttemptPaymentMethodDetailsIdealBic._('BITSNL2A');

static const SetupAttemptPaymentMethodDetailsIdealBic bunqnl2A = SetupAttemptPaymentMethodDetailsIdealBic._('BUNQNL2A');

static const SetupAttemptPaymentMethodDetailsIdealBic buutnl2A = SetupAttemptPaymentMethodDetailsIdealBic._('BUUTNL2A');

static const SetupAttemptPaymentMethodDetailsIdealBic fnomnl22 = SetupAttemptPaymentMethodDetailsIdealBic._('FNOMNL22');

static const SetupAttemptPaymentMethodDetailsIdealBic fvlbnl22 = SetupAttemptPaymentMethodDetailsIdealBic._('FVLBNL22');

static const SetupAttemptPaymentMethodDetailsIdealBic handnl2A = SetupAttemptPaymentMethodDetailsIdealBic._('HANDNL2A');

static const SetupAttemptPaymentMethodDetailsIdealBic ingbnl2A = SetupAttemptPaymentMethodDetailsIdealBic._('INGBNL2A');

static const SetupAttemptPaymentMethodDetailsIdealBic knabnl2H = SetupAttemptPaymentMethodDetailsIdealBic._('KNABNL2H');

static const SetupAttemptPaymentMethodDetailsIdealBic mllenl2A = SetupAttemptPaymentMethodDetailsIdealBic._('MLLENL2A');

static const SetupAttemptPaymentMethodDetailsIdealBic moyonl21 = SetupAttemptPaymentMethodDetailsIdealBic._('MOYONL21');

static const SetupAttemptPaymentMethodDetailsIdealBic nnbanl2G = SetupAttemptPaymentMethodDetailsIdealBic._('NNBANL2G');

static const SetupAttemptPaymentMethodDetailsIdealBic ntsbdeb1 = SetupAttemptPaymentMethodDetailsIdealBic._('NTSBDEB1');

static const SetupAttemptPaymentMethodDetailsIdealBic rabonl2U = SetupAttemptPaymentMethodDetailsIdealBic._('RABONL2U');

static const SetupAttemptPaymentMethodDetailsIdealBic rbrbnl21 = SetupAttemptPaymentMethodDetailsIdealBic._('RBRBNL21');

static const SetupAttemptPaymentMethodDetailsIdealBic revoie23 = SetupAttemptPaymentMethodDetailsIdealBic._('REVOIE23');

static const SetupAttemptPaymentMethodDetailsIdealBic revolt21 = SetupAttemptPaymentMethodDetailsIdealBic._('REVOLT21');

static const SetupAttemptPaymentMethodDetailsIdealBic snsbnl2A = SetupAttemptPaymentMethodDetailsIdealBic._('SNSBNL2A');

static const SetupAttemptPaymentMethodDetailsIdealBic trionl2U = SetupAttemptPaymentMethodDetailsIdealBic._('TRIONL2U');

static const List<SetupAttemptPaymentMethodDetailsIdealBic> values = [abnanl2A, adybnl2A, asnbnl21, bitsnl2A, bunqnl2A, buutnl2A, fnomnl22, fvlbnl22, handnl2A, ingbnl2A, knabnl2H, mllenl2A, moyonl21, nnbanl2G, ntsbdeb1, rabonl2U, rbrbnl21, revoie23, revolt21, snsbnl2A, trionl2U];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SetupAttemptPaymentMethodDetailsIdealBic && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SetupAttemptPaymentMethodDetailsIdealBic($value)'; } 
 }
/// 
@immutable final class SetupAttemptPaymentMethodDetailsIdeal {const SetupAttemptPaymentMethodDetailsIdeal({this.bank, this.bic, this.generatedSepaDebit, this.generatedSepaDebitMandate, this.ibanLast4, this.verifiedName, });

factory SetupAttemptPaymentMethodDetailsIdeal.fromJson(Map<String, dynamic> json) { return SetupAttemptPaymentMethodDetailsIdeal(
  bank: json['bank'] != null ? SetupAttemptPaymentMethodDetailsIdealBank.fromJson(json['bank'] as String) : null,
  bic: json['bic'] != null ? SetupAttemptPaymentMethodDetailsIdealBic.fromJson(json['bic'] as String) : null,
  generatedSepaDebit: json['generated_sepa_debit'] != null ? OneOf2.parse(json['generated_sepa_debit'], fromA: (v) => v as String, fromB: (v) => PaymentMethod.fromJson(v as Map<String, dynamic>),) : null,
  generatedSepaDebitMandate: json['generated_sepa_debit_mandate'] != null ? OneOf2.parse(json['generated_sepa_debit_mandate'], fromA: (v) => v as String, fromB: (v) => Mandate.fromJson(v as Map<String, dynamic>),) : null,
  ibanLast4: json['iban_last4'] as String?,
  verifiedName: json['verified_name'] as String?,
); }

/// The customer's bank. Can be one of `abn_amro`, `adyen`, `asn_bank`, `bunq`, `buut`, `finom`, `handelsbanken`, `ing`, `knab`, `mollie`, `moneyou`, `n26`, `nn`, `rabobank`, `regiobank`, `revolut`, `sns_bank`, `triodos_bank`, `van_lanschot`, or `yoursafe`.
final SetupAttemptPaymentMethodDetailsIdealBank? bank;

/// The Bank Identifier Code of the customer's bank.
final SetupAttemptPaymentMethodDetailsIdealBic? bic;

/// The ID of the SEPA Direct Debit PaymentMethod which was generated by this SetupAttempt.
final SetupAttemptPaymentMethodDetailsIdealGeneratedSepaDebit? generatedSepaDebit;

/// The mandate for the SEPA Direct Debit PaymentMethod which was generated by this SetupAttempt.
final SetupAttemptPaymentMethodDetailsIdealGeneratedSepaDebitMandate? generatedSepaDebitMandate;

/// Last four characters of the IBAN.
final String? ibanLast4;

/// Owner's verified full name. Values are verified or provided by iDEAL directly
/// (if supported) at the time of authorization or settlement. They cannot be set or mutated.
final String? verifiedName;

Map<String, dynamic> toJson() { return {
  if (bank != null) 'bank': bank?.toJson(),
  if (bic != null) 'bic': bic?.toJson(),
  if (generatedSepaDebit != null) 'generated_sepa_debit': generatedSepaDebit?.toJson(),
  if (generatedSepaDebitMandate != null) 'generated_sepa_debit_mandate': generatedSepaDebitMandate?.toJson(),
  'iban_last4': ?ibanLast4,
  'verified_name': ?verifiedName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bank', 'bic', 'generated_sepa_debit', 'generated_sepa_debit_mandate', 'iban_last4', 'verified_name'}.contains(key)); } 
SetupAttemptPaymentMethodDetailsIdeal copyWith({SetupAttemptPaymentMethodDetailsIdealBank? Function()? bank, SetupAttemptPaymentMethodDetailsIdealBic? Function()? bic, SetupAttemptPaymentMethodDetailsIdealGeneratedSepaDebit? Function()? generatedSepaDebit, SetupAttemptPaymentMethodDetailsIdealGeneratedSepaDebitMandate? Function()? generatedSepaDebitMandate, String? Function()? ibanLast4, String? Function()? verifiedName, }) { return SetupAttemptPaymentMethodDetailsIdeal(
  bank: bank != null ? bank() : this.bank,
  bic: bic != null ? bic() : this.bic,
  generatedSepaDebit: generatedSepaDebit != null ? generatedSepaDebit() : this.generatedSepaDebit,
  generatedSepaDebitMandate: generatedSepaDebitMandate != null ? generatedSepaDebitMandate() : this.generatedSepaDebitMandate,
  ibanLast4: ibanLast4 != null ? ibanLast4() : this.ibanLast4,
  verifiedName: verifiedName != null ? verifiedName() : this.verifiedName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SetupAttemptPaymentMethodDetailsIdeal &&
          bank == other.bank &&
          bic == other.bic &&
          generatedSepaDebit == other.generatedSepaDebit &&
          generatedSepaDebitMandate == other.generatedSepaDebitMandate &&
          ibanLast4 == other.ibanLast4 &&
          verifiedName == other.verifiedName; } 
@override int get hashCode { return Object.hash(bank, bic, generatedSepaDebit, generatedSepaDebitMandate, ibanLast4, verifiedName); } 
@override String toString() { return 'SetupAttemptPaymentMethodDetailsIdeal(bank: $bank, bic: $bic, generatedSepaDebit: $generatedSepaDebit, generatedSepaDebitMandate: $generatedSepaDebitMandate, ibanLast4: $ibanLast4, verifiedName: $verifiedName)'; } 
 }
