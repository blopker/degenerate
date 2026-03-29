// GENERATED CODE - DO NOT MODIFY BY HAND

import 'issuing_transaction_purchase_details.dart';/// Additional purchase information that is optionally provided by the merchant.
final class IssuingTransactionPurchaseDetails2 {const IssuingTransactionPurchaseDetails2({this.issuingTransactionPurchaseDetails});

factory IssuingTransactionPurchaseDetails2.fromJson(Map<String, dynamic> json) { return IssuingTransactionPurchaseDetails2(
  issuingTransactionPurchaseDetails: IssuingTransactionPurchaseDetails.canParse(json) ? IssuingTransactionPurchaseDetails.fromJson(json) : null,
); }

final IssuingTransactionPurchaseDetails? issuingTransactionPurchaseDetails;

/// At least one variant must be present.
bool get isValid { return issuingTransactionPurchaseDetails != null; } 
Map<String, dynamic> toJson() { return {
  ...?issuingTransactionPurchaseDetails?.toJson(),
}; } 
 }
