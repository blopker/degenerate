// GENERATED CODE - DO NOT MODIFY BY HAND

import 'sepa_debit_generated_from.dart';/// Information about the object that generated this PaymentMethod.
final class PaymentMethodSepaDebitGeneratedFrom {const PaymentMethodSepaDebitGeneratedFrom({this.sepaDebitGeneratedFrom});

factory PaymentMethodSepaDebitGeneratedFrom.fromJson(Map<String, dynamic> json) { return PaymentMethodSepaDebitGeneratedFrom(
  sepaDebitGeneratedFrom: SepaDebitGeneratedFrom.canParse(json) ? SepaDebitGeneratedFrom.fromJson(json) : null,
); }

final SepaDebitGeneratedFrom? sepaDebitGeneratedFrom;

/// At least one variant must be present.
bool get isValid { return sepaDebitGeneratedFrom != null; } 
Map<String, dynamic> toJson() { return {
  ...?sepaDebitGeneratedFrom?.toJson(),
}; } 
 }
