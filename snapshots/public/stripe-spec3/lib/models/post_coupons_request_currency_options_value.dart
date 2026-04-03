// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCouponsRequestCurrencyOptionsValue {const PostCouponsRequestCurrencyOptionsValue({required this.amountOff});

factory PostCouponsRequestCurrencyOptionsValue.fromJson(Map<String, dynamic> json) { return PostCouponsRequestCurrencyOptionsValue(
  amountOff: (json['amount_off'] as num).toInt(),
); }

final int amountOff;

Map<String, dynamic> toJson() { return {
  'amount_off': amountOff,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount_off') && json['amount_off'] is num; } 
PostCouponsRequestCurrencyOptionsValue copyWith({int? amountOff}) { return PostCouponsRequestCurrencyOptionsValue(
  amountOff: amountOff ?? this.amountOff,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCouponsRequestCurrencyOptionsValue &&
          amountOff == other.amountOff; } 
@override int get hashCode { return amountOff.hashCode; } 
@override String toString() { return 'PostCouponsRequestCurrencyOptionsValue(amountOff: $amountOff)'; } 
 }
