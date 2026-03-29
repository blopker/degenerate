// GENERATED CODE - DO NOT MODIFY BY HAND

/// If this is a `payto` PaymentMethod, this hash contains details about the PayTo payment method.
final class PostPaymentMethodsPaymentMethodRequestPayto {const PostPaymentMethodsPaymentMethodRequestPayto({this.accountNumber, this.bsbNumber, this.payId, });

factory PostPaymentMethodsPaymentMethodRequestPayto.fromJson(Map<String, dynamic> json) { return PostPaymentMethodsPaymentMethodRequestPayto(
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
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentMethodsPaymentMethodRequestPayto copyWith({String Function()? accountNumber, String Function()? bsbNumber, String Function()? payId, }) { return PostPaymentMethodsPaymentMethodRequestPayto(
  accountNumber: accountNumber != null ? accountNumber() : this.accountNumber,
  bsbNumber: bsbNumber != null ? bsbNumber() : this.bsbNumber,
  payId: payId != null ? payId() : this.payId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodsPaymentMethodRequestPayto &&
          accountNumber == other.accountNumber &&
          bsbNumber == other.bsbNumber &&
          payId == other.payId; } 
@override int get hashCode { return Object.hash(accountNumber, bsbNumber, payId); } 
@override String toString() { return 'PostPaymentMethodsPaymentMethodRequestPayto(accountNumber: $accountNumber, bsbNumber: $bsbNumber, payId: $payId)'; } 
 }
