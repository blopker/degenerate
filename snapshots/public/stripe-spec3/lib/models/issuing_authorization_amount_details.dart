// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class IssuingAuthorizationAmountDetails {const IssuingAuthorizationAmountDetails({this.atmFee, this.cashbackAmount, });

factory IssuingAuthorizationAmountDetails.fromJson(Map<String, dynamic> json) { return IssuingAuthorizationAmountDetails(
  atmFee: json['atm_fee'] != null ? (json['atm_fee'] as num).toInt() : null,
  cashbackAmount: json['cashback_amount'] != null ? (json['cashback_amount'] as num).toInt() : null,
); }

/// The fee charged by the ATM for the cash withdrawal.
final int? atmFee;

/// The amount of cash requested by the cardholder.
final int? cashbackAmount;

Map<String, dynamic> toJson() { return {
  'atm_fee': ?atmFee,
  'cashback_amount': ?cashbackAmount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'atm_fee', 'cashback_amount'}.contains(key)); } 
IssuingAuthorizationAmountDetails copyWith({int? Function()? atmFee, int? Function()? cashbackAmount, }) { return IssuingAuthorizationAmountDetails(
  atmFee: atmFee != null ? atmFee() : this.atmFee,
  cashbackAmount: cashbackAmount != null ? cashbackAmount() : this.cashbackAmount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingAuthorizationAmountDetails &&
          atmFee == other.atmFee &&
          cashbackAmount == other.cashbackAmount; } 
@override int get hashCode { return Object.hash(atmFee, cashbackAmount); } 
@override String toString() { return 'IssuingAuthorizationAmountDetails(atmFee: $atmFee, cashbackAmount: $cashbackAmount)'; } 
 }
