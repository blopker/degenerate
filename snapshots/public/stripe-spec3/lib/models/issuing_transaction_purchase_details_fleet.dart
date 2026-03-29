// GENERATED CODE - DO NOT MODIFY BY HAND

import 'issuing_transaction_fleet_data.dart';/// Fleet-specific information for transactions using Fleet cards.
final class IssuingTransactionPurchaseDetailsFleet {const IssuingTransactionPurchaseDetailsFleet({this.issuingTransactionFleetData});

factory IssuingTransactionPurchaseDetailsFleet.fromJson(Map<String, dynamic> json) { return IssuingTransactionPurchaseDetailsFleet(
  issuingTransactionFleetData: IssuingTransactionFleetData.canParse(json) ? IssuingTransactionFleetData.fromJson(json) : null,
); }

final IssuingTransactionFleetData? issuingTransactionFleetData;

/// At least one variant must be present.
bool get isValid { return issuingTransactionFleetData != null; } 
Map<String, dynamic> toJson() { return {
  ...?issuingTransactionFleetData?.toJson(),
}; } 
 }
