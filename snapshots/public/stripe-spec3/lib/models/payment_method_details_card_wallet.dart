// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_details_card_wallet_amex_express_checkout.dart';import 'payment_method_details_card_wallet_apple_pay.dart';import 'payment_method_details_card_wallet_google_pay.dart';import 'payment_method_details_card_wallet_link.dart';import 'payment_method_details_card_wallet_masterpass.dart';import 'payment_method_details_card_wallet_samsung_pay.dart';import 'payment_method_details_card_wallet_visa_checkout.dart';/// The type of the card wallet, one of `amex_express_checkout`, `apple_pay`, `google_pay`, `masterpass`, `samsung_pay`, `visa_checkout`, or `link`. An additional hash is included on the Wallet subhash with a name matching this value. It contains additional information specific to the card wallet type.
@immutable final class PaymentMethodDetailsCardWalletType {const PaymentMethodDetailsCardWalletType._(this.value);

factory PaymentMethodDetailsCardWalletType.fromJson(String json) { return switch (json) {
  'amex_express_checkout' => amexExpressCheckout,
  'apple_pay' => applePay,
  'google_pay' => googlePay,
  'link' => link,
  'masterpass' => masterpass,
  'samsung_pay' => samsungPay,
  'visa_checkout' => visaCheckout,
  _ => PaymentMethodDetailsCardWalletType._(json),
}; }

static const PaymentMethodDetailsCardWalletType amexExpressCheckout = PaymentMethodDetailsCardWalletType._('amex_express_checkout');

static const PaymentMethodDetailsCardWalletType applePay = PaymentMethodDetailsCardWalletType._('apple_pay');

static const PaymentMethodDetailsCardWalletType googlePay = PaymentMethodDetailsCardWalletType._('google_pay');

static const PaymentMethodDetailsCardWalletType link = PaymentMethodDetailsCardWalletType._('link');

static const PaymentMethodDetailsCardWalletType masterpass = PaymentMethodDetailsCardWalletType._('masterpass');

static const PaymentMethodDetailsCardWalletType samsungPay = PaymentMethodDetailsCardWalletType._('samsung_pay');

static const PaymentMethodDetailsCardWalletType visaCheckout = PaymentMethodDetailsCardWalletType._('visa_checkout');

static const List<PaymentMethodDetailsCardWalletType> values = [amexExpressCheckout, applePay, googlePay, link, masterpass, samsungPay, visaCheckout];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodDetailsCardWalletType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsCardWalletType($value)'; } 
 }
/// 
@immutable final class PaymentMethodDetailsCardWallet {const PaymentMethodDetailsCardWallet({required this.type, this.amexExpressCheckout, this.applePay, this.dynamicLast4, this.googlePay, this.link, this.masterpass, this.samsungPay, this.visaCheckout, });

factory PaymentMethodDetailsCardWallet.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsCardWallet(
  amexExpressCheckout: json['amex_express_checkout'] != null ? PaymentMethodDetailsCardWalletAmexExpressCheckout.fromJson(json['amex_express_checkout'] as Map<String, dynamic>) : null,
  applePay: json['apple_pay'] != null ? PaymentMethodDetailsCardWalletApplePay.fromJson(json['apple_pay'] as Map<String, dynamic>) : null,
  dynamicLast4: json['dynamic_last4'] as String?,
  googlePay: json['google_pay'] != null ? PaymentMethodDetailsCardWalletGooglePay.fromJson(json['google_pay'] as Map<String, dynamic>) : null,
  link: json['link'] != null ? PaymentMethodDetailsCardWalletLink.fromJson(json['link'] as Map<String, dynamic>) : null,
  masterpass: json['masterpass'] != null ? PaymentMethodDetailsCardWalletMasterpass.fromJson(json['masterpass'] as Map<String, dynamic>) : null,
  samsungPay: json['samsung_pay'] != null ? PaymentMethodDetailsCardWalletSamsungPay.fromJson(json['samsung_pay'] as Map<String, dynamic>) : null,
  type: PaymentMethodDetailsCardWalletType.fromJson(json['type'] as String),
  visaCheckout: json['visa_checkout'] != null ? PaymentMethodDetailsCardWalletVisaCheckout.fromJson(json['visa_checkout'] as Map<String, dynamic>) : null,
); }

final PaymentMethodDetailsCardWalletAmexExpressCheckout? amexExpressCheckout;

final PaymentMethodDetailsCardWalletApplePay? applePay;

/// (For tokenized numbers only.) The last four digits of the device account number.
final String? dynamicLast4;

final PaymentMethodDetailsCardWalletGooglePay? googlePay;

final PaymentMethodDetailsCardWalletLink? link;

final PaymentMethodDetailsCardWalletMasterpass? masterpass;

final PaymentMethodDetailsCardWalletSamsungPay? samsungPay;

/// The type of the card wallet, one of `amex_express_checkout`, `apple_pay`, `google_pay`, `masterpass`, `samsung_pay`, `visa_checkout`, or `link`. An additional hash is included on the Wallet subhash with a name matching this value. It contains additional information specific to the card wallet type.
final PaymentMethodDetailsCardWalletType type;

final PaymentMethodDetailsCardWalletVisaCheckout? visaCheckout;

Map<String, dynamic> toJson() { return {
  if (amexExpressCheckout != null) 'amex_express_checkout': amexExpressCheckout?.toJson(),
  if (applePay != null) 'apple_pay': applePay?.toJson(),
  'dynamic_last4': ?dynamicLast4,
  if (googlePay != null) 'google_pay': googlePay?.toJson(),
  if (link != null) 'link': link?.toJson(),
  if (masterpass != null) 'masterpass': masterpass?.toJson(),
  if (samsungPay != null) 'samsung_pay': samsungPay?.toJson(),
  'type': type.toJson(),
  if (visaCheckout != null) 'visa_checkout': visaCheckout?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PaymentMethodDetailsCardWallet copyWith({PaymentMethodDetailsCardWalletAmexExpressCheckout Function()? amexExpressCheckout, PaymentMethodDetailsCardWalletApplePay Function()? applePay, String? Function()? dynamicLast4, PaymentMethodDetailsCardWalletGooglePay Function()? googlePay, PaymentMethodDetailsCardWalletLink Function()? link, PaymentMethodDetailsCardWalletMasterpass Function()? masterpass, PaymentMethodDetailsCardWalletSamsungPay Function()? samsungPay, PaymentMethodDetailsCardWalletType? type, PaymentMethodDetailsCardWalletVisaCheckout Function()? visaCheckout, }) { return PaymentMethodDetailsCardWallet(
  amexExpressCheckout: amexExpressCheckout != null ? amexExpressCheckout() : this.amexExpressCheckout,
  applePay: applePay != null ? applePay() : this.applePay,
  dynamicLast4: dynamicLast4 != null ? dynamicLast4() : this.dynamicLast4,
  googlePay: googlePay != null ? googlePay() : this.googlePay,
  link: link != null ? link() : this.link,
  masterpass: masterpass != null ? masterpass() : this.masterpass,
  samsungPay: samsungPay != null ? samsungPay() : this.samsungPay,
  type: type ?? this.type,
  visaCheckout: visaCheckout != null ? visaCheckout() : this.visaCheckout,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsCardWallet &&
          amexExpressCheckout == other.amexExpressCheckout &&
          applePay == other.applePay &&
          dynamicLast4 == other.dynamicLast4 &&
          googlePay == other.googlePay &&
          link == other.link &&
          masterpass == other.masterpass &&
          samsungPay == other.samsungPay &&
          type == other.type &&
          visaCheckout == other.visaCheckout; } 
@override int get hashCode { return Object.hash(amexExpressCheckout, applePay, dynamicLast4, googlePay, link, masterpass, samsungPay, type, visaCheckout); } 
@override String toString() { return 'PaymentMethodDetailsCardWallet(amexExpressCheckout: $amexExpressCheckout, applePay: $applePay, dynamicLast4: $dynamicLast4, googlePay: $googlePay, link: $link, masterpass: $masterpass, samsungPay: $samsungPay, type: $type, visaCheckout: $visaCheckout)'; } 
 }
