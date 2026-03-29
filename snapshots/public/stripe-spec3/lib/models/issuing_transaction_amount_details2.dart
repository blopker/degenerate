// GENERATED CODE - DO NOT MODIFY BY HAND

import 'issuing_transaction_amount_details.dart';/// Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
final class IssuingTransactionAmountDetails2 {const IssuingTransactionAmountDetails2({this.issuingTransactionAmountDetails});

factory IssuingTransactionAmountDetails2.fromJson(Map<String, dynamic> json) { return IssuingTransactionAmountDetails2(
  issuingTransactionAmountDetails: IssuingTransactionAmountDetails.canParse(json) ? IssuingTransactionAmountDetails.fromJson(json) : null,
); }

final IssuingTransactionAmountDetails? issuingTransactionAmountDetails;

/// At least one variant must be present.
bool get isValid { return issuingTransactionAmountDetails != null; } 
Map<String, dynamic> toJson() { return {
  ...?issuingTransactionAmountDetails?.toJson(),
}; } 
 }
