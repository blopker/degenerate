// GENERATED CODE - DO NOT MODIFY BY HAND

import 'internal_card.dart';/// Internal card details
final class PaymentMethodDetailsMobilepayCard {const PaymentMethodDetailsMobilepayCard({this.internalCard});

factory PaymentMethodDetailsMobilepayCard.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsMobilepayCard(
  internalCard: InternalCard.canParse(json) ? InternalCard.fromJson(json) : null,
); }

final InternalCard? internalCard;

/// At least one variant must be present.
bool get isValid { return internalCard != null; } 
Map<String, dynamic> toJson() { return {
  ...?internalCard?.toJson(),
}; } 
 }
