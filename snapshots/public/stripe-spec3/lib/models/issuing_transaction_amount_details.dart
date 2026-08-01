// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class IssuingTransactionAmountDetails {const IssuingTransactionAmountDetails({this.atmFee = const Omittable.absent(), this.cashbackAmount = const Omittable.absent(), });

factory IssuingTransactionAmountDetails.fromJson(Map<String, dynamic> json) { return IssuingTransactionAmountDetails(
  atmFee: json.containsKey('atm_fee') ? Omittable(json['atm_fee'] != null ? (json['atm_fee'] as num).toInt() : null) : const Omittable.absent(),
  cashbackAmount: json.containsKey('cashback_amount') ? Omittable(json['cashback_amount'] != null ? (json['cashback_amount'] as num).toInt() : null) : const Omittable.absent(),
); }

/// The fee charged by the ATM for the cash withdrawal.
final Omittable<int?> atmFee;

/// The amount of cash requested by the cardholder.
final Omittable<int?> cashbackAmount;

Map<String, dynamic> toJson() { return {
  if (atmFee.isPresent) 'atm_fee': atmFee.value,
  if (cashbackAmount.isPresent) 'cashback_amount': cashbackAmount.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'atm_fee', 'cashback_amount'}.contains(key)); } 
IssuingTransactionAmountDetails copyWith({Omittable<int?>? atmFee, Omittable<int?>? cashbackAmount, }) { return IssuingTransactionAmountDetails(
  atmFee: atmFee ?? this.atmFee,
  cashbackAmount: cashbackAmount ?? this.cashbackAmount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingTransactionAmountDetails &&
          atmFee == other.atmFee &&
          cashbackAmount == other.cashbackAmount; } 
@override int get hashCode { return Object.hash(atmFee, cashbackAmount); } 
@override String toString() { return 'IssuingTransactionAmountDetails(atmFee: $atmFee, cashbackAmount: $cashbackAmount)'; } 
 }
