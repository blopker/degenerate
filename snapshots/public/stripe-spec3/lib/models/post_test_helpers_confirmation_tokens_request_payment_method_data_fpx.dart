// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank {const PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank._(this.value);

factory PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank.fromJson(String json) { return switch (json) {
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
  _ => PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank._(json),
}; }

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank affinBank = PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank._('affin_bank');

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank agrobank = PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank._('agrobank');

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank allianceBank = PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank._('alliance_bank');

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank ambank = PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank._('ambank');

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank bankIslam = PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank._('bank_islam');

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank bankMuamalat = PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank._('bank_muamalat');

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank bankOfChina = PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank._('bank_of_china');

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank bankRakyat = PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank._('bank_rakyat');

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank bsn = PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank._('bsn');

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank cimb = PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank._('cimb');

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank deutscheBank = PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank._('deutsche_bank');

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank hongLeongBank = PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank._('hong_leong_bank');

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank hsbc = PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank._('hsbc');

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank kfh = PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank._('kfh');

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank maybank2e = PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank._('maybank2e');

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank maybank2u = PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank._('maybank2u');

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank ocbc = PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank._('ocbc');

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank pbEnterprise = PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank._('pb_enterprise');

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank publicBank = PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank._('public_bank');

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank rhb = PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank._('rhb');

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank standardChartered = PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank._('standard_chartered');

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank uob = PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank._('uob');

static const List<PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank> values = [affinBank, agrobank, allianceBank, ambank, bankIslam, bankMuamalat, bankOfChina, bankRakyat, bsn, cimb, deutscheBank, hongLeongBank, hsbc, kfh, maybank2e, maybank2u, ocbc, pbEnterprise, publicBank, rhb, standardChartered, uob];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank($value)'; } 
 }
@immutable final class PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpx {const PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpx({required this.bank});

factory PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpx.fromJson(Map<String, dynamic> json) { return PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpx(
  bank: PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank.fromJson(json['bank'] as String),
); }

final PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank bank;

Map<String, dynamic> toJson() { return {
  'bank': bank.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('bank'); } 
PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpx copyWith({PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpxBank? bank}) { return PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpx(
  bank: bank ?? this.bank,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpx &&
          bank == other.bank; } 
@override int get hashCode { return bank.hashCode; } 
@override String toString() { return 'PostTestHelpersConfirmationTokensRequestPaymentMethodDataFpx(bank: $bank)'; } 
 }
