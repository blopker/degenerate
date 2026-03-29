// GENERATED CODE - DO NOT MODIFY BY HAND

import 'issuing_transaction_lodging_data.dart';/// Information about lodging that was purchased with this transaction.
final class IssuingTransactionPurchaseDetailsLodging {const IssuingTransactionPurchaseDetailsLodging({this.issuingTransactionLodgingData});

factory IssuingTransactionPurchaseDetailsLodging.fromJson(Map<String, dynamic> json) { return IssuingTransactionPurchaseDetailsLodging(
  issuingTransactionLodgingData: IssuingTransactionLodgingData.canParse(json) ? IssuingTransactionLodgingData.fromJson(json) : null,
); }

final IssuingTransactionLodgingData? issuingTransactionLodgingData;

/// At least one variant must be present.
bool get isValid { return issuingTransactionLodgingData != null; } 
Map<String, dynamic> toJson() { return {
  ...?issuingTransactionLodgingData?.toJson(),
}; } 
 }
