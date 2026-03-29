// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'amount_details_shipping_param_amount.dart';import 'amount_details_shipping_param_from_postal_code.dart';import 'amount_details_shipping_param_to_postal_code.dart';final class AmountDetailsShippingParam {const AmountDetailsShippingParam({this.amount, this.fromPostalCode, this.toPostalCode, });

factory AmountDetailsShippingParam.fromJson(Map<String, dynamic> json) { return AmountDetailsShippingParam(
  amount: json['amount'] != null ? OneOf2.parse(json['amount'], fromA: (v) => (v as num).toInt(), fromB: (v) => AmountDetailsShippingParamAmountVariant2.fromJson(v as String),) : null,
  fromPostalCode: json['from_postal_code'] != null ? OneOf2.parse(json['from_postal_code'], fromA: (v) => v as String, fromB: (v) => AmountDetailsShippingParamFromPostalCodeVariant2.fromJson(v as String),) : null,
  toPostalCode: json['to_postal_code'] != null ? OneOf2.parse(json['to_postal_code'], fromA: (v) => v as String, fromB: (v) => AmountDetailsShippingParamToPostalCodeVariant2.fromJson(v as String),) : null,
); }

final AmountDetailsShippingParamAmount? amount;

final AmountDetailsShippingParamFromPostalCode? fromPostalCode;

final AmountDetailsShippingParamToPostalCode? toPostalCode;

Map<String, dynamic> toJson() { return {
  if (amount != null) 'amount': amount?.toJson(),
  if (fromPostalCode != null) 'from_postal_code': fromPostalCode?.toJson(),
  if (toPostalCode != null) 'to_postal_code': toPostalCode?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AmountDetailsShippingParam copyWith({AmountDetailsShippingParamAmount Function()? amount, AmountDetailsShippingParamFromPostalCode Function()? fromPostalCode, AmountDetailsShippingParamToPostalCode Function()? toPostalCode, }) { return AmountDetailsShippingParam(
  amount: amount != null ? amount() : this.amount,
  fromPostalCode: fromPostalCode != null ? fromPostalCode() : this.fromPostalCode,
  toPostalCode: toPostalCode != null ? toPostalCode() : this.toPostalCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AmountDetailsShippingParam &&
          amount == other.amount &&
          fromPostalCode == other.fromPostalCode &&
          toPostalCode == other.toPostalCode; } 
@override int get hashCode { return Object.hash(amount, fromPostalCode, toPostalCode); } 
@override String toString() { return 'AmountDetailsShippingParam(amount: $amount, fromPostalCode: $fromPostalCode, toPostalCode: $toPostalCode)'; } 
 }
