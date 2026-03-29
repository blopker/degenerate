// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class ConnectEmbeddedFinancialAccountTransactionsFeatures {const ConnectEmbeddedFinancialAccountTransactionsFeatures({required this.cardSpendDisputeManagement});

factory ConnectEmbeddedFinancialAccountTransactionsFeatures.fromJson(Map<String, dynamic> json) { return ConnectEmbeddedFinancialAccountTransactionsFeatures(
  cardSpendDisputeManagement: json['card_spend_dispute_management'] as bool,
); }

/// Whether to allow card spend dispute management features.
final bool cardSpendDisputeManagement;

Map<String, dynamic> toJson() { return {
  'card_spend_dispute_management': cardSpendDisputeManagement,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('card_spend_dispute_management') && json['card_spend_dispute_management'] is bool; } 
ConnectEmbeddedFinancialAccountTransactionsFeatures copyWith({bool? cardSpendDisputeManagement}) { return ConnectEmbeddedFinancialAccountTransactionsFeatures(
  cardSpendDisputeManagement: cardSpendDisputeManagement ?? this.cardSpendDisputeManagement,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConnectEmbeddedFinancialAccountTransactionsFeatures &&
          cardSpendDisputeManagement == other.cardSpendDisputeManagement; } 
@override int get hashCode { return cardSpendDisputeManagement.hashCode; } 
@override String toString() { return 'ConnectEmbeddedFinancialAccountTransactionsFeatures(cardSpendDisputeManagement: $cardSpendDisputeManagement)'; } 
 }
