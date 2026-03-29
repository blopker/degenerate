// GENERATED CODE - DO NOT MODIFY BY HAND

import 'issuing_card_fraud_warning.dart';/// Stripe’s assessment of whether this card’s details have been compromised. If this property isn't null, cancel and reissue the card to prevent fraudulent activity risk.
final class IssuingCardLatestFraudWarning {const IssuingCardLatestFraudWarning({this.issuingCardFraudWarning});

factory IssuingCardLatestFraudWarning.fromJson(Map<String, dynamic> json) { return IssuingCardLatestFraudWarning(
  issuingCardFraudWarning: IssuingCardFraudWarning.canParse(json) ? IssuingCardFraudWarning.fromJson(json) : null,
); }

final IssuingCardFraudWarning? issuingCardFraudWarning;

/// At least one variant must be present.
bool get isValid { return issuingCardFraudWarning != null; } 
Map<String, dynamic> toJson() { return {
  ...?issuingCardFraudWarning?.toJson(),
}; } 
 }
