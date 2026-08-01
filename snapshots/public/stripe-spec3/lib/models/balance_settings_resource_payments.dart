// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'balance_settings_resource_payouts.dart';import 'balance_settings_resource_settlement_timing.dart';/// 
@immutable final class BalanceSettingsResourcePayments {const BalanceSettingsResourcePayments({required this.settlementTiming, this.debitNegativeBalances = const Omittable.absent(), this.payouts = const Omittable.absent(), });

factory BalanceSettingsResourcePayments.fromJson(Map<String, dynamic> json) { return BalanceSettingsResourcePayments(
  debitNegativeBalances: json.containsKey('debit_negative_balances') ? Omittable(json['debit_negative_balances'] as bool?) : const Omittable.absent(),
  payouts: json.containsKey('payouts') ? Omittable(json['payouts'] != null ? BalanceSettingsResourcePayouts.fromJson(json['payouts'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  settlementTiming: BalanceSettingsResourceSettlementTiming.fromJson(json['settlement_timing'] as Map<String, dynamic>),
); }

/// A Boolean indicating if Stripe should try to reclaim negative balances from an attached bank account. See [Understanding Connect account balances](/connect/account-balances) for details. The default value is `false` when [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts, otherwise `true`.
final Omittable<bool?> debitNegativeBalances;

/// Settings specific to the account's payouts.
final Omittable<BalanceSettingsResourcePayouts?> payouts;

final BalanceSettingsResourceSettlementTiming settlementTiming;

Map<String, dynamic> toJson() { return {
  if (debitNegativeBalances.isPresent) 'debit_negative_balances': debitNegativeBalances.value,
  if (payouts.isPresent) 'payouts': payouts.value?.toJson(),
  'settlement_timing': settlementTiming.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('settlement_timing'); } 
BalanceSettingsResourcePayments copyWith({Omittable<bool?>? debitNegativeBalances, Omittable<BalanceSettingsResourcePayouts?>? payouts, BalanceSettingsResourceSettlementTiming? settlementTiming, }) { return BalanceSettingsResourcePayments(
  debitNegativeBalances: debitNegativeBalances ?? this.debitNegativeBalances,
  payouts: payouts ?? this.payouts,
  settlementTiming: settlementTiming ?? this.settlementTiming,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BalanceSettingsResourcePayments &&
          debitNegativeBalances == other.debitNegativeBalances &&
          payouts == other.payouts &&
          settlementTiming == other.settlementTiming; } 
@override int get hashCode { return Object.hash(debitNegativeBalances, payouts, settlementTiming); } 
@override String toString() { return 'BalanceSettingsResourcePayments(debitNegativeBalances: $debitNegativeBalances, payouts: $payouts, settlementTiming: $settlementTiming)'; } 
 }
