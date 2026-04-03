// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTreasuryFinancialAccountsRequestFeaturesOutboundPaymentsUsDomesticWire {const PostTreasuryFinancialAccountsRequestFeaturesOutboundPaymentsUsDomesticWire({required this.requested});

factory PostTreasuryFinancialAccountsRequestFeaturesOutboundPaymentsUsDomesticWire.fromJson(Map<String, dynamic> json) { return PostTreasuryFinancialAccountsRequestFeaturesOutboundPaymentsUsDomesticWire(
  requested: json['requested'] as bool,
); }

final bool requested;

Map<String, dynamic> toJson() { return {
  'requested': requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('requested') && json['requested'] is bool; } 
PostTreasuryFinancialAccountsRequestFeaturesOutboundPaymentsUsDomesticWire copyWith({bool? requested}) { return PostTreasuryFinancialAccountsRequestFeaturesOutboundPaymentsUsDomesticWire(
  requested: requested ?? this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryFinancialAccountsRequestFeaturesOutboundPaymentsUsDomesticWire &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostTreasuryFinancialAccountsRequestFeaturesOutboundPaymentsUsDomesticWire(requested: $requested)'; } 
 }
