// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_flows_private_payment_methods_kakao_pay_payment_method_options.dart';import 'payment_flows_private_payment_methods_naver_pay_payment_method_options.dart';import 'payment_flows_private_payment_methods_payco_payment_method_options.dart';import 'payment_flows_private_payment_methods_samsung_pay_payment_method_options.dart';import 'payment_intent_payment_method_options_acss_debit.dart';import 'payment_intent_payment_method_options_acss_debit2.dart';import 'payment_intent_payment_method_options_affirm.dart';import 'payment_intent_payment_method_options_afterpay_clearpay.dart';import 'payment_intent_payment_method_options_alipay.dart';import 'payment_intent_payment_method_options_alma.dart';import 'payment_intent_payment_method_options_amazon_pay.dart';import 'payment_intent_payment_method_options_au_becs_debit.dart';import 'payment_intent_payment_method_options_au_becs_debit2.dart';import 'payment_intent_payment_method_options_bacs_debit.dart';import 'payment_intent_payment_method_options_bacs_debit2.dart';import 'payment_intent_payment_method_options_bancontact.dart';import 'payment_intent_payment_method_options_billie.dart';import 'payment_intent_payment_method_options_blik.dart';import 'payment_intent_payment_method_options_blik2.dart';import 'payment_intent_payment_method_options_boleto.dart';import 'payment_intent_payment_method_options_card.dart';import 'payment_intent_payment_method_options_card2.dart';import 'payment_intent_payment_method_options_card_present.dart';import 'payment_intent_payment_method_options_cashapp.dart';import 'payment_intent_payment_method_options_crypto.dart';import 'payment_intent_payment_method_options_customer_balance.dart';import 'payment_intent_payment_method_options_eps.dart';import 'payment_intent_payment_method_options_eps2.dart';import 'payment_intent_payment_method_options_fpx.dart';import 'payment_intent_payment_method_options_giropay.dart';import 'payment_intent_payment_method_options_grabpay.dart';import 'payment_intent_payment_method_options_ideal.dart';import 'payment_intent_payment_method_options_interac_present.dart';import 'payment_intent_payment_method_options_kakao_pay.dart';import 'payment_intent_payment_method_options_klarna.dart';import 'payment_intent_payment_method_options_konbini.dart';import 'payment_intent_payment_method_options_kr_card.dart';import 'payment_intent_payment_method_options_link.dart';import 'payment_intent_payment_method_options_link2.dart';import 'payment_intent_payment_method_options_mb_way.dart';import 'payment_intent_payment_method_options_mobilepay.dart';import 'payment_intent_payment_method_options_mobilepay2.dart';import 'payment_intent_payment_method_options_multibanco.dart';import 'payment_intent_payment_method_options_naver_pay.dart';import 'payment_intent_payment_method_options_nz_bank_account.dart';import 'payment_intent_payment_method_options_nz_bank_account2.dart';import 'payment_intent_payment_method_options_oxxo.dart';import 'payment_intent_payment_method_options_p24.dart';import 'payment_intent_payment_method_options_pay_by_bank.dart';import 'payment_intent_payment_method_options_payco.dart';import 'payment_intent_payment_method_options_paynow.dart';import 'payment_intent_payment_method_options_paypal.dart';import 'payment_intent_payment_method_options_payto.dart';import 'payment_intent_payment_method_options_payto2.dart';import 'payment_intent_payment_method_options_pix.dart';import 'payment_intent_payment_method_options_promptpay.dart';import 'payment_intent_payment_method_options_revolut_pay.dart';import 'payment_intent_payment_method_options_samsung_pay.dart';import 'payment_intent_payment_method_options_satispay.dart';import 'payment_intent_payment_method_options_sepa_debit.dart';import 'payment_intent_payment_method_options_sepa_debit2.dart';import 'payment_intent_payment_method_options_sofort.dart';import 'payment_intent_payment_method_options_swish.dart';import 'payment_intent_payment_method_options_swish2.dart';import 'payment_intent_payment_method_options_twint.dart';import 'payment_intent_payment_method_options_us_bank_account.dart';import 'payment_intent_payment_method_options_us_bank_account2.dart';import 'payment_intent_payment_method_options_wechat_pay.dart';import 'payment_intent_payment_method_options_zip.dart';import 'payment_intent_type_specific_payment_method_options_client.dart';import 'payment_method_options_affirm.dart';import 'payment_method_options_afterpay_clearpay.dart';import 'payment_method_options_alipay.dart';import 'payment_method_options_alma.dart';import 'payment_method_options_amazon_pay.dart';import 'payment_method_options_bancontact.dart';import 'payment_method_options_billie.dart';import 'payment_method_options_boleto.dart';import 'payment_method_options_card_present.dart';import 'payment_method_options_cashapp.dart';import 'payment_method_options_crypto.dart';import 'payment_method_options_customer_balance.dart';import 'payment_method_options_fpx.dart';import 'payment_method_options_giropay.dart';import 'payment_method_options_grabpay.dart';import 'payment_method_options_ideal.dart';import 'payment_method_options_interac_present.dart';import 'payment_method_options_klarna.dart';import 'payment_method_options_konbini.dart';import 'payment_method_options_kr_card.dart';import 'payment_method_options_mb_way.dart';import 'payment_method_options_multibanco.dart';import 'payment_method_options_oxxo.dart';import 'payment_method_options_p24.dart';import 'payment_method_options_pay_by_bank.dart';import 'payment_method_options_paynow.dart';import 'payment_method_options_paypal.dart';import 'payment_method_options_pix.dart';import 'payment_method_options_promptpay.dart';import 'payment_method_options_revolut_pay.dart';import 'payment_method_options_satispay.dart';import 'payment_method_options_sofort.dart';import 'payment_method_options_twint.dart';import 'payment_method_options_wechat_pay.dart';import 'payment_method_options_zip.dart';/// 
final class PaymentIntentPaymentMethodOptions {const PaymentIntentPaymentMethodOptions({this.acssDebit, this.affirm, this.afterpayClearpay, this.alipay, this.alma, this.amazonPay, this.auBecsDebit, this.bacsDebit, this.bancontact, this.billie, this.blik, this.boleto, this.card, this.cardPresent, this.cashapp, this.crypto, this.customerBalance, this.eps, this.fpx, this.giropay, this.grabpay, this.ideal, this.interacPresent, this.kakaoPay, this.klarna, this.konbini, this.krCard, this.link, this.mbWay, this.mobilepay, this.multibanco, this.naverPay, this.nzBankAccount, this.oxxo, this.p24, this.payByBank, this.payco, this.paynow, this.paypal, this.payto, this.pix, this.promptpay, this.revolutPay, this.samsungPay, this.satispay, this.sepaDebit, this.sofort, this.swish, this.twint, this.usBankAccount, this.wechatPay, this.zip, });

factory PaymentIntentPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptions(
  acssDebit: json['acss_debit'] != null ? OneOf2.parse(json['acss_debit'], fromA: (v) => PaymentIntentPaymentMethodOptionsAcssDebit.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  affirm: json['affirm'] != null ? OneOf2.parse(json['affirm'], fromA: (v) => PaymentMethodOptionsAffirm.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  afterpayClearpay: json['afterpay_clearpay'] != null ? OneOf2.parse(json['afterpay_clearpay'], fromA: (v) => PaymentMethodOptionsAfterpayClearpay.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  alipay: json['alipay'] != null ? OneOf2.parse(json['alipay'], fromA: (v) => PaymentMethodOptionsAlipay.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  alma: json['alma'] != null ? OneOf2.parse(json['alma'], fromA: (v) => PaymentMethodOptionsAlma.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  amazonPay: json['amazon_pay'] != null ? OneOf2.parse(json['amazon_pay'], fromA: (v) => PaymentMethodOptionsAmazonPay.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  auBecsDebit: json['au_becs_debit'] != null ? OneOf2.parse(json['au_becs_debit'], fromA: (v) => PaymentIntentPaymentMethodOptionsAuBecsDebit.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  bacsDebit: json['bacs_debit'] != null ? OneOf2.parse(json['bacs_debit'], fromA: (v) => PaymentIntentPaymentMethodOptionsBacsDebit.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  bancontact: json['bancontact'] != null ? OneOf2.parse(json['bancontact'], fromA: (v) => PaymentMethodOptionsBancontact.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  billie: json['billie'] != null ? OneOf2.parse(json['billie'], fromA: (v) => PaymentMethodOptionsBillie.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  blik: json['blik'] != null ? OneOf2.parse(json['blik'], fromA: (v) => PaymentIntentPaymentMethodOptionsBlik.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  boleto: json['boleto'] != null ? OneOf2.parse(json['boleto'], fromA: (v) => PaymentMethodOptionsBoleto.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  card: json['card'] != null ? OneOf2.parse(json['card'], fromA: (v) => PaymentIntentPaymentMethodOptionsCard.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  cardPresent: json['card_present'] != null ? OneOf2.parse(json['card_present'], fromA: (v) => PaymentMethodOptionsCardPresent.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  cashapp: json['cashapp'] != null ? OneOf2.parse(json['cashapp'], fromA: (v) => PaymentMethodOptionsCashapp.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  crypto: json['crypto'] != null ? OneOf2.parse(json['crypto'], fromA: (v) => PaymentMethodOptionsCrypto.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  customerBalance: json['customer_balance'] != null ? OneOf2.parse(json['customer_balance'], fromA: (v) => PaymentMethodOptionsCustomerBalance.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  eps: json['eps'] != null ? OneOf2.parse(json['eps'], fromA: (v) => PaymentIntentPaymentMethodOptionsEps.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  fpx: json['fpx'] != null ? OneOf2.parse(json['fpx'], fromA: (v) => PaymentMethodOptionsFpx.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  giropay: json['giropay'] != null ? OneOf2.parse(json['giropay'], fromA: (v) => PaymentMethodOptionsGiropay.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  grabpay: json['grabpay'] != null ? OneOf2.parse(json['grabpay'], fromA: (v) => PaymentMethodOptionsGrabpay.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  ideal: json['ideal'] != null ? OneOf2.parse(json['ideal'], fromA: (v) => PaymentMethodOptionsIdeal.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  interacPresent: json['interac_present'] != null ? OneOf2.parse(json['interac_present'], fromA: (v) => PaymentMethodOptionsInteracPresent.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  kakaoPay: json['kakao_pay'] != null ? OneOf2.parse(json['kakao_pay'], fromA: (v) => PaymentFlowsPrivatePaymentMethodsKakaoPayPaymentMethodOptions.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  klarna: json['klarna'] != null ? OneOf2.parse(json['klarna'], fromA: (v) => PaymentMethodOptionsKlarna.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  konbini: json['konbini'] != null ? OneOf2.parse(json['konbini'], fromA: (v) => PaymentMethodOptionsKonbini.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  krCard: json['kr_card'] != null ? OneOf2.parse(json['kr_card'], fromA: (v) => PaymentMethodOptionsKrCard.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  link: json['link'] != null ? OneOf2.parse(json['link'], fromA: (v) => PaymentIntentPaymentMethodOptionsLink.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  mbWay: json['mb_way'] != null ? OneOf2.parse(json['mb_way'], fromA: (v) => PaymentMethodOptionsMbWay.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  mobilepay: json['mobilepay'] != null ? OneOf2.parse(json['mobilepay'], fromA: (v) => PaymentIntentPaymentMethodOptionsMobilepay.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  multibanco: json['multibanco'] != null ? OneOf2.parse(json['multibanco'], fromA: (v) => PaymentMethodOptionsMultibanco.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  naverPay: json['naver_pay'] != null ? OneOf2.parse(json['naver_pay'], fromA: (v) => PaymentFlowsPrivatePaymentMethodsNaverPayPaymentMethodOptions.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  nzBankAccount: json['nz_bank_account'] != null ? OneOf2.parse(json['nz_bank_account'], fromA: (v) => PaymentIntentPaymentMethodOptionsNzBankAccount.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  oxxo: json['oxxo'] != null ? OneOf2.parse(json['oxxo'], fromA: (v) => PaymentMethodOptionsOxxo.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  p24: json['p24'] != null ? OneOf2.parse(json['p24'], fromA: (v) => PaymentMethodOptionsP24.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  payByBank: json['pay_by_bank'] != null ? OneOf2.parse(json['pay_by_bank'], fromA: (v) => PaymentMethodOptionsPayByBank.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  payco: json['payco'] != null ? OneOf2.parse(json['payco'], fromA: (v) => PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptions.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  paynow: json['paynow'] != null ? OneOf2.parse(json['paynow'], fromA: (v) => PaymentMethodOptionsPaynow.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  paypal: json['paypal'] != null ? OneOf2.parse(json['paypal'], fromA: (v) => PaymentMethodOptionsPaypal.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  payto: json['payto'] != null ? OneOf2.parse(json['payto'], fromA: (v) => PaymentIntentPaymentMethodOptionsPayto.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  pix: json['pix'] != null ? OneOf2.parse(json['pix'], fromA: (v) => PaymentMethodOptionsPix.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  promptpay: json['promptpay'] != null ? OneOf2.parse(json['promptpay'], fromA: (v) => PaymentMethodOptionsPromptpay.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  revolutPay: json['revolut_pay'] != null ? OneOf2.parse(json['revolut_pay'], fromA: (v) => PaymentMethodOptionsRevolutPay.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  samsungPay: json['samsung_pay'] != null ? OneOf2.parse(json['samsung_pay'], fromA: (v) => PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptions.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  satispay: json['satispay'] != null ? OneOf2.parse(json['satispay'], fromA: (v) => PaymentMethodOptionsSatispay.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  sepaDebit: json['sepa_debit'] != null ? OneOf2.parse(json['sepa_debit'], fromA: (v) => PaymentIntentPaymentMethodOptionsSepaDebit.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  sofort: json['sofort'] != null ? OneOf2.parse(json['sofort'], fromA: (v) => PaymentMethodOptionsSofort.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  swish: json['swish'] != null ? OneOf2.parse(json['swish'], fromA: (v) => PaymentIntentPaymentMethodOptionsSwish.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  twint: json['twint'] != null ? OneOf2.parse(json['twint'], fromA: (v) => PaymentMethodOptionsTwint.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  usBankAccount: json['us_bank_account'] != null ? OneOf2.parse(json['us_bank_account'], fromA: (v) => PaymentIntentPaymentMethodOptionsUsBankAccount.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  wechatPay: json['wechat_pay'] != null ? OneOf2.parse(json['wechat_pay'], fromA: (v) => PaymentMethodOptionsWechatPay.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
  zip: json['zip'] != null ? OneOf2.parse(json['zip'], fromA: (v) => PaymentMethodOptionsZip.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(v as Map<String, dynamic>),) : null,
); }

final PaymentIntentPaymentMethodOptionsAcssDebit2? acssDebit;

final PaymentIntentPaymentMethodOptionsAffirm? affirm;

final PaymentIntentPaymentMethodOptionsAfterpayClearpay? afterpayClearpay;

final PaymentIntentPaymentMethodOptionsAlipay? alipay;

final PaymentIntentPaymentMethodOptionsAlma? alma;

final PaymentIntentPaymentMethodOptionsAmazonPay? amazonPay;

final PaymentIntentPaymentMethodOptionsAuBecsDebit2? auBecsDebit;

final PaymentIntentPaymentMethodOptionsBacsDebit2? bacsDebit;

final PaymentIntentPaymentMethodOptionsBancontact? bancontact;

final PaymentIntentPaymentMethodOptionsBillie? billie;

final PaymentIntentPaymentMethodOptionsBlik2? blik;

final PaymentIntentPaymentMethodOptionsBoleto? boleto;

final PaymentIntentPaymentMethodOptionsCard2? card;

final PaymentIntentPaymentMethodOptionsCardPresent? cardPresent;

final PaymentIntentPaymentMethodOptionsCashapp? cashapp;

final PaymentIntentPaymentMethodOptionsCrypto? crypto;

final PaymentIntentPaymentMethodOptionsCustomerBalance? customerBalance;

final PaymentIntentPaymentMethodOptionsEps2? eps;

final PaymentIntentPaymentMethodOptionsFpx? fpx;

final PaymentIntentPaymentMethodOptionsGiropay? giropay;

final PaymentIntentPaymentMethodOptionsGrabpay? grabpay;

final PaymentIntentPaymentMethodOptionsIdeal? ideal;

final PaymentIntentPaymentMethodOptionsInteracPresent? interacPresent;

final PaymentIntentPaymentMethodOptionsKakaoPay? kakaoPay;

final PaymentIntentPaymentMethodOptionsKlarna? klarna;

final PaymentIntentPaymentMethodOptionsKonbini? konbini;

final PaymentIntentPaymentMethodOptionsKrCard? krCard;

final PaymentIntentPaymentMethodOptionsLink2? link;

final PaymentIntentPaymentMethodOptionsMbWay? mbWay;

final PaymentIntentPaymentMethodOptionsMobilepay2? mobilepay;

final PaymentIntentPaymentMethodOptionsMultibanco? multibanco;

final PaymentIntentPaymentMethodOptionsNaverPay? naverPay;

final PaymentIntentPaymentMethodOptionsNzBankAccount2? nzBankAccount;

final PaymentIntentPaymentMethodOptionsOxxo? oxxo;

final PaymentIntentPaymentMethodOptionsP24? p24;

final PaymentIntentPaymentMethodOptionsPayByBank? payByBank;

final PaymentIntentPaymentMethodOptionsPayco? payco;

final PaymentIntentPaymentMethodOptionsPaynow? paynow;

final PaymentIntentPaymentMethodOptionsPaypal? paypal;

final PaymentIntentPaymentMethodOptionsPayto2? payto;

final PaymentIntentPaymentMethodOptionsPix? pix;

final PaymentIntentPaymentMethodOptionsPromptpay? promptpay;

final PaymentIntentPaymentMethodOptionsRevolutPay? revolutPay;

final PaymentIntentPaymentMethodOptionsSamsungPay? samsungPay;

final PaymentIntentPaymentMethodOptionsSatispay? satispay;

final PaymentIntentPaymentMethodOptionsSepaDebit2? sepaDebit;

final PaymentIntentPaymentMethodOptionsSofort? sofort;

final PaymentIntentPaymentMethodOptionsSwish2? swish;

final PaymentIntentPaymentMethodOptionsTwint? twint;

final PaymentIntentPaymentMethodOptionsUsBankAccount2? usBankAccount;

final PaymentIntentPaymentMethodOptionsWechatPay? wechatPay;

final PaymentIntentPaymentMethodOptionsZip? zip;

Map<String, dynamic> toJson() { return {
  if (acssDebit != null) 'acss_debit': acssDebit?.toJson(),
  if (affirm != null) 'affirm': affirm?.toJson(),
  if (afterpayClearpay != null) 'afterpay_clearpay': afterpayClearpay?.toJson(),
  if (alipay != null) 'alipay': alipay?.toJson(),
  if (alma != null) 'alma': alma?.toJson(),
  if (amazonPay != null) 'amazon_pay': amazonPay?.toJson(),
  if (auBecsDebit != null) 'au_becs_debit': auBecsDebit?.toJson(),
  if (bacsDebit != null) 'bacs_debit': bacsDebit?.toJson(),
  if (bancontact != null) 'bancontact': bancontact?.toJson(),
  if (billie != null) 'billie': billie?.toJson(),
  if (blik != null) 'blik': blik?.toJson(),
  if (boleto != null) 'boleto': boleto?.toJson(),
  if (card != null) 'card': card?.toJson(),
  if (cardPresent != null) 'card_present': cardPresent?.toJson(),
  if (cashapp != null) 'cashapp': cashapp?.toJson(),
  if (crypto != null) 'crypto': crypto?.toJson(),
  if (customerBalance != null) 'customer_balance': customerBalance?.toJson(),
  if (eps != null) 'eps': eps?.toJson(),
  if (fpx != null) 'fpx': fpx?.toJson(),
  if (giropay != null) 'giropay': giropay?.toJson(),
  if (grabpay != null) 'grabpay': grabpay?.toJson(),
  if (ideal != null) 'ideal': ideal?.toJson(),
  if (interacPresent != null) 'interac_present': interacPresent?.toJson(),
  if (kakaoPay != null) 'kakao_pay': kakaoPay?.toJson(),
  if (klarna != null) 'klarna': klarna?.toJson(),
  if (konbini != null) 'konbini': konbini?.toJson(),
  if (krCard != null) 'kr_card': krCard?.toJson(),
  if (link != null) 'link': link?.toJson(),
  if (mbWay != null) 'mb_way': mbWay?.toJson(),
  if (mobilepay != null) 'mobilepay': mobilepay?.toJson(),
  if (multibanco != null) 'multibanco': multibanco?.toJson(),
  if (naverPay != null) 'naver_pay': naverPay?.toJson(),
  if (nzBankAccount != null) 'nz_bank_account': nzBankAccount?.toJson(),
  if (oxxo != null) 'oxxo': oxxo?.toJson(),
  if (p24 != null) 'p24': p24?.toJson(),
  if (payByBank != null) 'pay_by_bank': payByBank?.toJson(),
  if (payco != null) 'payco': payco?.toJson(),
  if (paynow != null) 'paynow': paynow?.toJson(),
  if (paypal != null) 'paypal': paypal?.toJson(),
  if (payto != null) 'payto': payto?.toJson(),
  if (pix != null) 'pix': pix?.toJson(),
  if (promptpay != null) 'promptpay': promptpay?.toJson(),
  if (revolutPay != null) 'revolut_pay': revolutPay?.toJson(),
  if (samsungPay != null) 'samsung_pay': samsungPay?.toJson(),
  if (satispay != null) 'satispay': satispay?.toJson(),
  if (sepaDebit != null) 'sepa_debit': sepaDebit?.toJson(),
  if (sofort != null) 'sofort': sofort?.toJson(),
  if (swish != null) 'swish': swish?.toJson(),
  if (twint != null) 'twint': twint?.toJson(),
  if (usBankAccount != null) 'us_bank_account': usBankAccount?.toJson(),
  if (wechatPay != null) 'wechat_pay': wechatPay?.toJson(),
  if (zip != null) 'zip': zip?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentIntentPaymentMethodOptions copyWith({PaymentIntentPaymentMethodOptionsAcssDebit2 Function()? acssDebit, PaymentIntentPaymentMethodOptionsAffirm Function()? affirm, PaymentIntentPaymentMethodOptionsAfterpayClearpay Function()? afterpayClearpay, PaymentIntentPaymentMethodOptionsAlipay Function()? alipay, PaymentIntentPaymentMethodOptionsAlma Function()? alma, PaymentIntentPaymentMethodOptionsAmazonPay Function()? amazonPay, PaymentIntentPaymentMethodOptionsAuBecsDebit2 Function()? auBecsDebit, PaymentIntentPaymentMethodOptionsBacsDebit2 Function()? bacsDebit, PaymentIntentPaymentMethodOptionsBancontact Function()? bancontact, PaymentIntentPaymentMethodOptionsBillie Function()? billie, PaymentIntentPaymentMethodOptionsBlik2 Function()? blik, PaymentIntentPaymentMethodOptionsBoleto Function()? boleto, PaymentIntentPaymentMethodOptionsCard2 Function()? card, PaymentIntentPaymentMethodOptionsCardPresent Function()? cardPresent, PaymentIntentPaymentMethodOptionsCashapp Function()? cashapp, PaymentIntentPaymentMethodOptionsCrypto Function()? crypto, PaymentIntentPaymentMethodOptionsCustomerBalance Function()? customerBalance, PaymentIntentPaymentMethodOptionsEps2 Function()? eps, PaymentIntentPaymentMethodOptionsFpx Function()? fpx, PaymentIntentPaymentMethodOptionsGiropay Function()? giropay, PaymentIntentPaymentMethodOptionsGrabpay Function()? grabpay, PaymentIntentPaymentMethodOptionsIdeal Function()? ideal, PaymentIntentPaymentMethodOptionsInteracPresent Function()? interacPresent, PaymentIntentPaymentMethodOptionsKakaoPay Function()? kakaoPay, PaymentIntentPaymentMethodOptionsKlarna Function()? klarna, PaymentIntentPaymentMethodOptionsKonbini Function()? konbini, PaymentIntentPaymentMethodOptionsKrCard Function()? krCard, PaymentIntentPaymentMethodOptionsLink2 Function()? link, PaymentIntentPaymentMethodOptionsMbWay Function()? mbWay, PaymentIntentPaymentMethodOptionsMobilepay2 Function()? mobilepay, PaymentIntentPaymentMethodOptionsMultibanco Function()? multibanco, PaymentIntentPaymentMethodOptionsNaverPay Function()? naverPay, PaymentIntentPaymentMethodOptionsNzBankAccount2 Function()? nzBankAccount, PaymentIntentPaymentMethodOptionsOxxo Function()? oxxo, PaymentIntentPaymentMethodOptionsP24 Function()? p24, PaymentIntentPaymentMethodOptionsPayByBank Function()? payByBank, PaymentIntentPaymentMethodOptionsPayco Function()? payco, PaymentIntentPaymentMethodOptionsPaynow Function()? paynow, PaymentIntentPaymentMethodOptionsPaypal Function()? paypal, PaymentIntentPaymentMethodOptionsPayto2 Function()? payto, PaymentIntentPaymentMethodOptionsPix Function()? pix, PaymentIntentPaymentMethodOptionsPromptpay Function()? promptpay, PaymentIntentPaymentMethodOptionsRevolutPay Function()? revolutPay, PaymentIntentPaymentMethodOptionsSamsungPay Function()? samsungPay, PaymentIntentPaymentMethodOptionsSatispay Function()? satispay, PaymentIntentPaymentMethodOptionsSepaDebit2 Function()? sepaDebit, PaymentIntentPaymentMethodOptionsSofort Function()? sofort, PaymentIntentPaymentMethodOptionsSwish2 Function()? swish, PaymentIntentPaymentMethodOptionsTwint Function()? twint, PaymentIntentPaymentMethodOptionsUsBankAccount2 Function()? usBankAccount, PaymentIntentPaymentMethodOptionsWechatPay Function()? wechatPay, PaymentIntentPaymentMethodOptionsZip Function()? zip, }) { return PaymentIntentPaymentMethodOptions(
  acssDebit: acssDebit != null ? acssDebit() : this.acssDebit,
  affirm: affirm != null ? affirm() : this.affirm,
  afterpayClearpay: afterpayClearpay != null ? afterpayClearpay() : this.afterpayClearpay,
  alipay: alipay != null ? alipay() : this.alipay,
  alma: alma != null ? alma() : this.alma,
  amazonPay: amazonPay != null ? amazonPay() : this.amazonPay,
  auBecsDebit: auBecsDebit != null ? auBecsDebit() : this.auBecsDebit,
  bacsDebit: bacsDebit != null ? bacsDebit() : this.bacsDebit,
  bancontact: bancontact != null ? bancontact() : this.bancontact,
  billie: billie != null ? billie() : this.billie,
  blik: blik != null ? blik() : this.blik,
  boleto: boleto != null ? boleto() : this.boleto,
  card: card != null ? card() : this.card,
  cardPresent: cardPresent != null ? cardPresent() : this.cardPresent,
  cashapp: cashapp != null ? cashapp() : this.cashapp,
  crypto: crypto != null ? crypto() : this.crypto,
  customerBalance: customerBalance != null ? customerBalance() : this.customerBalance,
  eps: eps != null ? eps() : this.eps,
  fpx: fpx != null ? fpx() : this.fpx,
  giropay: giropay != null ? giropay() : this.giropay,
  grabpay: grabpay != null ? grabpay() : this.grabpay,
  ideal: ideal != null ? ideal() : this.ideal,
  interacPresent: interacPresent != null ? interacPresent() : this.interacPresent,
  kakaoPay: kakaoPay != null ? kakaoPay() : this.kakaoPay,
  klarna: klarna != null ? klarna() : this.klarna,
  konbini: konbini != null ? konbini() : this.konbini,
  krCard: krCard != null ? krCard() : this.krCard,
  link: link != null ? link() : this.link,
  mbWay: mbWay != null ? mbWay() : this.mbWay,
  mobilepay: mobilepay != null ? mobilepay() : this.mobilepay,
  multibanco: multibanco != null ? multibanco() : this.multibanco,
  naverPay: naverPay != null ? naverPay() : this.naverPay,
  nzBankAccount: nzBankAccount != null ? nzBankAccount() : this.nzBankAccount,
  oxxo: oxxo != null ? oxxo() : this.oxxo,
  p24: p24 != null ? p24() : this.p24,
  payByBank: payByBank != null ? payByBank() : this.payByBank,
  payco: payco != null ? payco() : this.payco,
  paynow: paynow != null ? paynow() : this.paynow,
  paypal: paypal != null ? paypal() : this.paypal,
  payto: payto != null ? payto() : this.payto,
  pix: pix != null ? pix() : this.pix,
  promptpay: promptpay != null ? promptpay() : this.promptpay,
  revolutPay: revolutPay != null ? revolutPay() : this.revolutPay,
  samsungPay: samsungPay != null ? samsungPay() : this.samsungPay,
  satispay: satispay != null ? satispay() : this.satispay,
  sepaDebit: sepaDebit != null ? sepaDebit() : this.sepaDebit,
  sofort: sofort != null ? sofort() : this.sofort,
  swish: swish != null ? swish() : this.swish,
  twint: twint != null ? twint() : this.twint,
  usBankAccount: usBankAccount != null ? usBankAccount() : this.usBankAccount,
  wechatPay: wechatPay != null ? wechatPay() : this.wechatPay,
  zip: zip != null ? zip() : this.zip,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptions &&
          acssDebit == other.acssDebit &&
          affirm == other.affirm &&
          afterpayClearpay == other.afterpayClearpay &&
          alipay == other.alipay &&
          alma == other.alma &&
          amazonPay == other.amazonPay &&
          auBecsDebit == other.auBecsDebit &&
          bacsDebit == other.bacsDebit &&
          bancontact == other.bancontact &&
          billie == other.billie &&
          blik == other.blik &&
          boleto == other.boleto &&
          card == other.card &&
          cardPresent == other.cardPresent &&
          cashapp == other.cashapp &&
          crypto == other.crypto &&
          customerBalance == other.customerBalance &&
          eps == other.eps &&
          fpx == other.fpx &&
          giropay == other.giropay &&
          grabpay == other.grabpay &&
          ideal == other.ideal &&
          interacPresent == other.interacPresent &&
          kakaoPay == other.kakaoPay &&
          klarna == other.klarna &&
          konbini == other.konbini &&
          krCard == other.krCard &&
          link == other.link &&
          mbWay == other.mbWay &&
          mobilepay == other.mobilepay &&
          multibanco == other.multibanco &&
          naverPay == other.naverPay &&
          nzBankAccount == other.nzBankAccount &&
          oxxo == other.oxxo &&
          p24 == other.p24 &&
          payByBank == other.payByBank &&
          payco == other.payco &&
          paynow == other.paynow &&
          paypal == other.paypal &&
          payto == other.payto &&
          pix == other.pix &&
          promptpay == other.promptpay &&
          revolutPay == other.revolutPay &&
          samsungPay == other.samsungPay &&
          satispay == other.satispay &&
          sepaDebit == other.sepaDebit &&
          sofort == other.sofort &&
          swish == other.swish &&
          twint == other.twint &&
          usBankAccount == other.usBankAccount &&
          wechatPay == other.wechatPay &&
          zip == other.zip; } 
@override int get hashCode { return Object.hashAll([acssDebit, affirm, afterpayClearpay, alipay, alma, amazonPay, auBecsDebit, bacsDebit, bancontact, billie, blik, boleto, card, cardPresent, cashapp, crypto, customerBalance, eps, fpx, giropay, grabpay, ideal, interacPresent, kakaoPay, klarna, konbini, krCard, link, mbWay, mobilepay, multibanco, naverPay, nzBankAccount, oxxo, p24, payByBank, payco, paynow, paypal, payto, pix, promptpay, revolutPay, samsungPay, satispay, sepaDebit, sofort, swish, twint, usBankAccount, wechatPay, zip]); } 
@override String toString() { return 'PaymentIntentPaymentMethodOptions(acssDebit: $acssDebit, affirm: $affirm, afterpayClearpay: $afterpayClearpay, alipay: $alipay, alma: $alma, amazonPay: $amazonPay, auBecsDebit: $auBecsDebit, bacsDebit: $bacsDebit, bancontact: $bancontact, billie: $billie, blik: $blik, boleto: $boleto, card: $card, cardPresent: $cardPresent, cashapp: $cashapp, crypto: $crypto, customerBalance: $customerBalance, eps: $eps, fpx: $fpx, giropay: $giropay, grabpay: $grabpay, ideal: $ideal, interacPresent: $interacPresent, kakaoPay: $kakaoPay, klarna: $klarna, konbini: $konbini, krCard: $krCard, link: $link, mbWay: $mbWay, mobilepay: $mobilepay, multibanco: $multibanco, naverPay: $naverPay, nzBankAccount: $nzBankAccount, oxxo: $oxxo, p24: $p24, payByBank: $payByBank, payco: $payco, paynow: $paynow, paypal: $paypal, payto: $payto, pix: $pix, promptpay: $promptpay, revolutPay: $revolutPay, samsungPay: $samsungPay, satispay: $satispay, sepaDebit: $sepaDebit, sofort: $sofort, swish: $swish, twint: $twint, usBankAccount: $usBankAccount, wechatPay: $wechatPay, zip: $zip)'; } 
 }
