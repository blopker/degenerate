// GENERATED CODE - DO NOT MODIFY BY HAND

/// The customer's bank, if provided.
final class PaymentMethodP24Bank {const PaymentMethodP24Bank._(this.value);

factory PaymentMethodP24Bank.fromJson(String json) { return switch (json) {
  'alior_bank' => aliorBank,
  'bank_millennium' => bankMillennium,
  'bank_nowy_bfg_sa' => bankNowyBfgSa,
  'bank_pekao_sa' => bankPekaoSa,
  'banki_spbdzielcze' => bankiSpbdzielcze,
  'blik' => blik,
  'bnp_paribas' => bnpParibas,
  'boz' => boz,
  'citi_handlowy' => citiHandlowy,
  'credit_agricole' => creditAgricole,
  'envelobank' => envelobank,
  'etransfer_pocztowy24' => etransferPocztowy24,
  'getin_bank' => getinBank,
  'ideabank' => ideabank,
  'ing' => ing,
  'inteligo' => inteligo,
  'mbank_mtransfer' => mbankMtransfer,
  'nest_przelew' => nestPrzelew,
  'noble_pay' => noblePay,
  'pbac_z_ipko' => pbacZIpko,
  'plus_bank' => plusBank,
  'santander_przelew24' => santanderPrzelew24,
  'tmobile_usbugi_bankowe' => tmobileUsbugiBankowe,
  'toyota_bank' => toyotaBank,
  'velobank' => velobank,
  'volkswagen_bank' => volkswagenBank,
  _ => PaymentMethodP24Bank._(json),
}; }

static const PaymentMethodP24Bank aliorBank = PaymentMethodP24Bank._('alior_bank');

static const PaymentMethodP24Bank bankMillennium = PaymentMethodP24Bank._('bank_millennium');

static const PaymentMethodP24Bank bankNowyBfgSa = PaymentMethodP24Bank._('bank_nowy_bfg_sa');

static const PaymentMethodP24Bank bankPekaoSa = PaymentMethodP24Bank._('bank_pekao_sa');

static const PaymentMethodP24Bank bankiSpbdzielcze = PaymentMethodP24Bank._('banki_spbdzielcze');

static const PaymentMethodP24Bank blik = PaymentMethodP24Bank._('blik');

static const PaymentMethodP24Bank bnpParibas = PaymentMethodP24Bank._('bnp_paribas');

static const PaymentMethodP24Bank boz = PaymentMethodP24Bank._('boz');

static const PaymentMethodP24Bank citiHandlowy = PaymentMethodP24Bank._('citi_handlowy');

static const PaymentMethodP24Bank creditAgricole = PaymentMethodP24Bank._('credit_agricole');

static const PaymentMethodP24Bank envelobank = PaymentMethodP24Bank._('envelobank');

static const PaymentMethodP24Bank etransferPocztowy24 = PaymentMethodP24Bank._('etransfer_pocztowy24');

static const PaymentMethodP24Bank getinBank = PaymentMethodP24Bank._('getin_bank');

static const PaymentMethodP24Bank ideabank = PaymentMethodP24Bank._('ideabank');

static const PaymentMethodP24Bank ing = PaymentMethodP24Bank._('ing');

static const PaymentMethodP24Bank inteligo = PaymentMethodP24Bank._('inteligo');

static const PaymentMethodP24Bank mbankMtransfer = PaymentMethodP24Bank._('mbank_mtransfer');

static const PaymentMethodP24Bank nestPrzelew = PaymentMethodP24Bank._('nest_przelew');

static const PaymentMethodP24Bank noblePay = PaymentMethodP24Bank._('noble_pay');

static const PaymentMethodP24Bank pbacZIpko = PaymentMethodP24Bank._('pbac_z_ipko');

static const PaymentMethodP24Bank plusBank = PaymentMethodP24Bank._('plus_bank');

static const PaymentMethodP24Bank santanderPrzelew24 = PaymentMethodP24Bank._('santander_przelew24');

static const PaymentMethodP24Bank tmobileUsbugiBankowe = PaymentMethodP24Bank._('tmobile_usbugi_bankowe');

static const PaymentMethodP24Bank toyotaBank = PaymentMethodP24Bank._('toyota_bank');

static const PaymentMethodP24Bank velobank = PaymentMethodP24Bank._('velobank');

static const PaymentMethodP24Bank volkswagenBank = PaymentMethodP24Bank._('volkswagen_bank');

static const List<PaymentMethodP24Bank> values = [aliorBank, bankMillennium, bankNowyBfgSa, bankPekaoSa, bankiSpbdzielcze, blik, bnpParibas, boz, citiHandlowy, creditAgricole, envelobank, etransferPocztowy24, getinBank, ideabank, ing, inteligo, mbankMtransfer, nestPrzelew, noblePay, pbacZIpko, plusBank, santanderPrzelew24, tmobileUsbugiBankowe, toyotaBank, velobank, volkswagenBank];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodP24Bank && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodP24Bank($value)'; } 
 }
/// 
final class PaymentMethodP24 {const PaymentMethodP24({this.bank});

factory PaymentMethodP24.fromJson(Map<String, dynamic> json) { return PaymentMethodP24(
  bank: json['bank'] != null ? PaymentMethodP24Bank.fromJson(json['bank'] as String) : null,
); }

/// The customer's bank, if provided.
final PaymentMethodP24Bank? bank;

Map<String, dynamic> toJson() { return {
  if (bank != null) 'bank': bank?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bank'}.contains(key)); } 
PaymentMethodP24 copyWith({PaymentMethodP24Bank? Function()? bank}) { return PaymentMethodP24(
  bank: bank != null ? bank() : this.bank,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodP24 &&
          bank == other.bank; } 
@override int get hashCode { return bank.hashCode; } 
@override String toString() { return 'PaymentMethodP24(bank: $bank)'; } 
 }
