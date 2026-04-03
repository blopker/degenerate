// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_treasury_financial_accounts_request_features_outbound_payments_ach.dart';import 'post_treasury_financial_accounts_request_features_outbound_payments_us_domestic_wire.dart';@immutable final class PostTreasuryFinancialAccountsRequestFeaturesOutboundPayments {const PostTreasuryFinancialAccountsRequestFeaturesOutboundPayments({this.ach, this.usDomesticWire, });

factory PostTreasuryFinancialAccountsRequestFeaturesOutboundPayments.fromJson(Map<String, dynamic> json) { return PostTreasuryFinancialAccountsRequestFeaturesOutboundPayments(
  ach: json['ach'] != null ? PostTreasuryFinancialAccountsRequestFeaturesOutboundPaymentsAch.fromJson(json['ach'] as Map<String, dynamic>) : null,
  usDomesticWire: json['us_domestic_wire'] != null ? PostTreasuryFinancialAccountsRequestFeaturesOutboundPaymentsUsDomesticWire.fromJson(json['us_domestic_wire'] as Map<String, dynamic>) : null,
); }

final PostTreasuryFinancialAccountsRequestFeaturesOutboundPaymentsAch? ach;

final PostTreasuryFinancialAccountsRequestFeaturesOutboundPaymentsUsDomesticWire? usDomesticWire;

Map<String, dynamic> toJson() { return {
  if (ach != null) 'ach': ach?.toJson(),
  if (usDomesticWire != null) 'us_domestic_wire': usDomesticWire?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ach', 'us_domestic_wire'}.contains(key)); } 
PostTreasuryFinancialAccountsRequestFeaturesOutboundPayments copyWith({PostTreasuryFinancialAccountsRequestFeaturesOutboundPaymentsAch Function()? ach, PostTreasuryFinancialAccountsRequestFeaturesOutboundPaymentsUsDomesticWire Function()? usDomesticWire, }) { return PostTreasuryFinancialAccountsRequestFeaturesOutboundPayments(
  ach: ach != null ? ach() : this.ach,
  usDomesticWire: usDomesticWire != null ? usDomesticWire() : this.usDomesticWire,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryFinancialAccountsRequestFeaturesOutboundPayments &&
          ach == other.ach &&
          usDomesticWire == other.usDomesticWire; } 
@override int get hashCode { return Object.hash(ach, usDomesticWire); } 
@override String toString() { return 'PostTreasuryFinancialAccountsRequestFeaturesOutboundPayments(ach: $ach, usDomesticWire: $usDomesticWire)'; } 
 }
