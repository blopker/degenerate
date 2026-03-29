// GENERATED CODE - DO NOT MODIFY BY HAND

/// The customer's bank, if provided. Can be one of `abn_amro`, `adyen`, `asn_bank`, `bunq`, `buut`, `finom`, `handelsbanken`, `ing`, `knab`, `mollie`, `moneyou`, `n26`, `nn`, `rabobank`, `regiobank`, `revolut`, `sns_bank`, `triodos_bank`, `van_lanschot`, or `yoursafe`.
final class PaymentMethodIdealBank {const PaymentMethodIdealBank._(this.value);

factory PaymentMethodIdealBank.fromJson(String json) { return switch (json) {
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
  _ => PaymentMethodIdealBank._(json),
}; }

static const PaymentMethodIdealBank abnAmro = PaymentMethodIdealBank._('abn_amro');

static const PaymentMethodIdealBank adyen = PaymentMethodIdealBank._('adyen');

static const PaymentMethodIdealBank asnBank = PaymentMethodIdealBank._('asn_bank');

static const PaymentMethodIdealBank bunq = PaymentMethodIdealBank._('bunq');

static const PaymentMethodIdealBank buut = PaymentMethodIdealBank._('buut');

static const PaymentMethodIdealBank finom = PaymentMethodIdealBank._('finom');

static const PaymentMethodIdealBank handelsbanken = PaymentMethodIdealBank._('handelsbanken');

static const PaymentMethodIdealBank ing = PaymentMethodIdealBank._('ing');

static const PaymentMethodIdealBank knab = PaymentMethodIdealBank._('knab');

static const PaymentMethodIdealBank mollie = PaymentMethodIdealBank._('mollie');

static const PaymentMethodIdealBank moneyou = PaymentMethodIdealBank._('moneyou');

static const PaymentMethodIdealBank n26 = PaymentMethodIdealBank._('n26');

static const PaymentMethodIdealBank nn = PaymentMethodIdealBank._('nn');

static const PaymentMethodIdealBank rabobank = PaymentMethodIdealBank._('rabobank');

static const PaymentMethodIdealBank regiobank = PaymentMethodIdealBank._('regiobank');

static const PaymentMethodIdealBank revolut = PaymentMethodIdealBank._('revolut');

static const PaymentMethodIdealBank snsBank = PaymentMethodIdealBank._('sns_bank');

static const PaymentMethodIdealBank triodosBank = PaymentMethodIdealBank._('triodos_bank');

static const PaymentMethodIdealBank vanLanschot = PaymentMethodIdealBank._('van_lanschot');

static const PaymentMethodIdealBank yoursafe = PaymentMethodIdealBank._('yoursafe');

static const List<PaymentMethodIdealBank> values = [abnAmro, adyen, asnBank, bunq, buut, finom, handelsbanken, ing, knab, mollie, moneyou, n26, nn, rabobank, regiobank, revolut, snsBank, triodosBank, vanLanschot, yoursafe];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodIdealBank && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodIdealBank($value)'; } 
 }
/// The Bank Identifier Code of the customer's bank, if the bank was provided.
final class PaymentMethodIdealBic {const PaymentMethodIdealBic._(this.value);

factory PaymentMethodIdealBic.fromJson(String json) { return switch (json) {
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
  _ => PaymentMethodIdealBic._(json),
}; }

static const PaymentMethodIdealBic abnanl2A = PaymentMethodIdealBic._('ABNANL2A');

static const PaymentMethodIdealBic adybnl2A = PaymentMethodIdealBic._('ADYBNL2A');

static const PaymentMethodIdealBic asnbnl21 = PaymentMethodIdealBic._('ASNBNL21');

static const PaymentMethodIdealBic bitsnl2A = PaymentMethodIdealBic._('BITSNL2A');

static const PaymentMethodIdealBic bunqnl2A = PaymentMethodIdealBic._('BUNQNL2A');

static const PaymentMethodIdealBic buutnl2A = PaymentMethodIdealBic._('BUUTNL2A');

static const PaymentMethodIdealBic fnomnl22 = PaymentMethodIdealBic._('FNOMNL22');

static const PaymentMethodIdealBic fvlbnl22 = PaymentMethodIdealBic._('FVLBNL22');

static const PaymentMethodIdealBic handnl2A = PaymentMethodIdealBic._('HANDNL2A');

static const PaymentMethodIdealBic ingbnl2A = PaymentMethodIdealBic._('INGBNL2A');

static const PaymentMethodIdealBic knabnl2H = PaymentMethodIdealBic._('KNABNL2H');

static const PaymentMethodIdealBic mllenl2A = PaymentMethodIdealBic._('MLLENL2A');

static const PaymentMethodIdealBic moyonl21 = PaymentMethodIdealBic._('MOYONL21');

static const PaymentMethodIdealBic nnbanl2G = PaymentMethodIdealBic._('NNBANL2G');

static const PaymentMethodIdealBic ntsbdeb1 = PaymentMethodIdealBic._('NTSBDEB1');

static const PaymentMethodIdealBic rabonl2U = PaymentMethodIdealBic._('RABONL2U');

static const PaymentMethodIdealBic rbrbnl21 = PaymentMethodIdealBic._('RBRBNL21');

static const PaymentMethodIdealBic revoie23 = PaymentMethodIdealBic._('REVOIE23');

static const PaymentMethodIdealBic revolt21 = PaymentMethodIdealBic._('REVOLT21');

static const PaymentMethodIdealBic snsbnl2A = PaymentMethodIdealBic._('SNSBNL2A');

static const PaymentMethodIdealBic trionl2U = PaymentMethodIdealBic._('TRIONL2U');

static const List<PaymentMethodIdealBic> values = [abnanl2A, adybnl2A, asnbnl21, bitsnl2A, bunqnl2A, buutnl2A, fnomnl22, fvlbnl22, handnl2A, ingbnl2A, knabnl2H, mllenl2A, moyonl21, nnbanl2G, ntsbdeb1, rabonl2U, rbrbnl21, revoie23, revolt21, snsbnl2A, trionl2U];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodIdealBic && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodIdealBic($value)'; } 
 }
/// 
final class PaymentMethodIdeal {const PaymentMethodIdeal({this.bank, this.bic, });

factory PaymentMethodIdeal.fromJson(Map<String, dynamic> json) { return PaymentMethodIdeal(
  bank: json['bank'] != null ? PaymentMethodIdealBank.fromJson(json['bank'] as String) : null,
  bic: json['bic'] != null ? PaymentMethodIdealBic.fromJson(json['bic'] as String) : null,
); }

/// The customer's bank, if provided. Can be one of `abn_amro`, `adyen`, `asn_bank`, `bunq`, `buut`, `finom`, `handelsbanken`, `ing`, `knab`, `mollie`, `moneyou`, `n26`, `nn`, `rabobank`, `regiobank`, `revolut`, `sns_bank`, `triodos_bank`, `van_lanschot`, or `yoursafe`.
final PaymentMethodIdealBank? bank;

/// The Bank Identifier Code of the customer's bank, if the bank was provided.
final PaymentMethodIdealBic? bic;

Map<String, dynamic> toJson() { return {
  if (bank != null) 'bank': bank?.toJson(),
  if (bic != null) 'bic': bic?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentMethodIdeal copyWith({PaymentMethodIdealBank? Function()? bank, PaymentMethodIdealBic? Function()? bic, }) { return PaymentMethodIdeal(
  bank: bank != null ? bank() : this.bank,
  bic: bic != null ? bic() : this.bic,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodIdeal &&
          bank == other.bank &&
          bic == other.bic; } 
@override int get hashCode { return Object.hash(bank, bic); } 
@override String toString() { return 'PaymentMethodIdeal(bank: $bank, bic: $bic)'; } 
 }
