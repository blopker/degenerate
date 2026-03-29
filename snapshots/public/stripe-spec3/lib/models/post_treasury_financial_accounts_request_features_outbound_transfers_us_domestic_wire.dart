// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfersUsDomesticWire {const PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfersUsDomesticWire({required this.requested});

factory PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfersUsDomesticWire.fromJson(Map<String, dynamic> json) { return PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfersUsDomesticWire(
  requested: json['requested'] as bool,
); }

final bool requested;

Map<String, dynamic> toJson() { return {
  'requested': requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('requested') && json['requested'] is bool; } 
PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfersUsDomesticWire copyWith({bool? requested}) { return PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfersUsDomesticWire(
  requested: requested ?? this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfersUsDomesticWire &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfersUsDomesticWire(requested: $requested)'; } 
 }
