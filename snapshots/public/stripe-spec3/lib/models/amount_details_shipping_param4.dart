// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'amount_details_shipping_param4_amount.dart';import 'amount_details_shipping_param4_from_postal_code.dart';import 'amount_details_shipping_param4_to_postal_code.dart';@immutable final class AmountDetailsShippingParam4 {const AmountDetailsShippingParam4({this.amount, this.fromPostalCode, this.toPostalCode, });

factory AmountDetailsShippingParam4.fromJson(Map<String, dynamic> json) { return AmountDetailsShippingParam4(
  amount: json['amount'] != null ? AmountDetailsShippingParam4Amount.fromJson(json['amount']) : null,
  fromPostalCode: json['from_postal_code'] != null ? AmountDetailsShippingParam4FromPostalCode.fromJson(json['from_postal_code']) : null,
  toPostalCode: json['to_postal_code'] != null ? AmountDetailsShippingParam4ToPostalCode.fromJson(json['to_postal_code']) : null,
); }

final AmountDetailsShippingParam4Amount? amount;

final AmountDetailsShippingParam4FromPostalCode? fromPostalCode;

final AmountDetailsShippingParam4ToPostalCode? toPostalCode;

Map<String, dynamic> toJson() { return {
  if (amount != null) 'amount': amount?.toJson(),
  if (fromPostalCode != null) 'from_postal_code': fromPostalCode?.toJson(),
  if (toPostalCode != null) 'to_postal_code': toPostalCode?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount', 'from_postal_code', 'to_postal_code'}.contains(key)); } 
AmountDetailsShippingParam4 copyWith({AmountDetailsShippingParam4Amount? Function()? amount, AmountDetailsShippingParam4FromPostalCode? Function()? fromPostalCode, AmountDetailsShippingParam4ToPostalCode? Function()? toPostalCode, }) { return AmountDetailsShippingParam4(
  amount: amount != null ? amount() : this.amount,
  fromPostalCode: fromPostalCode != null ? fromPostalCode() : this.fromPostalCode,
  toPostalCode: toPostalCode != null ? toPostalCode() : this.toPostalCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AmountDetailsShippingParam4 &&
          amount == other.amount &&
          fromPostalCode == other.fromPostalCode &&
          toPostalCode == other.toPostalCode; } 
@override int get hashCode { return Object.hash(amount, fromPostalCode, toPostalCode); } 
@override String toString() { return 'AmountDetailsShippingParam4(amount: $amount, fromPostalCode: $fromPostalCode, toPostalCode: $toPostalCode)'; } 
 }
