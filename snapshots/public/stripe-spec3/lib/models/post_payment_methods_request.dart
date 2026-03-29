// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'card_details_params.dart';import 'post_payment_methods_request_acss_debit.dart';import 'post_payment_methods_request_affirm.dart';import 'post_payment_methods_request_afterpay_clearpay.dart';import 'post_payment_methods_request_alipay.dart';import 'post_payment_methods_request_alma.dart';import 'post_payment_methods_request_amazon_pay.dart';import 'post_payment_methods_request_au_becs_debit.dart';import 'post_payment_methods_request_bacs_debit.dart';import 'post_payment_methods_request_bancontact.dart';import 'post_payment_methods_request_billie.dart';import 'post_payment_methods_request_billing_details.dart';import 'post_payment_methods_request_blik.dart';import 'post_payment_methods_request_boleto.dart';import 'post_payment_methods_request_card.dart';import 'post_payment_methods_request_cashapp.dart';import 'post_payment_methods_request_crypto.dart';import 'post_payment_methods_request_custom.dart';import 'post_payment_methods_request_customer_balance.dart';import 'post_payment_methods_request_eps.dart';import 'post_payment_methods_request_fpx.dart';import 'post_payment_methods_request_giropay.dart';import 'post_payment_methods_request_grabpay.dart';import 'post_payment_methods_request_ideal.dart';import 'post_payment_methods_request_interac_present.dart';import 'post_payment_methods_request_kakao_pay.dart';import 'post_payment_methods_request_klarna.dart';import 'post_payment_methods_request_konbini.dart';import 'post_payment_methods_request_kr_card.dart';import 'post_payment_methods_request_link.dart';import 'post_payment_methods_request_mb_way.dart';import 'post_payment_methods_request_mobilepay.dart';import 'post_payment_methods_request_multibanco.dart';import 'post_payment_methods_request_naver_pay.dart';import 'post_payment_methods_request_nz_bank_account.dart';import 'post_payment_methods_request_oxxo.dart';import 'post_payment_methods_request_p24.dart';import 'post_payment_methods_request_pay_by_bank.dart';import 'post_payment_methods_request_payco.dart';import 'post_payment_methods_request_paynow.dart';import 'post_payment_methods_request_paypal.dart';import 'post_payment_methods_request_payto.dart';import 'post_payment_methods_request_pix.dart';import 'post_payment_methods_request_promptpay.dart';import 'post_payment_methods_request_radar_options.dart';import 'post_payment_methods_request_revolut_pay.dart';import 'post_payment_methods_request_samsung_pay.dart';import 'post_payment_methods_request_satispay.dart';import 'post_payment_methods_request_sepa_debit.dart';import 'post_payment_methods_request_sofort.dart';import 'post_payment_methods_request_swish.dart';import 'post_payment_methods_request_twint.dart';import 'post_payment_methods_request_us_bank_account.dart';import 'post_payment_methods_request_wechat_pay.dart';import 'post_payment_methods_request_zip.dart';import 'token_params.dart';/// This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
final class PostPaymentMethodsRequestAllowRedisplay {const PostPaymentMethodsRequestAllowRedisplay._(this.value);

factory PostPaymentMethodsRequestAllowRedisplay.fromJson(String json) { return switch (json) {
  'always' => always,
  'limited' => limited,
  'unspecified' => unspecified,
  _ => PostPaymentMethodsRequestAllowRedisplay._(json),
}; }

static const PostPaymentMethodsRequestAllowRedisplay always = PostPaymentMethodsRequestAllowRedisplay._('always');

static const PostPaymentMethodsRequestAllowRedisplay limited = PostPaymentMethodsRequestAllowRedisplay._('limited');

static const PostPaymentMethodsRequestAllowRedisplay unspecified = PostPaymentMethodsRequestAllowRedisplay._('unspecified');

static const List<PostPaymentMethodsRequestAllowRedisplay> values = [always, limited, unspecified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodsRequestAllowRedisplay && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodsRequestAllowRedisplay($value)'; } 
 }
/// The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
final class PostPaymentMethodsRequestType {const PostPaymentMethodsRequestType._(this.value);

factory PostPaymentMethodsRequestType.fromJson(String json) { return switch (json) {
  'acss_debit' => acssDebit,
  'affirm' => affirm,
  'afterpay_clearpay' => afterpayClearpay,
  'alipay' => alipay,
  'alma' => alma,
  'amazon_pay' => amazonPay,
  'au_becs_debit' => auBecsDebit,
  'bacs_debit' => bacsDebit,
  'bancontact' => bancontact,
  'billie' => billie,
  'blik' => blik,
  'boleto' => boleto,
  'card' => card,
  'cashapp' => cashapp,
  'crypto' => crypto,
  'custom' => custom,
  'customer_balance' => customerBalance,
  'eps' => eps,
  'fpx' => fpx,
  'giropay' => giropay,
  'grabpay' => grabpay,
  'ideal' => ideal,
  'kakao_pay' => kakaoPay,
  'klarna' => klarna,
  'konbini' => konbini,
  'kr_card' => krCard,
  'link' => link,
  'mb_way' => mbWay,
  'mobilepay' => mobilepay,
  'multibanco' => multibanco,
  'naver_pay' => naverPay,
  'nz_bank_account' => nzBankAccount,
  'oxxo' => oxxo,
  'p24' => p24,
  'pay_by_bank' => payByBank,
  'payco' => payco,
  'paynow' => paynow,
  'paypal' => paypal,
  'payto' => payto,
  'pix' => pix,
  'promptpay' => promptpay,
  'revolut_pay' => revolutPay,
  'samsung_pay' => samsungPay,
  'satispay' => satispay,
  'sepa_debit' => sepaDebit,
  'sofort' => sofort,
  'swish' => swish,
  'twint' => twint,
  'us_bank_account' => usBankAccount,
  'wechat_pay' => wechatPay,
  'zip' => zip,
  _ => PostPaymentMethodsRequestType._(json),
}; }

static const PostPaymentMethodsRequestType acssDebit = PostPaymentMethodsRequestType._('acss_debit');

static const PostPaymentMethodsRequestType affirm = PostPaymentMethodsRequestType._('affirm');

static const PostPaymentMethodsRequestType afterpayClearpay = PostPaymentMethodsRequestType._('afterpay_clearpay');

static const PostPaymentMethodsRequestType alipay = PostPaymentMethodsRequestType._('alipay');

static const PostPaymentMethodsRequestType alma = PostPaymentMethodsRequestType._('alma');

static const PostPaymentMethodsRequestType amazonPay = PostPaymentMethodsRequestType._('amazon_pay');

static const PostPaymentMethodsRequestType auBecsDebit = PostPaymentMethodsRequestType._('au_becs_debit');

static const PostPaymentMethodsRequestType bacsDebit = PostPaymentMethodsRequestType._('bacs_debit');

static const PostPaymentMethodsRequestType bancontact = PostPaymentMethodsRequestType._('bancontact');

static const PostPaymentMethodsRequestType billie = PostPaymentMethodsRequestType._('billie');

static const PostPaymentMethodsRequestType blik = PostPaymentMethodsRequestType._('blik');

static const PostPaymentMethodsRequestType boleto = PostPaymentMethodsRequestType._('boleto');

static const PostPaymentMethodsRequestType card = PostPaymentMethodsRequestType._('card');

static const PostPaymentMethodsRequestType cashapp = PostPaymentMethodsRequestType._('cashapp');

static const PostPaymentMethodsRequestType crypto = PostPaymentMethodsRequestType._('crypto');

static const PostPaymentMethodsRequestType custom = PostPaymentMethodsRequestType._('custom');

static const PostPaymentMethodsRequestType customerBalance = PostPaymentMethodsRequestType._('customer_balance');

static const PostPaymentMethodsRequestType eps = PostPaymentMethodsRequestType._('eps');

static const PostPaymentMethodsRequestType fpx = PostPaymentMethodsRequestType._('fpx');

static const PostPaymentMethodsRequestType giropay = PostPaymentMethodsRequestType._('giropay');

static const PostPaymentMethodsRequestType grabpay = PostPaymentMethodsRequestType._('grabpay');

static const PostPaymentMethodsRequestType ideal = PostPaymentMethodsRequestType._('ideal');

static const PostPaymentMethodsRequestType kakaoPay = PostPaymentMethodsRequestType._('kakao_pay');

static const PostPaymentMethodsRequestType klarna = PostPaymentMethodsRequestType._('klarna');

static const PostPaymentMethodsRequestType konbini = PostPaymentMethodsRequestType._('konbini');

static const PostPaymentMethodsRequestType krCard = PostPaymentMethodsRequestType._('kr_card');

static const PostPaymentMethodsRequestType link = PostPaymentMethodsRequestType._('link');

static const PostPaymentMethodsRequestType mbWay = PostPaymentMethodsRequestType._('mb_way');

static const PostPaymentMethodsRequestType mobilepay = PostPaymentMethodsRequestType._('mobilepay');

static const PostPaymentMethodsRequestType multibanco = PostPaymentMethodsRequestType._('multibanco');

static const PostPaymentMethodsRequestType naverPay = PostPaymentMethodsRequestType._('naver_pay');

static const PostPaymentMethodsRequestType nzBankAccount = PostPaymentMethodsRequestType._('nz_bank_account');

static const PostPaymentMethodsRequestType oxxo = PostPaymentMethodsRequestType._('oxxo');

static const PostPaymentMethodsRequestType p24 = PostPaymentMethodsRequestType._('p24');

static const PostPaymentMethodsRequestType payByBank = PostPaymentMethodsRequestType._('pay_by_bank');

static const PostPaymentMethodsRequestType payco = PostPaymentMethodsRequestType._('payco');

static const PostPaymentMethodsRequestType paynow = PostPaymentMethodsRequestType._('paynow');

static const PostPaymentMethodsRequestType paypal = PostPaymentMethodsRequestType._('paypal');

static const PostPaymentMethodsRequestType payto = PostPaymentMethodsRequestType._('payto');

static const PostPaymentMethodsRequestType pix = PostPaymentMethodsRequestType._('pix');

static const PostPaymentMethodsRequestType promptpay = PostPaymentMethodsRequestType._('promptpay');

static const PostPaymentMethodsRequestType revolutPay = PostPaymentMethodsRequestType._('revolut_pay');

static const PostPaymentMethodsRequestType samsungPay = PostPaymentMethodsRequestType._('samsung_pay');

static const PostPaymentMethodsRequestType satispay = PostPaymentMethodsRequestType._('satispay');

static const PostPaymentMethodsRequestType sepaDebit = PostPaymentMethodsRequestType._('sepa_debit');

static const PostPaymentMethodsRequestType sofort = PostPaymentMethodsRequestType._('sofort');

static const PostPaymentMethodsRequestType swish = PostPaymentMethodsRequestType._('swish');

static const PostPaymentMethodsRequestType twint = PostPaymentMethodsRequestType._('twint');

static const PostPaymentMethodsRequestType usBankAccount = PostPaymentMethodsRequestType._('us_bank_account');

static const PostPaymentMethodsRequestType wechatPay = PostPaymentMethodsRequestType._('wechat_pay');

static const PostPaymentMethodsRequestType zip = PostPaymentMethodsRequestType._('zip');

static const List<PostPaymentMethodsRequestType> values = [acssDebit, affirm, afterpayClearpay, alipay, alma, amazonPay, auBecsDebit, bacsDebit, bancontact, billie, blik, boleto, card, cashapp, crypto, custom, customerBalance, eps, fpx, giropay, grabpay, ideal, kakaoPay, klarna, konbini, krCard, link, mbWay, mobilepay, multibanco, naverPay, nzBankAccount, oxxo, p24, payByBank, payco, paynow, paypal, payto, pix, promptpay, revolutPay, samsungPay, satispay, sepaDebit, sofort, swish, twint, usBankAccount, wechatPay, zip];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodsRequestType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodsRequestType($value)'; } 
 }
final class PostPaymentMethodsRequest {const PostPaymentMethodsRequest({this.acssDebit, this.affirm, this.afterpayClearpay, this.alipay, this.allowRedisplay, this.alma, this.amazonPay, this.auBecsDebit, this.bacsDebit, this.bancontact, this.billie, this.billingDetails, this.blik, this.boleto, this.card, this.cashapp, this.crypto, this.custom, this.customer, this.customerBalance, this.eps, this.expand, this.fpx, this.giropay, this.grabpay, this.ideal, this.interacPresent, this.kakaoPay, this.klarna, this.konbini, this.krCard, this.link, this.mbWay, this.metadata, this.mobilepay, this.multibanco, this.naverPay, this.nzBankAccount, this.oxxo, this.p24, this.payByBank, this.payco, this.paymentMethod, this.paynow, this.paypal, this.payto, this.pix, this.promptpay, this.radarOptions, this.revolutPay, this.samsungPay, this.satispay, this.sepaDebit, this.sofort, this.swish, this.twint, this.type, this.usBankAccount, this.wechatPay, this.zip, });

factory PostPaymentMethodsRequest.fromJson(Map<String, dynamic> json) { return PostPaymentMethodsRequest(
  acssDebit: json['acss_debit'] != null ? PostPaymentMethodsRequestAcssDebit.fromJson(json['acss_debit'] as Map<String, dynamic>) : null,
  affirm: json['affirm'] != null ? PostPaymentMethodsRequestAffirm.fromJson(json['affirm'] as Map<String, dynamic>) : null,
  afterpayClearpay: json['afterpay_clearpay'] != null ? PostPaymentMethodsRequestAfterpayClearpay.fromJson(json['afterpay_clearpay'] as Map<String, dynamic>) : null,
  alipay: json['alipay'] != null ? PostPaymentMethodsRequestAlipay.fromJson(json['alipay'] as Map<String, dynamic>) : null,
  allowRedisplay: json['allow_redisplay'] != null ? PostPaymentMethodsRequestAllowRedisplay.fromJson(json['allow_redisplay'] as String) : null,
  alma: json['alma'] != null ? PostPaymentMethodsRequestAlma.fromJson(json['alma'] as Map<String, dynamic>) : null,
  amazonPay: json['amazon_pay'] != null ? PostPaymentMethodsRequestAmazonPay.fromJson(json['amazon_pay'] as Map<String, dynamic>) : null,
  auBecsDebit: json['au_becs_debit'] != null ? PostPaymentMethodsRequestAuBecsDebit.fromJson(json['au_becs_debit'] as Map<String, dynamic>) : null,
  bacsDebit: json['bacs_debit'] != null ? PostPaymentMethodsRequestBacsDebit.fromJson(json['bacs_debit'] as Map<String, dynamic>) : null,
  bancontact: json['bancontact'] != null ? PostPaymentMethodsRequestBancontact.fromJson(json['bancontact'] as Map<String, dynamic>) : null,
  billie: json['billie'] != null ? PostPaymentMethodsRequestBillie.fromJson(json['billie'] as Map<String, dynamic>) : null,
  billingDetails: json['billing_details'] != null ? PostPaymentMethodsRequestBillingDetails.fromJson(json['billing_details'] as Map<String, dynamic>) : null,
  blik: json['blik'] != null ? PostPaymentMethodsRequestBlik.fromJson(json['blik'] as Map<String, dynamic>) : null,
  boleto: json['boleto'] != null ? PostPaymentMethodsRequestBoleto.fromJson(json['boleto'] as Map<String, dynamic>) : null,
  card: json['card'] != null ? OneOf2.parse(json['card'], fromA: (v) => CardDetailsParams.fromJson(v as Map<String, dynamic>), fromB: (v) => TokenParams.fromJson(v as Map<String, dynamic>),) : null,
  cashapp: json['cashapp'] != null ? PostPaymentMethodsRequestCashapp.fromJson(json['cashapp'] as Map<String, dynamic>) : null,
  crypto: json['crypto'] != null ? PostPaymentMethodsRequestCrypto.fromJson(json['crypto'] as Map<String, dynamic>) : null,
  custom: json['custom'] != null ? PostPaymentMethodsRequestCustom.fromJson(json['custom'] as Map<String, dynamic>) : null,
  customer: json['customer'] as String?,
  customerBalance: json['customer_balance'] != null ? PostPaymentMethodsRequestCustomerBalance.fromJson(json['customer_balance'] as Map<String, dynamic>) : null,
  eps: json['eps'] != null ? PostPaymentMethodsRequestEps.fromJson(json['eps'] as Map<String, dynamic>) : null,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  fpx: json['fpx'] != null ? PostPaymentMethodsRequestFpx.fromJson(json['fpx'] as Map<String, dynamic>) : null,
  giropay: json['giropay'] != null ? PostPaymentMethodsRequestGiropay.fromJson(json['giropay'] as Map<String, dynamic>) : null,
  grabpay: json['grabpay'] != null ? PostPaymentMethodsRequestGrabpay.fromJson(json['grabpay'] as Map<String, dynamic>) : null,
  ideal: json['ideal'] != null ? PostPaymentMethodsRequestIdeal.fromJson(json['ideal'] as Map<String, dynamic>) : null,
  interacPresent: json['interac_present'] != null ? PostPaymentMethodsRequestInteracPresent.fromJson(json['interac_present'] as Map<String, dynamic>) : null,
  kakaoPay: json['kakao_pay'] != null ? PostPaymentMethodsRequestKakaoPay.fromJson(json['kakao_pay'] as Map<String, dynamic>) : null,
  klarna: json['klarna'] != null ? PostPaymentMethodsRequestKlarna.fromJson(json['klarna'] as Map<String, dynamic>) : null,
  konbini: json['konbini'] != null ? PostPaymentMethodsRequestKonbini.fromJson(json['konbini'] as Map<String, dynamic>) : null,
  krCard: json['kr_card'] != null ? PostPaymentMethodsRequestKrCard.fromJson(json['kr_card'] as Map<String, dynamic>) : null,
  link: json['link'] != null ? PostPaymentMethodsRequestLink.fromJson(json['link'] as Map<String, dynamic>) : null,
  mbWay: json['mb_way'] != null ? PostPaymentMethodsRequestMbWay.fromJson(json['mb_way'] as Map<String, dynamic>) : null,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  mobilepay: json['mobilepay'] != null ? PostPaymentMethodsRequestMobilepay.fromJson(json['mobilepay'] as Map<String, dynamic>) : null,
  multibanco: json['multibanco'] != null ? PostPaymentMethodsRequestMultibanco.fromJson(json['multibanco'] as Map<String, dynamic>) : null,
  naverPay: json['naver_pay'] != null ? PostPaymentMethodsRequestNaverPay.fromJson(json['naver_pay'] as Map<String, dynamic>) : null,
  nzBankAccount: json['nz_bank_account'] != null ? PostPaymentMethodsRequestNzBankAccount.fromJson(json['nz_bank_account'] as Map<String, dynamic>) : null,
  oxxo: json['oxxo'] != null ? PostPaymentMethodsRequestOxxo.fromJson(json['oxxo'] as Map<String, dynamic>) : null,
  p24: json['p24'] != null ? PostPaymentMethodsRequestP24.fromJson(json['p24'] as Map<String, dynamic>) : null,
  payByBank: json['pay_by_bank'] != null ? PostPaymentMethodsRequestPayByBank.fromJson(json['pay_by_bank'] as Map<String, dynamic>) : null,
  payco: json['payco'] != null ? PostPaymentMethodsRequestPayco.fromJson(json['payco'] as Map<String, dynamic>) : null,
  paymentMethod: json['payment_method'] as String?,
  paynow: json['paynow'] != null ? PostPaymentMethodsRequestPaynow.fromJson(json['paynow'] as Map<String, dynamic>) : null,
  paypal: json['paypal'] != null ? PostPaymentMethodsRequestPaypal.fromJson(json['paypal'] as Map<String, dynamic>) : null,
  payto: json['payto'] != null ? PostPaymentMethodsRequestPayto.fromJson(json['payto'] as Map<String, dynamic>) : null,
  pix: json['pix'] != null ? PostPaymentMethodsRequestPix.fromJson(json['pix'] as Map<String, dynamic>) : null,
  promptpay: json['promptpay'] != null ? PostPaymentMethodsRequestPromptpay.fromJson(json['promptpay'] as Map<String, dynamic>) : null,
  radarOptions: json['radar_options'] != null ? PostPaymentMethodsRequestRadarOptions.fromJson(json['radar_options'] as Map<String, dynamic>) : null,
  revolutPay: json['revolut_pay'] != null ? PostPaymentMethodsRequestRevolutPay.fromJson(json['revolut_pay'] as Map<String, dynamic>) : null,
  samsungPay: json['samsung_pay'] != null ? PostPaymentMethodsRequestSamsungPay.fromJson(json['samsung_pay'] as Map<String, dynamic>) : null,
  satispay: json['satispay'] != null ? PostPaymentMethodsRequestSatispay.fromJson(json['satispay'] as Map<String, dynamic>) : null,
  sepaDebit: json['sepa_debit'] != null ? PostPaymentMethodsRequestSepaDebit.fromJson(json['sepa_debit'] as Map<String, dynamic>) : null,
  sofort: json['sofort'] != null ? PostPaymentMethodsRequestSofort.fromJson(json['sofort'] as Map<String, dynamic>) : null,
  swish: json['swish'] != null ? PostPaymentMethodsRequestSwish.fromJson(json['swish'] as Map<String, dynamic>) : null,
  twint: json['twint'] != null ? PostPaymentMethodsRequestTwint.fromJson(json['twint'] as Map<String, dynamic>) : null,
  type: json['type'] != null ? PostPaymentMethodsRequestType.fromJson(json['type'] as String) : null,
  usBankAccount: json['us_bank_account'] != null ? PostPaymentMethodsRequestUsBankAccount.fromJson(json['us_bank_account'] as Map<String, dynamic>) : null,
  wechatPay: json['wechat_pay'] != null ? PostPaymentMethodsRequestWechatPay.fromJson(json['wechat_pay'] as Map<String, dynamic>) : null,
  zip: json['zip'] != null ? PostPaymentMethodsRequestZip.fromJson(json['zip'] as Map<String, dynamic>) : null,
); }

/// If this is an `acss_debit` PaymentMethod, this hash contains details about the ACSS Debit payment method.
final PostPaymentMethodsRequestAcssDebit? acssDebit;

/// If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
final PostPaymentMethodsRequestAffirm? affirm;

/// If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
final PostPaymentMethodsRequestAfterpayClearpay? afterpayClearpay;

/// If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
final PostPaymentMethodsRequestAlipay? alipay;

/// This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
final PostPaymentMethodsRequestAllowRedisplay? allowRedisplay;

/// If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
final PostPaymentMethodsRequestAlma? alma;

/// If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
final PostPaymentMethodsRequestAmazonPay? amazonPay;

/// If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
final PostPaymentMethodsRequestAuBecsDebit? auBecsDebit;

/// If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
final PostPaymentMethodsRequestBacsDebit? bacsDebit;

/// If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
final PostPaymentMethodsRequestBancontact? bancontact;

/// If this is a `billie` PaymentMethod, this hash contains details about the Billie payment method.
final PostPaymentMethodsRequestBillie? billie;

/// Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
final PostPaymentMethodsRequestBillingDetails? billingDetails;

/// If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
final PostPaymentMethodsRequestBlik? blik;

/// If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
final PostPaymentMethodsRequestBoleto? boleto;

/// If this is a `card` PaymentMethod, this hash contains the user's card details. For backwards compatibility, you can alternatively provide a Stripe token (e.g., for Apple Pay, Amex Express Checkout, or legacy Checkout) into the card hash with format `card: {token: "tok_visa"}`. When providing a card number, you must meet the requirements for [PCI compliance](https://stripe.com/docs/security#validating-pci-compliance). We strongly recommend using Stripe.js instead of interacting with this API directly.
final PostPaymentMethodsRequestCard? card;

/// If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
final PostPaymentMethodsRequestCashapp? cashapp;

/// If this is a Crypto PaymentMethod, this hash contains details about the Crypto payment method.
final PostPaymentMethodsRequestCrypto? crypto;

/// If this is a `custom` PaymentMethod, this hash contains details about the Custom payment method.
final PostPaymentMethodsRequestCustom? custom;

/// The `Customer` to whom the original PaymentMethod is attached.
final String? customer;

/// If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
final PostPaymentMethodsRequestCustomerBalance? customerBalance;

/// If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
final PostPaymentMethodsRequestEps? eps;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
final PostPaymentMethodsRequestFpx? fpx;

/// If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
final PostPaymentMethodsRequestGiropay? giropay;

/// If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
final PostPaymentMethodsRequestGrabpay? grabpay;

/// If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
final PostPaymentMethodsRequestIdeal? ideal;

/// If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
final PostPaymentMethodsRequestInteracPresent? interacPresent;

/// If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
final PostPaymentMethodsRequestKakaoPay? kakaoPay;

/// If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
final PostPaymentMethodsRequestKlarna? klarna;

/// If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
final PostPaymentMethodsRequestKonbini? konbini;

/// If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
final PostPaymentMethodsRequestKrCard? krCard;

/// If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
final PostPaymentMethodsRequestLink? link;

/// If this is a MB WAY PaymentMethod, this hash contains details about the MB WAY payment method.
final PostPaymentMethodsRequestMbWay? mbWay;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
final Map<String,String>? metadata;

/// If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
final PostPaymentMethodsRequestMobilepay? mobilepay;

/// If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
final PostPaymentMethodsRequestMultibanco? multibanco;

/// If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
final PostPaymentMethodsRequestNaverPay? naverPay;

/// If this is an nz_bank_account PaymentMethod, this hash contains details about the nz_bank_account payment method.
final PostPaymentMethodsRequestNzBankAccount? nzBankAccount;

/// If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
final PostPaymentMethodsRequestOxxo? oxxo;

/// If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
final PostPaymentMethodsRequestP24? p24;

/// If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
final PostPaymentMethodsRequestPayByBank? payByBank;

/// If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
final PostPaymentMethodsRequestPayco? payco;

/// The PaymentMethod to share.
final String? paymentMethod;

/// If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
final PostPaymentMethodsRequestPaynow? paynow;

/// If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
final PostPaymentMethodsRequestPaypal? paypal;

/// If this is a `payto` PaymentMethod, this hash contains details about the PayTo payment method.
final PostPaymentMethodsRequestPayto? payto;

/// If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
final PostPaymentMethodsRequestPix? pix;

/// If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
final PostPaymentMethodsRequestPromptpay? promptpay;

/// Options to configure Radar. See [Radar Session](https://docs.stripe.com/radar/radar-session) for more information.
final PostPaymentMethodsRequestRadarOptions? radarOptions;

/// If this is a `revolut_pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
final PostPaymentMethodsRequestRevolutPay? revolutPay;

/// If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
final PostPaymentMethodsRequestSamsungPay? samsungPay;

/// If this is a `satispay` PaymentMethod, this hash contains details about the Satispay payment method.
final PostPaymentMethodsRequestSatispay? satispay;

/// If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
final PostPaymentMethodsRequestSepaDebit? sepaDebit;

/// If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
final PostPaymentMethodsRequestSofort? sofort;

/// If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
final PostPaymentMethodsRequestSwish? swish;

/// If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
final PostPaymentMethodsRequestTwint? twint;

/// The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
final PostPaymentMethodsRequestType? type;

/// If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
final PostPaymentMethodsRequestUsBankAccount? usBankAccount;

/// If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
final PostPaymentMethodsRequestWechatPay? wechatPay;

/// If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
final PostPaymentMethodsRequestZip? zip;

Map<String, dynamic> toJson() { return {
  if (acssDebit != null) 'acss_debit': acssDebit?.toJson(),
  if (affirm != null) 'affirm': affirm?.toJson(),
  if (afterpayClearpay != null) 'afterpay_clearpay': afterpayClearpay?.toJson(),
  if (alipay != null) 'alipay': alipay?.toJson(),
  if (allowRedisplay != null) 'allow_redisplay': allowRedisplay?.toJson(),
  if (alma != null) 'alma': alma?.toJson(),
  if (amazonPay != null) 'amazon_pay': amazonPay?.toJson(),
  if (auBecsDebit != null) 'au_becs_debit': auBecsDebit?.toJson(),
  if (bacsDebit != null) 'bacs_debit': bacsDebit?.toJson(),
  if (bancontact != null) 'bancontact': bancontact?.toJson(),
  if (billie != null) 'billie': billie?.toJson(),
  if (billingDetails != null) 'billing_details': billingDetails?.toJson(),
  if (blik != null) 'blik': blik?.toJson(),
  if (boleto != null) 'boleto': boleto?.toJson(),
  if (card != null) 'card': card?.toJson(),
  if (cashapp != null) 'cashapp': cashapp?.toJson(),
  if (crypto != null) 'crypto': crypto?.toJson(),
  if (custom != null) 'custom': custom?.toJson(),
  'customer': ?customer,
  if (customerBalance != null) 'customer_balance': customerBalance?.toJson(),
  if (eps != null) 'eps': eps?.toJson(),
  'expand': ?expand,
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
  'metadata': ?metadata,
  if (mobilepay != null) 'mobilepay': mobilepay?.toJson(),
  if (multibanco != null) 'multibanco': multibanco?.toJson(),
  if (naverPay != null) 'naver_pay': naverPay?.toJson(),
  if (nzBankAccount != null) 'nz_bank_account': nzBankAccount?.toJson(),
  if (oxxo != null) 'oxxo': oxxo?.toJson(),
  if (p24 != null) 'p24': p24?.toJson(),
  if (payByBank != null) 'pay_by_bank': payByBank?.toJson(),
  if (payco != null) 'payco': payco?.toJson(),
  'payment_method': ?paymentMethod,
  if (paynow != null) 'paynow': paynow?.toJson(),
  if (paypal != null) 'paypal': paypal?.toJson(),
  if (payto != null) 'payto': payto?.toJson(),
  if (pix != null) 'pix': pix?.toJson(),
  if (promptpay != null) 'promptpay': promptpay?.toJson(),
  if (radarOptions != null) 'radar_options': radarOptions?.toJson(),
  if (revolutPay != null) 'revolut_pay': revolutPay?.toJson(),
  if (samsungPay != null) 'samsung_pay': samsungPay?.toJson(),
  if (satispay != null) 'satispay': satispay?.toJson(),
  if (sepaDebit != null) 'sepa_debit': sepaDebit?.toJson(),
  if (sofort != null) 'sofort': sofort?.toJson(),
  if (swish != null) 'swish': swish?.toJson(),
  if (twint != null) 'twint': twint?.toJson(),
  if (type != null) 'type': type?.toJson(),
  if (usBankAccount != null) 'us_bank_account': usBankAccount?.toJson(),
  if (wechatPay != null) 'wechat_pay': wechatPay?.toJson(),
  if (zip != null) 'zip': zip?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'acss_debit', 'affirm', 'afterpay_clearpay', 'alipay', 'allow_redisplay', 'alma', 'amazon_pay', 'au_becs_debit', 'bacs_debit', 'bancontact', 'billie', 'billing_details', 'blik', 'boleto', 'card', 'cashapp', 'crypto', 'custom', 'customer', 'customer_balance', 'eps', 'expand', 'fpx', 'giropay', 'grabpay', 'ideal', 'interac_present', 'kakao_pay', 'klarna', 'konbini', 'kr_card', 'link', 'mb_way', 'metadata', 'mobilepay', 'multibanco', 'naver_pay', 'nz_bank_account', 'oxxo', 'p24', 'pay_by_bank', 'payco', 'payment_method', 'paynow', 'paypal', 'payto', 'pix', 'promptpay', 'radar_options', 'revolut_pay', 'samsung_pay', 'satispay', 'sepa_debit', 'sofort', 'swish', 'twint', 'type', 'us_bank_account', 'wechat_pay', 'zip'}.contains(key)); } 
PostPaymentMethodsRequest copyWith({PostPaymentMethodsRequestAcssDebit Function()? acssDebit, PostPaymentMethodsRequestAffirm Function()? affirm, PostPaymentMethodsRequestAfterpayClearpay Function()? afterpayClearpay, PostPaymentMethodsRequestAlipay Function()? alipay, PostPaymentMethodsRequestAllowRedisplay Function()? allowRedisplay, PostPaymentMethodsRequestAlma Function()? alma, PostPaymentMethodsRequestAmazonPay Function()? amazonPay, PostPaymentMethodsRequestAuBecsDebit Function()? auBecsDebit, PostPaymentMethodsRequestBacsDebit Function()? bacsDebit, PostPaymentMethodsRequestBancontact Function()? bancontact, PostPaymentMethodsRequestBillie Function()? billie, PostPaymentMethodsRequestBillingDetails Function()? billingDetails, PostPaymentMethodsRequestBlik Function()? blik, PostPaymentMethodsRequestBoleto Function()? boleto, PostPaymentMethodsRequestCard Function()? card, PostPaymentMethodsRequestCashapp Function()? cashapp, PostPaymentMethodsRequestCrypto Function()? crypto, PostPaymentMethodsRequestCustom Function()? custom, String Function()? customer, PostPaymentMethodsRequestCustomerBalance Function()? customerBalance, PostPaymentMethodsRequestEps Function()? eps, List<String> Function()? expand, PostPaymentMethodsRequestFpx Function()? fpx, PostPaymentMethodsRequestGiropay Function()? giropay, PostPaymentMethodsRequestGrabpay Function()? grabpay, PostPaymentMethodsRequestIdeal Function()? ideal, PostPaymentMethodsRequestInteracPresent Function()? interacPresent, PostPaymentMethodsRequestKakaoPay Function()? kakaoPay, PostPaymentMethodsRequestKlarna Function()? klarna, PostPaymentMethodsRequestKonbini Function()? konbini, PostPaymentMethodsRequestKrCard Function()? krCard, PostPaymentMethodsRequestLink Function()? link, PostPaymentMethodsRequestMbWay Function()? mbWay, Map<String, String> Function()? metadata, PostPaymentMethodsRequestMobilepay Function()? mobilepay, PostPaymentMethodsRequestMultibanco Function()? multibanco, PostPaymentMethodsRequestNaverPay Function()? naverPay, PostPaymentMethodsRequestNzBankAccount Function()? nzBankAccount, PostPaymentMethodsRequestOxxo Function()? oxxo, PostPaymentMethodsRequestP24 Function()? p24, PostPaymentMethodsRequestPayByBank Function()? payByBank, PostPaymentMethodsRequestPayco Function()? payco, String Function()? paymentMethod, PostPaymentMethodsRequestPaynow Function()? paynow, PostPaymentMethodsRequestPaypal Function()? paypal, PostPaymentMethodsRequestPayto Function()? payto, PostPaymentMethodsRequestPix Function()? pix, PostPaymentMethodsRequestPromptpay Function()? promptpay, PostPaymentMethodsRequestRadarOptions Function()? radarOptions, PostPaymentMethodsRequestRevolutPay Function()? revolutPay, PostPaymentMethodsRequestSamsungPay Function()? samsungPay, PostPaymentMethodsRequestSatispay Function()? satispay, PostPaymentMethodsRequestSepaDebit Function()? sepaDebit, PostPaymentMethodsRequestSofort Function()? sofort, PostPaymentMethodsRequestSwish Function()? swish, PostPaymentMethodsRequestTwint Function()? twint, PostPaymentMethodsRequestType Function()? type, PostPaymentMethodsRequestUsBankAccount Function()? usBankAccount, PostPaymentMethodsRequestWechatPay Function()? wechatPay, PostPaymentMethodsRequestZip Function()? zip, }) { return PostPaymentMethodsRequest(
  acssDebit: acssDebit != null ? acssDebit() : this.acssDebit,
  affirm: affirm != null ? affirm() : this.affirm,
  afterpayClearpay: afterpayClearpay != null ? afterpayClearpay() : this.afterpayClearpay,
  alipay: alipay != null ? alipay() : this.alipay,
  allowRedisplay: allowRedisplay != null ? allowRedisplay() : this.allowRedisplay,
  alma: alma != null ? alma() : this.alma,
  amazonPay: amazonPay != null ? amazonPay() : this.amazonPay,
  auBecsDebit: auBecsDebit != null ? auBecsDebit() : this.auBecsDebit,
  bacsDebit: bacsDebit != null ? bacsDebit() : this.bacsDebit,
  bancontact: bancontact != null ? bancontact() : this.bancontact,
  billie: billie != null ? billie() : this.billie,
  billingDetails: billingDetails != null ? billingDetails() : this.billingDetails,
  blik: blik != null ? blik() : this.blik,
  boleto: boleto != null ? boleto() : this.boleto,
  card: card != null ? card() : this.card,
  cashapp: cashapp != null ? cashapp() : this.cashapp,
  crypto: crypto != null ? crypto() : this.crypto,
  custom: custom != null ? custom() : this.custom,
  customer: customer != null ? customer() : this.customer,
  customerBalance: customerBalance != null ? customerBalance() : this.customerBalance,
  eps: eps != null ? eps() : this.eps,
  expand: expand != null ? expand() : this.expand,
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
  metadata: metadata != null ? metadata() : this.metadata,
  mobilepay: mobilepay != null ? mobilepay() : this.mobilepay,
  multibanco: multibanco != null ? multibanco() : this.multibanco,
  naverPay: naverPay != null ? naverPay() : this.naverPay,
  nzBankAccount: nzBankAccount != null ? nzBankAccount() : this.nzBankAccount,
  oxxo: oxxo != null ? oxxo() : this.oxxo,
  p24: p24 != null ? p24() : this.p24,
  payByBank: payByBank != null ? payByBank() : this.payByBank,
  payco: payco != null ? payco() : this.payco,
  paymentMethod: paymentMethod != null ? paymentMethod() : this.paymentMethod,
  paynow: paynow != null ? paynow() : this.paynow,
  paypal: paypal != null ? paypal() : this.paypal,
  payto: payto != null ? payto() : this.payto,
  pix: pix != null ? pix() : this.pix,
  promptpay: promptpay != null ? promptpay() : this.promptpay,
  radarOptions: radarOptions != null ? radarOptions() : this.radarOptions,
  revolutPay: revolutPay != null ? revolutPay() : this.revolutPay,
  samsungPay: samsungPay != null ? samsungPay() : this.samsungPay,
  satispay: satispay != null ? satispay() : this.satispay,
  sepaDebit: sepaDebit != null ? sepaDebit() : this.sepaDebit,
  sofort: sofort != null ? sofort() : this.sofort,
  swish: swish != null ? swish() : this.swish,
  twint: twint != null ? twint() : this.twint,
  type: type != null ? type() : this.type,
  usBankAccount: usBankAccount != null ? usBankAccount() : this.usBankAccount,
  wechatPay: wechatPay != null ? wechatPay() : this.wechatPay,
  zip: zip != null ? zip() : this.zip,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodsRequest &&
          acssDebit == other.acssDebit &&
          affirm == other.affirm &&
          afterpayClearpay == other.afterpayClearpay &&
          alipay == other.alipay &&
          allowRedisplay == other.allowRedisplay &&
          alma == other.alma &&
          amazonPay == other.amazonPay &&
          auBecsDebit == other.auBecsDebit &&
          bacsDebit == other.bacsDebit &&
          bancontact == other.bancontact &&
          billie == other.billie &&
          billingDetails == other.billingDetails &&
          blik == other.blik &&
          boleto == other.boleto &&
          card == other.card &&
          cashapp == other.cashapp &&
          crypto == other.crypto &&
          custom == other.custom &&
          customer == other.customer &&
          customerBalance == other.customerBalance &&
          eps == other.eps &&
          listEquals(expand, other.expand) &&
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
          metadata == other.metadata &&
          mobilepay == other.mobilepay &&
          multibanco == other.multibanco &&
          naverPay == other.naverPay &&
          nzBankAccount == other.nzBankAccount &&
          oxxo == other.oxxo &&
          p24 == other.p24 &&
          payByBank == other.payByBank &&
          payco == other.payco &&
          paymentMethod == other.paymentMethod &&
          paynow == other.paynow &&
          paypal == other.paypal &&
          payto == other.payto &&
          pix == other.pix &&
          promptpay == other.promptpay &&
          radarOptions == other.radarOptions &&
          revolutPay == other.revolutPay &&
          samsungPay == other.samsungPay &&
          satispay == other.satispay &&
          sepaDebit == other.sepaDebit &&
          sofort == other.sofort &&
          swish == other.swish &&
          twint == other.twint &&
          type == other.type &&
          usBankAccount == other.usBankAccount &&
          wechatPay == other.wechatPay &&
          zip == other.zip; } 
@override int get hashCode { return Object.hashAll([acssDebit, affirm, afterpayClearpay, alipay, allowRedisplay, alma, amazonPay, auBecsDebit, bacsDebit, bancontact, billie, billingDetails, blik, boleto, card, cashapp, crypto, custom, customer, customerBalance, eps, Object.hashAll(expand ?? const []), fpx, giropay, grabpay, ideal, interacPresent, kakaoPay, klarna, konbini, krCard, link, mbWay, metadata, mobilepay, multibanco, naverPay, nzBankAccount, oxxo, p24, payByBank, payco, paymentMethod, paynow, paypal, payto, pix, promptpay, radarOptions, revolutPay, samsungPay, satispay, sepaDebit, sofort, swish, twint, type, usBankAccount, wechatPay, zip]); } 
@override String toString() { return 'PostPaymentMethodsRequest(acssDebit: $acssDebit, affirm: $affirm, afterpayClearpay: $afterpayClearpay, alipay: $alipay, allowRedisplay: $allowRedisplay, alma: $alma, amazonPay: $amazonPay, auBecsDebit: $auBecsDebit, bacsDebit: $bacsDebit, bancontact: $bancontact, billie: $billie, billingDetails: $billingDetails, blik: $blik, boleto: $boleto, card: $card, cashapp: $cashapp, crypto: $crypto, custom: $custom, customer: $customer, customerBalance: $customerBalance, eps: $eps, expand: $expand, fpx: $fpx, giropay: $giropay, grabpay: $grabpay, ideal: $ideal, interacPresent: $interacPresent, kakaoPay: $kakaoPay, klarna: $klarna, konbini: $konbini, krCard: $krCard, link: $link, mbWay: $mbWay, metadata: $metadata, mobilepay: $mobilepay, multibanco: $multibanco, naverPay: $naverPay, nzBankAccount: $nzBankAccount, oxxo: $oxxo, p24: $p24, payByBank: $payByBank, payco: $payco, paymentMethod: $paymentMethod, paynow: $paynow, paypal: $paypal, payto: $payto, pix: $pix, promptpay: $promptpay, radarOptions: $radarOptions, revolutPay: $revolutPay, samsungPay: $samsungPay, satispay: $satispay, sepaDebit: $sepaDebit, sofort: $sofort, swish: $swish, twint: $twint, type: $type, usBankAccount: $usBankAccount, wechatPay: $wechatPay, zip: $zip)'; } 
 }
