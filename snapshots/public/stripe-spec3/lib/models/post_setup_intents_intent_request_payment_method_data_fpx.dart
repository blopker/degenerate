// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsIntentRequestPaymentMethodDataFpxBank {const PostSetupIntentsIntentRequestPaymentMethodDataFpxBank._(this.value);

factory PostSetupIntentsIntentRequestPaymentMethodDataFpxBank.fromJson(String json) { return switch (json) {
  'affin_bank' => affinBank,
  'agrobank' => agrobank,
  'alliance_bank' => allianceBank,
  'ambank' => ambank,
  'bank_islam' => bankIslam,
  'bank_muamalat' => bankMuamalat,
  'bank_of_china' => bankOfChina,
  'bank_rakyat' => bankRakyat,
  'bsn' => bsn,
  'cimb' => cimb,
  'deutsche_bank' => deutscheBank,
  'hong_leong_bank' => hongLeongBank,
  'hsbc' => hsbc,
  'kfh' => kfh,
  'maybank2e' => maybank2e,
  'maybank2u' => maybank2u,
  'ocbc' => ocbc,
  'pb_enterprise' => pbEnterprise,
  'public_bank' => publicBank,
  'rhb' => rhb,
  'standard_chartered' => standardChartered,
  'uob' => uob,
  _ => PostSetupIntentsIntentRequestPaymentMethodDataFpxBank._(json),
}; }

static const PostSetupIntentsIntentRequestPaymentMethodDataFpxBank affinBank = PostSetupIntentsIntentRequestPaymentMethodDataFpxBank._('affin_bank');

static const PostSetupIntentsIntentRequestPaymentMethodDataFpxBank agrobank = PostSetupIntentsIntentRequestPaymentMethodDataFpxBank._('agrobank');

static const PostSetupIntentsIntentRequestPaymentMethodDataFpxBank allianceBank = PostSetupIntentsIntentRequestPaymentMethodDataFpxBank._('alliance_bank');

static const PostSetupIntentsIntentRequestPaymentMethodDataFpxBank ambank = PostSetupIntentsIntentRequestPaymentMethodDataFpxBank._('ambank');

static const PostSetupIntentsIntentRequestPaymentMethodDataFpxBank bankIslam = PostSetupIntentsIntentRequestPaymentMethodDataFpxBank._('bank_islam');

static const PostSetupIntentsIntentRequestPaymentMethodDataFpxBank bankMuamalat = PostSetupIntentsIntentRequestPaymentMethodDataFpxBank._('bank_muamalat');

static const PostSetupIntentsIntentRequestPaymentMethodDataFpxBank bankOfChina = PostSetupIntentsIntentRequestPaymentMethodDataFpxBank._('bank_of_china');

static const PostSetupIntentsIntentRequestPaymentMethodDataFpxBank bankRakyat = PostSetupIntentsIntentRequestPaymentMethodDataFpxBank._('bank_rakyat');

static const PostSetupIntentsIntentRequestPaymentMethodDataFpxBank bsn = PostSetupIntentsIntentRequestPaymentMethodDataFpxBank._('bsn');

static const PostSetupIntentsIntentRequestPaymentMethodDataFpxBank cimb = PostSetupIntentsIntentRequestPaymentMethodDataFpxBank._('cimb');

static const PostSetupIntentsIntentRequestPaymentMethodDataFpxBank deutscheBank = PostSetupIntentsIntentRequestPaymentMethodDataFpxBank._('deutsche_bank');

static const PostSetupIntentsIntentRequestPaymentMethodDataFpxBank hongLeongBank = PostSetupIntentsIntentRequestPaymentMethodDataFpxBank._('hong_leong_bank');

static const PostSetupIntentsIntentRequestPaymentMethodDataFpxBank hsbc = PostSetupIntentsIntentRequestPaymentMethodDataFpxBank._('hsbc');

static const PostSetupIntentsIntentRequestPaymentMethodDataFpxBank kfh = PostSetupIntentsIntentRequestPaymentMethodDataFpxBank._('kfh');

static const PostSetupIntentsIntentRequestPaymentMethodDataFpxBank maybank2e = PostSetupIntentsIntentRequestPaymentMethodDataFpxBank._('maybank2e');

static const PostSetupIntentsIntentRequestPaymentMethodDataFpxBank maybank2u = PostSetupIntentsIntentRequestPaymentMethodDataFpxBank._('maybank2u');

static const PostSetupIntentsIntentRequestPaymentMethodDataFpxBank ocbc = PostSetupIntentsIntentRequestPaymentMethodDataFpxBank._('ocbc');

static const PostSetupIntentsIntentRequestPaymentMethodDataFpxBank pbEnterprise = PostSetupIntentsIntentRequestPaymentMethodDataFpxBank._('pb_enterprise');

static const PostSetupIntentsIntentRequestPaymentMethodDataFpxBank publicBank = PostSetupIntentsIntentRequestPaymentMethodDataFpxBank._('public_bank');

static const PostSetupIntentsIntentRequestPaymentMethodDataFpxBank rhb = PostSetupIntentsIntentRequestPaymentMethodDataFpxBank._('rhb');

static const PostSetupIntentsIntentRequestPaymentMethodDataFpxBank standardChartered = PostSetupIntentsIntentRequestPaymentMethodDataFpxBank._('standard_chartered');

static const PostSetupIntentsIntentRequestPaymentMethodDataFpxBank uob = PostSetupIntentsIntentRequestPaymentMethodDataFpxBank._('uob');

static const List<PostSetupIntentsIntentRequestPaymentMethodDataFpxBank> values = [affinBank, agrobank, allianceBank, ambank, bankIslam, bankMuamalat, bankOfChina, bankRakyat, bsn, cimb, deutscheBank, hongLeongBank, hsbc, kfh, maybank2e, maybank2u, ocbc, pbEnterprise, publicBank, rhb, standardChartered, uob];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentRequestPaymentMethodDataFpxBank && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodDataFpxBank($value)'; } 
 }
@immutable final class PostSetupIntentsIntentRequestPaymentMethodDataFpx {const PostSetupIntentsIntentRequestPaymentMethodDataFpx({required this.bank});

factory PostSetupIntentsIntentRequestPaymentMethodDataFpx.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentRequestPaymentMethodDataFpx(
  bank: PostSetupIntentsIntentRequestPaymentMethodDataFpxBank.fromJson(json['bank'] as String),
); }

final PostSetupIntentsIntentRequestPaymentMethodDataFpxBank bank;

Map<String, dynamic> toJson() { return {
  'bank': bank.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('bank'); } 
PostSetupIntentsIntentRequestPaymentMethodDataFpx copyWith({PostSetupIntentsIntentRequestPaymentMethodDataFpxBank? bank}) { return PostSetupIntentsIntentRequestPaymentMethodDataFpx(
  bank: bank ?? this.bank,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentRequestPaymentMethodDataFpx &&
          bank == other.bank; } 
@override int get hashCode { return bank.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodDataFpx(bank: $bank)'; } 
 }
