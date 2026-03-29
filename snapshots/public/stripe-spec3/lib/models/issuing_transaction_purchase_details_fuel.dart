// GENERATED CODE - DO NOT MODIFY BY HAND

import 'issuing_transaction_fuel_data.dart';/// Information about fuel that was purchased with this transaction.
final class IssuingTransactionPurchaseDetailsFuel {const IssuingTransactionPurchaseDetailsFuel({this.issuingTransactionFuelData});

factory IssuingTransactionPurchaseDetailsFuel.fromJson(Map<String, dynamic> json) { return IssuingTransactionPurchaseDetailsFuel(
  issuingTransactionFuelData: IssuingTransactionFuelData.canParse(json) ? IssuingTransactionFuelData.fromJson(json) : null,
); }

final IssuingTransactionFuelData? issuingTransactionFuelData;

/// At least one variant must be present.
bool get isValid { return issuingTransactionFuelData != null; } 
Map<String, dynamic> toJson() { return {
  ...?issuingTransactionFuelData?.toJson(),
}; } 
 }
