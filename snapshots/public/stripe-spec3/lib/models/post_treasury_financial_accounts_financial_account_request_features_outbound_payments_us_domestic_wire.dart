// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundPaymentsUsDomesticWire {const PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundPaymentsUsDomesticWire({required this.requested});

factory PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundPaymentsUsDomesticWire.fromJson(Map<String, dynamic> json) { return PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundPaymentsUsDomesticWire(
  requested: json['requested'] as bool,
); }

final bool requested;

Map<String, dynamic> toJson() { return {
  'requested': requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('requested') && json['requested'] is bool; } 
PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundPaymentsUsDomesticWire copyWith({bool? requested}) { return PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundPaymentsUsDomesticWire(
  requested: requested ?? this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundPaymentsUsDomesticWire &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundPaymentsUsDomesticWire(requested: $requested)'; } 
 }
