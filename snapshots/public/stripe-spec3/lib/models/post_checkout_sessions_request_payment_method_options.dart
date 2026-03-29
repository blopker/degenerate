// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_checkout_sessions_request_payment_method_options_acss_debit.dart';import 'post_checkout_sessions_request_payment_method_options_affirm.dart';import 'post_checkout_sessions_request_payment_method_options_afterpay_clearpay.dart';import 'post_checkout_sessions_request_payment_method_options_alipay.dart';import 'post_checkout_sessions_request_payment_method_options_alma.dart';import 'post_checkout_sessions_request_payment_method_options_amazon_pay.dart';import 'post_checkout_sessions_request_payment_method_options_au_becs_debit.dart';import 'post_checkout_sessions_request_payment_method_options_bacs_debit.dart';import 'post_checkout_sessions_request_payment_method_options_bancontact.dart';import 'post_checkout_sessions_request_payment_method_options_billie.dart';import 'post_checkout_sessions_request_payment_method_options_boleto.dart';import 'post_checkout_sessions_request_payment_method_options_card.dart';import 'post_checkout_sessions_request_payment_method_options_cashapp.dart';import 'post_checkout_sessions_request_payment_method_options_customer_balance.dart';import 'post_checkout_sessions_request_payment_method_options_demo_pay.dart';import 'post_checkout_sessions_request_payment_method_options_eps.dart';import 'post_checkout_sessions_request_payment_method_options_fpx.dart';import 'post_checkout_sessions_request_payment_method_options_giropay.dart';import 'post_checkout_sessions_request_payment_method_options_grabpay.dart';import 'post_checkout_sessions_request_payment_method_options_ideal.dart';import 'post_checkout_sessions_request_payment_method_options_kakao_pay.dart';import 'post_checkout_sessions_request_payment_method_options_klarna.dart';import 'post_checkout_sessions_request_payment_method_options_konbini.dart';import 'post_checkout_sessions_request_payment_method_options_kr_card.dart';import 'post_checkout_sessions_request_payment_method_options_link.dart';import 'post_checkout_sessions_request_payment_method_options_mobilepay.dart';import 'post_checkout_sessions_request_payment_method_options_multibanco.dart';import 'post_checkout_sessions_request_payment_method_options_naver_pay.dart';import 'post_checkout_sessions_request_payment_method_options_oxxo.dart';import 'post_checkout_sessions_request_payment_method_options_p24.dart';import 'post_checkout_sessions_request_payment_method_options_pay_by_bank.dart';import 'post_checkout_sessions_request_payment_method_options_payco.dart';import 'post_checkout_sessions_request_payment_method_options_paynow.dart';import 'post_checkout_sessions_request_payment_method_options_paypal.dart';import 'post_checkout_sessions_request_payment_method_options_payto.dart';import 'post_checkout_sessions_request_payment_method_options_pix.dart';import 'post_checkout_sessions_request_payment_method_options_revolut_pay.dart';import 'post_checkout_sessions_request_payment_method_options_samsung_pay.dart';import 'post_checkout_sessions_request_payment_method_options_satispay.dart';import 'post_checkout_sessions_request_payment_method_options_sepa_debit.dart';import 'post_checkout_sessions_request_payment_method_options_sofort.dart';import 'post_checkout_sessions_request_payment_method_options_swish.dart';import 'post_checkout_sessions_request_payment_method_options_twint.dart';import 'post_checkout_sessions_request_payment_method_options_us_bank_account.dart';import 'post_checkout_sessions_request_payment_method_options_wechat_pay.dart';/// Payment-method-specific configuration.
final class PostCheckoutSessionsRequestPaymentMethodOptions {const PostCheckoutSessionsRequestPaymentMethodOptions({this.acssDebit, this.affirm, this.afterpayClearpay, this.alipay, this.alma, this.amazonPay, this.auBecsDebit, this.bacsDebit, this.bancontact, this.billie, this.boleto, this.card, this.cashapp, this.customerBalance, this.demoPay, this.eps, this.fpx, this.giropay, this.grabpay, this.ideal, this.kakaoPay, this.klarna, this.konbini, this.krCard, this.link, this.mobilepay, this.multibanco, this.naverPay, this.oxxo, this.p24, this.payByBank, this.payco, this.paynow, this.paypal, this.payto, this.pix, this.revolutPay, this.samsungPay, this.satispay, this.sepaDebit, this.sofort, this.swish, this.twint, this.usBankAccount, this.wechatPay, });

factory PostCheckoutSessionsRequestPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestPaymentMethodOptions(
  acssDebit: json['acss_debit'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsAcssDebit.fromJson(json['acss_debit'] as Map<String, dynamic>) : null,
  affirm: json['affirm'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsAffirm.fromJson(json['affirm'] as Map<String, dynamic>) : null,
  afterpayClearpay: json['afterpay_clearpay'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsAfterpayClearpay.fromJson(json['afterpay_clearpay'] as Map<String, dynamic>) : null,
  alipay: json['alipay'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsAlipay.fromJson(json['alipay'] as Map<String, dynamic>) : null,
  alma: json['alma'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsAlma.fromJson(json['alma'] as Map<String, dynamic>) : null,
  amazonPay: json['amazon_pay'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPay.fromJson(json['amazon_pay'] as Map<String, dynamic>) : null,
  auBecsDebit: json['au_becs_debit'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsAuBecsDebit.fromJson(json['au_becs_debit'] as Map<String, dynamic>) : null,
  bacsDebit: json['bacs_debit'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebit.fromJson(json['bacs_debit'] as Map<String, dynamic>) : null,
  bancontact: json['bancontact'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsBancontact.fromJson(json['bancontact'] as Map<String, dynamic>) : null,
  billie: json['billie'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsBillie.fromJson(json['billie'] as Map<String, dynamic>) : null,
  boleto: json['boleto'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsBoleto.fromJson(json['boleto'] as Map<String, dynamic>) : null,
  card: json['card'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsCard.fromJson(json['card'] as Map<String, dynamic>) : null,
  cashapp: json['cashapp'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsCashapp.fromJson(json['cashapp'] as Map<String, dynamic>) : null,
  customerBalance: json['customer_balance'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsCustomerBalance.fromJson(json['customer_balance'] as Map<String, dynamic>) : null,
  demoPay: json['demo_pay'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsDemoPay.fromJson(json['demo_pay'] as Map<String, dynamic>) : null,
  eps: json['eps'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsEps.fromJson(json['eps'] as Map<String, dynamic>) : null,
  fpx: json['fpx'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsFpx.fromJson(json['fpx'] as Map<String, dynamic>) : null,
  giropay: json['giropay'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsGiropay.fromJson(json['giropay'] as Map<String, dynamic>) : null,
  grabpay: json['grabpay'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsGrabpay.fromJson(json['grabpay'] as Map<String, dynamic>) : null,
  ideal: json['ideal'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsIdeal.fromJson(json['ideal'] as Map<String, dynamic>) : null,
  kakaoPay: json['kakao_pay'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPay.fromJson(json['kakao_pay'] as Map<String, dynamic>) : null,
  klarna: json['klarna'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsKlarna.fromJson(json['klarna'] as Map<String, dynamic>) : null,
  konbini: json['konbini'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsKonbini.fromJson(json['konbini'] as Map<String, dynamic>) : null,
  krCard: json['kr_card'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsKrCard.fromJson(json['kr_card'] as Map<String, dynamic>) : null,
  link: json['link'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsLink.fromJson(json['link'] as Map<String, dynamic>) : null,
  mobilepay: json['mobilepay'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsMobilepay.fromJson(json['mobilepay'] as Map<String, dynamic>) : null,
  multibanco: json['multibanco'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsMultibanco.fromJson(json['multibanco'] as Map<String, dynamic>) : null,
  naverPay: json['naver_pay'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsNaverPay.fromJson(json['naver_pay'] as Map<String, dynamic>) : null,
  oxxo: json['oxxo'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsOxxo.fromJson(json['oxxo'] as Map<String, dynamic>) : null,
  p24: json['p24'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsP24.fromJson(json['p24'] as Map<String, dynamic>) : null,
  payByBank: json['pay_by_bank'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsPayByBank.fromJson(json['pay_by_bank'] as Map<String, dynamic>) : null,
  payco: json['payco'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsPayco.fromJson(json['payco'] as Map<String, dynamic>) : null,
  paynow: json['paynow'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsPaynow.fromJson(json['paynow'] as Map<String, dynamic>) : null,
  paypal: json['paypal'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsPaypal.fromJson(json['paypal'] as Map<String, dynamic>) : null,
  payto: json['payto'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsPayto.fromJson(json['payto'] as Map<String, dynamic>) : null,
  pix: json['pix'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsPix.fromJson(json['pix'] as Map<String, dynamic>) : null,
  revolutPay: json['revolut_pay'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPay.fromJson(json['revolut_pay'] as Map<String, dynamic>) : null,
  samsungPay: json['samsung_pay'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsSamsungPay.fromJson(json['samsung_pay'] as Map<String, dynamic>) : null,
  satispay: json['satispay'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsSatispay.fromJson(json['satispay'] as Map<String, dynamic>) : null,
  sepaDebit: json['sepa_debit'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebit.fromJson(json['sepa_debit'] as Map<String, dynamic>) : null,
  sofort: json['sofort'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsSofort.fromJson(json['sofort'] as Map<String, dynamic>) : null,
  swish: json['swish'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsSwish.fromJson(json['swish'] as Map<String, dynamic>) : null,
  twint: json['twint'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsTwint.fromJson(json['twint'] as Map<String, dynamic>) : null,
  usBankAccount: json['us_bank_account'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccount.fromJson(json['us_bank_account'] as Map<String, dynamic>) : null,
  wechatPay: json['wechat_pay'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsWechatPay.fromJson(json['wechat_pay'] as Map<String, dynamic>) : null,
); }

final PostCheckoutSessionsRequestPaymentMethodOptionsAcssDebit? acssDebit;

final PostCheckoutSessionsRequestPaymentMethodOptionsAffirm? affirm;

final PostCheckoutSessionsRequestPaymentMethodOptionsAfterpayClearpay? afterpayClearpay;

final PostCheckoutSessionsRequestPaymentMethodOptionsAlipay? alipay;

final PostCheckoutSessionsRequestPaymentMethodOptionsAlma? alma;

final PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPay? amazonPay;

final PostCheckoutSessionsRequestPaymentMethodOptionsAuBecsDebit? auBecsDebit;

final PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebit? bacsDebit;

final PostCheckoutSessionsRequestPaymentMethodOptionsBancontact? bancontact;

final PostCheckoutSessionsRequestPaymentMethodOptionsBillie? billie;

final PostCheckoutSessionsRequestPaymentMethodOptionsBoleto? boleto;

final PostCheckoutSessionsRequestPaymentMethodOptionsCard? card;

final PostCheckoutSessionsRequestPaymentMethodOptionsCashapp? cashapp;

final PostCheckoutSessionsRequestPaymentMethodOptionsCustomerBalance? customerBalance;

final PostCheckoutSessionsRequestPaymentMethodOptionsDemoPay? demoPay;

final PostCheckoutSessionsRequestPaymentMethodOptionsEps? eps;

final PostCheckoutSessionsRequestPaymentMethodOptionsFpx? fpx;

final PostCheckoutSessionsRequestPaymentMethodOptionsGiropay? giropay;

final PostCheckoutSessionsRequestPaymentMethodOptionsGrabpay? grabpay;

final PostCheckoutSessionsRequestPaymentMethodOptionsIdeal? ideal;

final PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPay? kakaoPay;

final PostCheckoutSessionsRequestPaymentMethodOptionsKlarna? klarna;

final PostCheckoutSessionsRequestPaymentMethodOptionsKonbini? konbini;

final PostCheckoutSessionsRequestPaymentMethodOptionsKrCard? krCard;

final PostCheckoutSessionsRequestPaymentMethodOptionsLink? link;

final PostCheckoutSessionsRequestPaymentMethodOptionsMobilepay? mobilepay;

final PostCheckoutSessionsRequestPaymentMethodOptionsMultibanco? multibanco;

final PostCheckoutSessionsRequestPaymentMethodOptionsNaverPay? naverPay;

final PostCheckoutSessionsRequestPaymentMethodOptionsOxxo? oxxo;

final PostCheckoutSessionsRequestPaymentMethodOptionsP24? p24;

final PostCheckoutSessionsRequestPaymentMethodOptionsPayByBank? payByBank;

final PostCheckoutSessionsRequestPaymentMethodOptionsPayco? payco;

final PostCheckoutSessionsRequestPaymentMethodOptionsPaynow? paynow;

final PostCheckoutSessionsRequestPaymentMethodOptionsPaypal? paypal;

final PostCheckoutSessionsRequestPaymentMethodOptionsPayto? payto;

final PostCheckoutSessionsRequestPaymentMethodOptionsPix? pix;

final PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPay? revolutPay;

final PostCheckoutSessionsRequestPaymentMethodOptionsSamsungPay? samsungPay;

final PostCheckoutSessionsRequestPaymentMethodOptionsSatispay? satispay;

final PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebit? sepaDebit;

final PostCheckoutSessionsRequestPaymentMethodOptionsSofort? sofort;

final PostCheckoutSessionsRequestPaymentMethodOptionsSwish? swish;

final PostCheckoutSessionsRequestPaymentMethodOptionsTwint? twint;

final PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccount? usBankAccount;

final PostCheckoutSessionsRequestPaymentMethodOptionsWechatPay? wechatPay;

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
  if (boleto != null) 'boleto': boleto?.toJson(),
  if (card != null) 'card': card?.toJson(),
  if (cashapp != null) 'cashapp': cashapp?.toJson(),
  if (customerBalance != null) 'customer_balance': customerBalance?.toJson(),
  if (demoPay != null) 'demo_pay': demoPay?.toJson(),
  if (eps != null) 'eps': eps?.toJson(),
  if (fpx != null) 'fpx': fpx?.toJson(),
  if (giropay != null) 'giropay': giropay?.toJson(),
  if (grabpay != null) 'grabpay': grabpay?.toJson(),
  if (ideal != null) 'ideal': ideal?.toJson(),
  if (kakaoPay != null) 'kakao_pay': kakaoPay?.toJson(),
  if (klarna != null) 'klarna': klarna?.toJson(),
  if (konbini != null) 'konbini': konbini?.toJson(),
  if (krCard != null) 'kr_card': krCard?.toJson(),
  if (link != null) 'link': link?.toJson(),
  if (mobilepay != null) 'mobilepay': mobilepay?.toJson(),
  if (multibanco != null) 'multibanco': multibanco?.toJson(),
  if (naverPay != null) 'naver_pay': naverPay?.toJson(),
  if (oxxo != null) 'oxxo': oxxo?.toJson(),
  if (p24 != null) 'p24': p24?.toJson(),
  if (payByBank != null) 'pay_by_bank': payByBank?.toJson(),
  if (payco != null) 'payco': payco?.toJson(),
  if (paynow != null) 'paynow': paynow?.toJson(),
  if (paypal != null) 'paypal': paypal?.toJson(),
  if (payto != null) 'payto': payto?.toJson(),
  if (pix != null) 'pix': pix?.toJson(),
  if (revolutPay != null) 'revolut_pay': revolutPay?.toJson(),
  if (samsungPay != null) 'samsung_pay': samsungPay?.toJson(),
  if (satispay != null) 'satispay': satispay?.toJson(),
  if (sepaDebit != null) 'sepa_debit': sepaDebit?.toJson(),
  if (sofort != null) 'sofort': sofort?.toJson(),
  if (swish != null) 'swish': swish?.toJson(),
  if (twint != null) 'twint': twint?.toJson(),
  if (usBankAccount != null) 'us_bank_account': usBankAccount?.toJson(),
  if (wechatPay != null) 'wechat_pay': wechatPay?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'acss_debit', 'affirm', 'afterpay_clearpay', 'alipay', 'alma', 'amazon_pay', 'au_becs_debit', 'bacs_debit', 'bancontact', 'billie', 'boleto', 'card', 'cashapp', 'customer_balance', 'demo_pay', 'eps', 'fpx', 'giropay', 'grabpay', 'ideal', 'kakao_pay', 'klarna', 'konbini', 'kr_card', 'link', 'mobilepay', 'multibanco', 'naver_pay', 'oxxo', 'p24', 'pay_by_bank', 'payco', 'paynow', 'paypal', 'payto', 'pix', 'revolut_pay', 'samsung_pay', 'satispay', 'sepa_debit', 'sofort', 'swish', 'twint', 'us_bank_account', 'wechat_pay'}.contains(key)); } 
PostCheckoutSessionsRequestPaymentMethodOptions copyWith({PostCheckoutSessionsRequestPaymentMethodOptionsAcssDebit Function()? acssDebit, PostCheckoutSessionsRequestPaymentMethodOptionsAffirm Function()? affirm, PostCheckoutSessionsRequestPaymentMethodOptionsAfterpayClearpay Function()? afterpayClearpay, PostCheckoutSessionsRequestPaymentMethodOptionsAlipay Function()? alipay, PostCheckoutSessionsRequestPaymentMethodOptionsAlma Function()? alma, PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPay Function()? amazonPay, PostCheckoutSessionsRequestPaymentMethodOptionsAuBecsDebit Function()? auBecsDebit, PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebit Function()? bacsDebit, PostCheckoutSessionsRequestPaymentMethodOptionsBancontact Function()? bancontact, PostCheckoutSessionsRequestPaymentMethodOptionsBillie Function()? billie, PostCheckoutSessionsRequestPaymentMethodOptionsBoleto Function()? boleto, PostCheckoutSessionsRequestPaymentMethodOptionsCard Function()? card, PostCheckoutSessionsRequestPaymentMethodOptionsCashapp Function()? cashapp, PostCheckoutSessionsRequestPaymentMethodOptionsCustomerBalance Function()? customerBalance, PostCheckoutSessionsRequestPaymentMethodOptionsDemoPay Function()? demoPay, PostCheckoutSessionsRequestPaymentMethodOptionsEps Function()? eps, PostCheckoutSessionsRequestPaymentMethodOptionsFpx Function()? fpx, PostCheckoutSessionsRequestPaymentMethodOptionsGiropay Function()? giropay, PostCheckoutSessionsRequestPaymentMethodOptionsGrabpay Function()? grabpay, PostCheckoutSessionsRequestPaymentMethodOptionsIdeal Function()? ideal, PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPay Function()? kakaoPay, PostCheckoutSessionsRequestPaymentMethodOptionsKlarna Function()? klarna, PostCheckoutSessionsRequestPaymentMethodOptionsKonbini Function()? konbini, PostCheckoutSessionsRequestPaymentMethodOptionsKrCard Function()? krCard, PostCheckoutSessionsRequestPaymentMethodOptionsLink Function()? link, PostCheckoutSessionsRequestPaymentMethodOptionsMobilepay Function()? mobilepay, PostCheckoutSessionsRequestPaymentMethodOptionsMultibanco Function()? multibanco, PostCheckoutSessionsRequestPaymentMethodOptionsNaverPay Function()? naverPay, PostCheckoutSessionsRequestPaymentMethodOptionsOxxo Function()? oxxo, PostCheckoutSessionsRequestPaymentMethodOptionsP24 Function()? p24, PostCheckoutSessionsRequestPaymentMethodOptionsPayByBank Function()? payByBank, PostCheckoutSessionsRequestPaymentMethodOptionsPayco Function()? payco, PostCheckoutSessionsRequestPaymentMethodOptionsPaynow Function()? paynow, PostCheckoutSessionsRequestPaymentMethodOptionsPaypal Function()? paypal, PostCheckoutSessionsRequestPaymentMethodOptionsPayto Function()? payto, PostCheckoutSessionsRequestPaymentMethodOptionsPix Function()? pix, PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPay Function()? revolutPay, PostCheckoutSessionsRequestPaymentMethodOptionsSamsungPay Function()? samsungPay, PostCheckoutSessionsRequestPaymentMethodOptionsSatispay Function()? satispay, PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebit Function()? sepaDebit, PostCheckoutSessionsRequestPaymentMethodOptionsSofort Function()? sofort, PostCheckoutSessionsRequestPaymentMethodOptionsSwish Function()? swish, PostCheckoutSessionsRequestPaymentMethodOptionsTwint Function()? twint, PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccount Function()? usBankAccount, PostCheckoutSessionsRequestPaymentMethodOptionsWechatPay Function()? wechatPay, }) { return PostCheckoutSessionsRequestPaymentMethodOptions(
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
  boleto: boleto != null ? boleto() : this.boleto,
  card: card != null ? card() : this.card,
  cashapp: cashapp != null ? cashapp() : this.cashapp,
  customerBalance: customerBalance != null ? customerBalance() : this.customerBalance,
  demoPay: demoPay != null ? demoPay() : this.demoPay,
  eps: eps != null ? eps() : this.eps,
  fpx: fpx != null ? fpx() : this.fpx,
  giropay: giropay != null ? giropay() : this.giropay,
  grabpay: grabpay != null ? grabpay() : this.grabpay,
  ideal: ideal != null ? ideal() : this.ideal,
  kakaoPay: kakaoPay != null ? kakaoPay() : this.kakaoPay,
  klarna: klarna != null ? klarna() : this.klarna,
  konbini: konbini != null ? konbini() : this.konbini,
  krCard: krCard != null ? krCard() : this.krCard,
  link: link != null ? link() : this.link,
  mobilepay: mobilepay != null ? mobilepay() : this.mobilepay,
  multibanco: multibanco != null ? multibanco() : this.multibanco,
  naverPay: naverPay != null ? naverPay() : this.naverPay,
  oxxo: oxxo != null ? oxxo() : this.oxxo,
  p24: p24 != null ? p24() : this.p24,
  payByBank: payByBank != null ? payByBank() : this.payByBank,
  payco: payco != null ? payco() : this.payco,
  paynow: paynow != null ? paynow() : this.paynow,
  paypal: paypal != null ? paypal() : this.paypal,
  payto: payto != null ? payto() : this.payto,
  pix: pix != null ? pix() : this.pix,
  revolutPay: revolutPay != null ? revolutPay() : this.revolutPay,
  samsungPay: samsungPay != null ? samsungPay() : this.samsungPay,
  satispay: satispay != null ? satispay() : this.satispay,
  sepaDebit: sepaDebit != null ? sepaDebit() : this.sepaDebit,
  sofort: sofort != null ? sofort() : this.sofort,
  swish: swish != null ? swish() : this.swish,
  twint: twint != null ? twint() : this.twint,
  usBankAccount: usBankAccount != null ? usBankAccount() : this.usBankAccount,
  wechatPay: wechatPay != null ? wechatPay() : this.wechatPay,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentMethodOptions &&
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
          boleto == other.boleto &&
          card == other.card &&
          cashapp == other.cashapp &&
          customerBalance == other.customerBalance &&
          demoPay == other.demoPay &&
          eps == other.eps &&
          fpx == other.fpx &&
          giropay == other.giropay &&
          grabpay == other.grabpay &&
          ideal == other.ideal &&
          kakaoPay == other.kakaoPay &&
          klarna == other.klarna &&
          konbini == other.konbini &&
          krCard == other.krCard &&
          link == other.link &&
          mobilepay == other.mobilepay &&
          multibanco == other.multibanco &&
          naverPay == other.naverPay &&
          oxxo == other.oxxo &&
          p24 == other.p24 &&
          payByBank == other.payByBank &&
          payco == other.payco &&
          paynow == other.paynow &&
          paypal == other.paypal &&
          payto == other.payto &&
          pix == other.pix &&
          revolutPay == other.revolutPay &&
          samsungPay == other.samsungPay &&
          satispay == other.satispay &&
          sepaDebit == other.sepaDebit &&
          sofort == other.sofort &&
          swish == other.swish &&
          twint == other.twint &&
          usBankAccount == other.usBankAccount &&
          wechatPay == other.wechatPay; } 
@override int get hashCode { return Object.hashAll([acssDebit, affirm, afterpayClearpay, alipay, alma, amazonPay, auBecsDebit, bacsDebit, bancontact, billie, boleto, card, cashapp, customerBalance, demoPay, eps, fpx, giropay, grabpay, ideal, kakaoPay, klarna, konbini, krCard, link, mobilepay, multibanco, naverPay, oxxo, p24, payByBank, payco, paynow, paypal, payto, pix, revolutPay, samsungPay, satispay, sepaDebit, sofort, swish, twint, usBankAccount, wechatPay]); } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptions(acssDebit: $acssDebit, affirm: $affirm, afterpayClearpay: $afterpayClearpay, alipay: $alipay, alma: $alma, amazonPay: $amazonPay, auBecsDebit: $auBecsDebit, bacsDebit: $bacsDebit, bancontact: $bancontact, billie: $billie, boleto: $boleto, card: $card, cashapp: $cashapp, customerBalance: $customerBalance, demoPay: $demoPay, eps: $eps, fpx: $fpx, giropay: $giropay, grabpay: $grabpay, ideal: $ideal, kakaoPay: $kakaoPay, klarna: $klarna, konbini: $konbini, krCard: $krCard, link: $link, mobilepay: $mobilepay, multibanco: $multibanco, naverPay: $naverPay, oxxo: $oxxo, p24: $p24, payByBank: $payByBank, payco: $payco, paynow: $paynow, paypal: $paypal, payto: $payto, pix: $pix, revolutPay: $revolutPay, samsungPay: $samsungPay, satispay: $satispay, sepaDebit: $sepaDebit, sofort: $sofort, swish: $swish, twint: $twint, usBankAccount: $usBankAccount, wechatPay: $wechatPay)'; } 
 }
