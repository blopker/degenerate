// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCouponsCouponRequestCurrencyOptionsValue {const PostCouponsCouponRequestCurrencyOptionsValue({required this.amountOff});

factory PostCouponsCouponRequestCurrencyOptionsValue.fromJson(Map<String, dynamic> json) { return PostCouponsCouponRequestCurrencyOptionsValue(
  amountOff: (json['amount_off'] as num).toInt(),
); }

final int amountOff;

Map<String, dynamic> toJson() { return {
  'amount_off': amountOff,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount_off') && json['amount_off'] is num; } 
PostCouponsCouponRequestCurrencyOptionsValue copyWith({int? amountOff}) { return PostCouponsCouponRequestCurrencyOptionsValue(
  amountOff: amountOff ?? this.amountOff,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCouponsCouponRequestCurrencyOptionsValue &&
          amountOff == other.amountOff; } 
@override int get hashCode { return amountOff.hashCode; } 
@override String toString() { return 'PostCouponsCouponRequestCurrencyOptionsValue(amountOff: $amountOff)'; } 
 }
