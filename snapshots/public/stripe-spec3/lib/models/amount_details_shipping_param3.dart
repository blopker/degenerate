// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'amount_details_shipping_param3_amount.dart';import 'amount_details_shipping_param3_from_postal_code.dart';import 'amount_details_shipping_param3_to_postal_code.dart';@immutable final class AmountDetailsShippingParam3 {const AmountDetailsShippingParam3({this.amount, this.fromPostalCode, this.toPostalCode, });

factory AmountDetailsShippingParam3.fromJson(Map<String, dynamic> json) { return AmountDetailsShippingParam3(
  amount: json['amount'] != null ? OneOf2.parse(json['amount'], fromA: (v) => (v as num).toInt(), fromB: (v) => AmountDetailsShippingParam3AmountVariant2.fromJson(v as String),) : null,
  fromPostalCode: json['from_postal_code'] != null ? OneOf2.parse(json['from_postal_code'], fromA: (v) => v as String, fromB: (v) => AmountDetailsShippingParam3FromPostalCodeVariant2.fromJson(v as String),) : null,
  toPostalCode: json['to_postal_code'] != null ? OneOf2.parse(json['to_postal_code'], fromA: (v) => v as String, fromB: (v) => AmountDetailsShippingParam3ToPostalCodeVariant2.fromJson(v as String),) : null,
); }

final AmountDetailsShippingParam3Amount? amount;

final AmountDetailsShippingParam3FromPostalCode? fromPostalCode;

final AmountDetailsShippingParam3ToPostalCode? toPostalCode;

Map<String, dynamic> toJson() { return {
  if (amount != null) 'amount': amount?.toJson(),
  if (fromPostalCode != null) 'from_postal_code': fromPostalCode?.toJson(),
  if (toPostalCode != null) 'to_postal_code': toPostalCode?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount', 'from_postal_code', 'to_postal_code'}.contains(key)); } 
AmountDetailsShippingParam3 copyWith({AmountDetailsShippingParam3Amount Function()? amount, AmountDetailsShippingParam3FromPostalCode Function()? fromPostalCode, AmountDetailsShippingParam3ToPostalCode Function()? toPostalCode, }) { return AmountDetailsShippingParam3(
  amount: amount != null ? amount() : this.amount,
  fromPostalCode: fromPostalCode != null ? fromPostalCode() : this.fromPostalCode,
  toPostalCode: toPostalCode != null ? toPostalCode() : this.toPostalCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AmountDetailsShippingParam3 &&
          amount == other.amount &&
          fromPostalCode == other.fromPostalCode &&
          toPostalCode == other.toPostalCode; } 
@override int get hashCode { return Object.hash(amount, fromPostalCode, toPostalCode); } 
@override String toString() { return 'AmountDetailsShippingParam3(amount: $amount, fromPostalCode: $fromPostalCode, toPostalCode: $toPostalCode)'; } 
 }
