// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank {const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank.fromJson(String json) { return switch (json) {
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
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank abnAmro = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank._('abn_amro');

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank adyen = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank._('adyen');

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank asnBank = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank._('asn_bank');

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank bunq = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank._('bunq');

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank buut = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank._('buut');

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank finom = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank._('finom');

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank handelsbanken = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank._('handelsbanken');

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank ing = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank._('ing');

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank knab = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank._('knab');

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank mollie = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank._('mollie');

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank moneyou = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank._('moneyou');

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank n26 = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank._('n26');

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank nn = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank._('nn');

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank rabobank = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank._('rabobank');

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank regiobank = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank._('regiobank');

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank revolut = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank._('revolut');

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank snsBank = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank._('sns_bank');

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank triodosBank = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank._('triodos_bank');

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank vanLanschot = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank._('van_lanschot');

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank yoursafe = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank._('yoursafe');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank> values = [abnAmro, adyen, asnBank, bunq, buut, finom, handelsbanken, ing, knab, mollie, moneyou, n26, nn, rabobank, regiobank, revolut, snsBank, triodosBank, vanLanschot, yoursafe];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank($value)'; } 
 }
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdeal {const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdeal({this.bank});

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdeal.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdeal(
  bank: json['bank'] != null ? PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank.fromJson(json['bank'] as String) : null,
); }

final PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank? bank;

Map<String, dynamic> toJson() { return {
  if (bank != null) 'bank': bank?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdeal copyWith({PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdealBank Function()? bank}) { return PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdeal(
  bank: bank != null ? bank() : this.bank,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdeal &&
          bank == other.bank; } 
@override int get hashCode { return bank.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodDataIdeal(bank: $bank)'; } 
 }
