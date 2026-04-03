// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payments_primitives_payment_records_resource_payment_method_card_details_resource_wallet_resource_apple_pay.dart';import 'payments_primitives_payment_records_resource_payment_method_card_details_resource_wallet_resource_google_pay.dart';/// 
@immutable final class PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWallet {const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWallet({required this.type, this.applePay, this.dynamicLast4, this.googlePay, });

factory PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWallet.fromJson(Map<String, dynamic> json) { return PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWallet(
  applePay: json['apple_pay'] != null ? PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWalletResourceApplePay.fromJson(json['apple_pay'] as Map<String, dynamic>) : null,
  dynamicLast4: json['dynamic_last4'] as String?,
  googlePay: json['google_pay'] != null ? PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWalletResourceGooglePay.fromJson(json['google_pay'] as Map<String, dynamic>) : null,
  type: json['type'] as String,
); }

final PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWalletResourceApplePay? applePay;

/// (For tokenized numbers only.) The last four digits of the device account number.
final String? dynamicLast4;

final PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWalletResourceGooglePay? googlePay;

/// The type of the card wallet, one of `apple_pay` or `google_pay`. An additional hash is included on the Wallet subhash with a name matching this value. It contains additional information specific to the card wallet type.
final String type;

Map<String, dynamic> toJson() { return {
  if (applePay != null) 'apple_pay': applePay?.toJson(),
  'dynamic_last4': ?dynamicLast4,
  if (googlePay != null) 'google_pay': googlePay?.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWallet copyWith({PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWalletResourceApplePay Function()? applePay, String Function()? dynamicLast4, PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWalletResourceGooglePay Function()? googlePay, String? type, }) { return PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWallet(
  applePay: applePay != null ? applePay() : this.applePay,
  dynamicLast4: dynamicLast4 != null ? dynamicLast4() : this.dynamicLast4,
  googlePay: googlePay != null ? googlePay() : this.googlePay,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWallet &&
          applePay == other.applePay &&
          dynamicLast4 == other.dynamicLast4 &&
          googlePay == other.googlePay &&
          type == other.type; } 
@override int get hashCode { return Object.hash(applePay, dynamicLast4, googlePay, type); } 
@override String toString() { return 'PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWallet(applePay: $applePay, dynamicLast4: $dynamicLast4, googlePay: $googlePay, type: $type)'; } 
 }
