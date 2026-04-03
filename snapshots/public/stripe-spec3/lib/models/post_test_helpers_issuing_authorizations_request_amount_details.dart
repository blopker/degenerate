// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
@immutable final class PostTestHelpersIssuingAuthorizationsRequestAmountDetails {const PostTestHelpersIssuingAuthorizationsRequestAmountDetails({this.atmFee, this.cashbackAmount, });

factory PostTestHelpersIssuingAuthorizationsRequestAmountDetails.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingAuthorizationsRequestAmountDetails(
  atmFee: json['atm_fee'] != null ? (json['atm_fee'] as num).toInt() : null,
  cashbackAmount: json['cashback_amount'] != null ? (json['cashback_amount'] as num).toInt() : null,
); }

final int? atmFee;

final int? cashbackAmount;

Map<String, dynamic> toJson() { return {
  'atm_fee': ?atmFee,
  'cashback_amount': ?cashbackAmount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'atm_fee', 'cashback_amount'}.contains(key)); } 
PostTestHelpersIssuingAuthorizationsRequestAmountDetails copyWith({int Function()? atmFee, int Function()? cashbackAmount, }) { return PostTestHelpersIssuingAuthorizationsRequestAmountDetails(
  atmFee: atmFee != null ? atmFee() : this.atmFee,
  cashbackAmount: cashbackAmount != null ? cashbackAmount() : this.cashbackAmount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingAuthorizationsRequestAmountDetails &&
          atmFee == other.atmFee &&
          cashbackAmount == other.cashbackAmount; } 
@override int get hashCode { return Object.hash(atmFee, cashbackAmount); } 
@override String toString() { return 'PostTestHelpersIssuingAuthorizationsRequestAmountDetails(atmFee: $atmFee, cashbackAmount: $cashbackAmount)'; } 
 }
