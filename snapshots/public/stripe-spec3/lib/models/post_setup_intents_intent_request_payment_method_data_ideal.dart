// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsIntentRequestPaymentMethodDataIdealBank {const PostSetupIntentsIntentRequestPaymentMethodDataIdealBank._(this.value);

factory PostSetupIntentsIntentRequestPaymentMethodDataIdealBank.fromJson(String json) { return switch (json) {
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
  _ => PostSetupIntentsIntentRequestPaymentMethodDataIdealBank._(json),
}; }

static const PostSetupIntentsIntentRequestPaymentMethodDataIdealBank abnAmro = PostSetupIntentsIntentRequestPaymentMethodDataIdealBank._('abn_amro');

static const PostSetupIntentsIntentRequestPaymentMethodDataIdealBank adyen = PostSetupIntentsIntentRequestPaymentMethodDataIdealBank._('adyen');

static const PostSetupIntentsIntentRequestPaymentMethodDataIdealBank asnBank = PostSetupIntentsIntentRequestPaymentMethodDataIdealBank._('asn_bank');

static const PostSetupIntentsIntentRequestPaymentMethodDataIdealBank bunq = PostSetupIntentsIntentRequestPaymentMethodDataIdealBank._('bunq');

static const PostSetupIntentsIntentRequestPaymentMethodDataIdealBank buut = PostSetupIntentsIntentRequestPaymentMethodDataIdealBank._('buut');

static const PostSetupIntentsIntentRequestPaymentMethodDataIdealBank finom = PostSetupIntentsIntentRequestPaymentMethodDataIdealBank._('finom');

static const PostSetupIntentsIntentRequestPaymentMethodDataIdealBank handelsbanken = PostSetupIntentsIntentRequestPaymentMethodDataIdealBank._('handelsbanken');

static const PostSetupIntentsIntentRequestPaymentMethodDataIdealBank ing = PostSetupIntentsIntentRequestPaymentMethodDataIdealBank._('ing');

static const PostSetupIntentsIntentRequestPaymentMethodDataIdealBank knab = PostSetupIntentsIntentRequestPaymentMethodDataIdealBank._('knab');

static const PostSetupIntentsIntentRequestPaymentMethodDataIdealBank mollie = PostSetupIntentsIntentRequestPaymentMethodDataIdealBank._('mollie');

static const PostSetupIntentsIntentRequestPaymentMethodDataIdealBank moneyou = PostSetupIntentsIntentRequestPaymentMethodDataIdealBank._('moneyou');

static const PostSetupIntentsIntentRequestPaymentMethodDataIdealBank n26 = PostSetupIntentsIntentRequestPaymentMethodDataIdealBank._('n26');

static const PostSetupIntentsIntentRequestPaymentMethodDataIdealBank nn = PostSetupIntentsIntentRequestPaymentMethodDataIdealBank._('nn');

static const PostSetupIntentsIntentRequestPaymentMethodDataIdealBank rabobank = PostSetupIntentsIntentRequestPaymentMethodDataIdealBank._('rabobank');

static const PostSetupIntentsIntentRequestPaymentMethodDataIdealBank regiobank = PostSetupIntentsIntentRequestPaymentMethodDataIdealBank._('regiobank');

static const PostSetupIntentsIntentRequestPaymentMethodDataIdealBank revolut = PostSetupIntentsIntentRequestPaymentMethodDataIdealBank._('revolut');

static const PostSetupIntentsIntentRequestPaymentMethodDataIdealBank snsBank = PostSetupIntentsIntentRequestPaymentMethodDataIdealBank._('sns_bank');

static const PostSetupIntentsIntentRequestPaymentMethodDataIdealBank triodosBank = PostSetupIntentsIntentRequestPaymentMethodDataIdealBank._('triodos_bank');

static const PostSetupIntentsIntentRequestPaymentMethodDataIdealBank vanLanschot = PostSetupIntentsIntentRequestPaymentMethodDataIdealBank._('van_lanschot');

static const PostSetupIntentsIntentRequestPaymentMethodDataIdealBank yoursafe = PostSetupIntentsIntentRequestPaymentMethodDataIdealBank._('yoursafe');

static const List<PostSetupIntentsIntentRequestPaymentMethodDataIdealBank> values = [abnAmro, adyen, asnBank, bunq, buut, finom, handelsbanken, ing, knab, mollie, moneyou, n26, nn, rabobank, regiobank, revolut, snsBank, triodosBank, vanLanschot, yoursafe];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentRequestPaymentMethodDataIdealBank && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodDataIdealBank($value)'; } 
 }
@immutable final class PostSetupIntentsIntentRequestPaymentMethodDataIdeal {const PostSetupIntentsIntentRequestPaymentMethodDataIdeal({this.bank});

factory PostSetupIntentsIntentRequestPaymentMethodDataIdeal.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentRequestPaymentMethodDataIdeal(
  bank: json['bank'] != null ? PostSetupIntentsIntentRequestPaymentMethodDataIdealBank.fromJson(json['bank'] as String) : null,
); }

final PostSetupIntentsIntentRequestPaymentMethodDataIdealBank? bank;

Map<String, dynamic> toJson() { return {
  if (bank != null) 'bank': bank?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bank'}.contains(key)); } 
PostSetupIntentsIntentRequestPaymentMethodDataIdeal copyWith({PostSetupIntentsIntentRequestPaymentMethodDataIdealBank Function()? bank}) { return PostSetupIntentsIntentRequestPaymentMethodDataIdeal(
  bank: bank != null ? bank() : this.bank,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentRequestPaymentMethodDataIdeal &&
          bank == other.bank; } 
@override int get hashCode { return bank.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodDataIdeal(bank: $bank)'; } 
 }
