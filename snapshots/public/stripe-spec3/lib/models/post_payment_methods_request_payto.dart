// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// If this is a `payto` PaymentMethod, this hash contains details about the PayTo payment method.
@immutable final class PostPaymentMethodsRequestPayto {const PostPaymentMethodsRequestPayto({this.accountNumber, this.bsbNumber, this.payId, });

factory PostPaymentMethodsRequestPayto.fromJson(Map<String, dynamic> json) { return PostPaymentMethodsRequestPayto(
  accountNumber: json['account_number'] as String?,
  bsbNumber: json['bsb_number'] as String?,
  payId: json['pay_id'] as String?,
); }

final String? accountNumber;

final String? bsbNumber;

final String? payId;

Map<String, dynamic> toJson() { return {
  'account_number': ?accountNumber,
  'bsb_number': ?bsbNumber,
  'pay_id': ?payId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_number', 'bsb_number', 'pay_id'}.contains(key)); } 
PostPaymentMethodsRequestPayto copyWith({String Function()? accountNumber, String Function()? bsbNumber, String Function()? payId, }) { return PostPaymentMethodsRequestPayto(
  accountNumber: accountNumber != null ? accountNumber() : this.accountNumber,
  bsbNumber: bsbNumber != null ? bsbNumber() : this.bsbNumber,
  payId: payId != null ? payId() : this.payId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodsRequestPayto &&
          accountNumber == other.accountNumber &&
          bsbNumber == other.bsbNumber &&
          payId == other.payId; } 
@override int get hashCode { return Object.hash(accountNumber, bsbNumber, payId); } 
@override String toString() { return 'PostPaymentMethodsRequestPayto(accountNumber: $accountNumber, bsbNumber: $bsbNumber, payId: $payId)'; } 
 }
