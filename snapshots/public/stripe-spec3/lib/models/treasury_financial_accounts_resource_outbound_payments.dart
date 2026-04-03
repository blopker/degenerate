// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'treasury_financial_accounts_resource_outbound_ach_toggle_settings.dart';import 'treasury_financial_accounts_resource_toggle_settings.dart';/// Settings related to Outbound Payments features on a Financial Account
@immutable final class TreasuryFinancialAccountsResourceOutboundPayments {const TreasuryFinancialAccountsResourceOutboundPayments({this.ach, this.usDomesticWire, });

factory TreasuryFinancialAccountsResourceOutboundPayments.fromJson(Map<String, dynamic> json) { return TreasuryFinancialAccountsResourceOutboundPayments(
  ach: json['ach'] != null ? TreasuryFinancialAccountsResourceOutboundAchToggleSettings.fromJson(json['ach'] as Map<String, dynamic>) : null,
  usDomesticWire: json['us_domestic_wire'] != null ? TreasuryFinancialAccountsResourceToggleSettings.fromJson(json['us_domestic_wire'] as Map<String, dynamic>) : null,
); }

final TreasuryFinancialAccountsResourceOutboundAchToggleSettings? ach;

final TreasuryFinancialAccountsResourceToggleSettings? usDomesticWire;

Map<String, dynamic> toJson() { return {
  if (ach != null) 'ach': ach?.toJson(),
  if (usDomesticWire != null) 'us_domestic_wire': usDomesticWire?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ach', 'us_domestic_wire'}.contains(key)); } 
TreasuryFinancialAccountsResourceOutboundPayments copyWith({TreasuryFinancialAccountsResourceOutboundAchToggleSettings Function()? ach, TreasuryFinancialAccountsResourceToggleSettings Function()? usDomesticWire, }) { return TreasuryFinancialAccountsResourceOutboundPayments(
  ach: ach != null ? ach() : this.ach,
  usDomesticWire: usDomesticWire != null ? usDomesticWire() : this.usDomesticWire,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryFinancialAccountsResourceOutboundPayments &&
          ach == other.ach &&
          usDomesticWire == other.usDomesticWire; } 
@override int get hashCode { return Object.hash(ach, usDomesticWire); } 
@override String toString() { return 'TreasuryFinancialAccountsResourceOutboundPayments(ach: $ach, usDomesticWire: $usDomesticWire)'; } 
 }
