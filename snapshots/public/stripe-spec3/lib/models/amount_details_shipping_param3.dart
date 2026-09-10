// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'amount_details_shipping_param3_amount.dart';import 'amount_details_shipping_param3_from_postal_code.dart';import 'amount_details_shipping_param3_to_postal_code.dart';@immutable final class AmountDetailsShippingParam3 {const AmountDetailsShippingParam3({this.amount, this.fromPostalCode, this.toPostalCode, });

factory AmountDetailsShippingParam3.fromJson(Map<String, dynamic> json) {return AmountDetailsShippingParam3(
  amount: json['amount'] != null ? AmountDetailsShippingParam3Amount.fromJson(json['amount']) : null,
  fromPostalCode: json['from_postal_code'] != null ? AmountDetailsShippingParam3FromPostalCode.fromJson(json['from_postal_code']) : null,
  toPostalCode: json['to_postal_code'] != null ? AmountDetailsShippingParam3ToPostalCode.fromJson(json['to_postal_code']) : null,
);}

final AmountDetailsShippingParam3Amount? amount;

final AmountDetailsShippingParam3FromPostalCode? fromPostalCode;

final AmountDetailsShippingParam3ToPostalCode? toPostalCode;

Map<String, dynamic> toJson() {return {
  if (amount != null) 'amount': amount?.toJson(),
  if (fromPostalCode != null) 'from_postal_code': fromPostalCode?.toJson(),
  if (toPostalCode != null) 'to_postal_code': toPostalCode?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'amount', 'from_postal_code', 'to_postal_code'}.contains(key));}
AmountDetailsShippingParam3 copyWith({AmountDetailsShippingParam3Amount? Function()? amount, AmountDetailsShippingParam3FromPostalCode? Function()? fromPostalCode, AmountDetailsShippingParam3ToPostalCode? Function()? toPostalCode, }) {return AmountDetailsShippingParam3(
  amount: amount != null ? amount() : this.amount,
  fromPostalCode: fromPostalCode != null ? fromPostalCode() : this.fromPostalCode,
  toPostalCode: toPostalCode != null ? toPostalCode() : this.toPostalCode,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AmountDetailsShippingParam3 &&
          amount == other.amount &&
          fromPostalCode == other.fromPostalCode &&
          toPostalCode == other.toPostalCode;}
@override int get hashCode {return Object.hash(amount, fromPostalCode, toPostalCode);}
@override String toString() {return 'AmountDetailsShippingParam3(amount: $amount, fromPostalCode: $fromPostalCode, toPostalCode: $toPostalCode)';}
}
