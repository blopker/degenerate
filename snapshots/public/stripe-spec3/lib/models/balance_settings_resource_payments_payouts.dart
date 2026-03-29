// GENERATED CODE - DO NOT MODIFY BY HAND

import 'balance_settings_resource_payouts.dart';/// Settings specific to the account's payouts.
final class BalanceSettingsResourcePaymentsPayouts {const BalanceSettingsResourcePaymentsPayouts({this.balanceSettingsResourcePayouts});

factory BalanceSettingsResourcePaymentsPayouts.fromJson(Map<String, dynamic> json) { return BalanceSettingsResourcePaymentsPayouts(
  balanceSettingsResourcePayouts: BalanceSettingsResourcePayouts.canParse(json) ? BalanceSettingsResourcePayouts.fromJson(json) : null,
); }

final BalanceSettingsResourcePayouts? balanceSettingsResourcePayouts;

/// At least one variant must be present.
bool get isValid { return balanceSettingsResourcePayouts != null; } 
Map<String, dynamic> toJson() { return {
  ...?balanceSettingsResourcePayouts?.toJson(),
}; } 
 }
