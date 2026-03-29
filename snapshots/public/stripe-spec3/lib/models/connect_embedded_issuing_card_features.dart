// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class ConnectEmbeddedIssuingCardFeatures {const ConnectEmbeddedIssuingCardFeatures({required this.cardManagement, required this.cardSpendDisputeManagement, required this.cardholderManagement, required this.spendControlManagement, });

factory ConnectEmbeddedIssuingCardFeatures.fromJson(Map<String, dynamic> json) { return ConnectEmbeddedIssuingCardFeatures(
  cardManagement: json['card_management'] as bool,
  cardSpendDisputeManagement: json['card_spend_dispute_management'] as bool,
  cardholderManagement: json['cardholder_management'] as bool,
  spendControlManagement: json['spend_control_management'] as bool,
); }

/// Whether to allow card management features.
final bool cardManagement;

/// Whether to allow card spend dispute management features.
final bool cardSpendDisputeManagement;

/// Whether to allow cardholder management features.
final bool cardholderManagement;

/// Whether to allow spend control management features.
final bool spendControlManagement;

Map<String, dynamic> toJson() { return {
  'card_management': cardManagement,
  'card_spend_dispute_management': cardSpendDisputeManagement,
  'cardholder_management': cardholderManagement,
  'spend_control_management': spendControlManagement,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('card_management') && json['card_management'] is bool &&
      json.containsKey('card_spend_dispute_management') && json['card_spend_dispute_management'] is bool &&
      json.containsKey('cardholder_management') && json['cardholder_management'] is bool &&
      json.containsKey('spend_control_management') && json['spend_control_management'] is bool; } 
ConnectEmbeddedIssuingCardFeatures copyWith({bool? cardManagement, bool? cardSpendDisputeManagement, bool? cardholderManagement, bool? spendControlManagement, }) { return ConnectEmbeddedIssuingCardFeatures(
  cardManagement: cardManagement ?? this.cardManagement,
  cardSpendDisputeManagement: cardSpendDisputeManagement ?? this.cardSpendDisputeManagement,
  cardholderManagement: cardholderManagement ?? this.cardholderManagement,
  spendControlManagement: spendControlManagement ?? this.spendControlManagement,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConnectEmbeddedIssuingCardFeatures &&
          cardManagement == other.cardManagement &&
          cardSpendDisputeManagement == other.cardSpendDisputeManagement &&
          cardholderManagement == other.cardholderManagement &&
          spendControlManagement == other.spendControlManagement; } 
@override int get hashCode { return Object.hash(cardManagement, cardSpendDisputeManagement, cardholderManagement, spendControlManagement); } 
@override String toString() { return 'ConnectEmbeddedIssuingCardFeatures(cardManagement: $cardManagement, cardSpendDisputeManagement: $cardSpendDisputeManagement, cardholderManagement: $cardholderManagement, spendControlManagement: $spendControlManagement)'; } 
 }
