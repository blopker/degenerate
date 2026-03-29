// GENERATED CODE - DO NOT MODIFY BY HAND

import 'issuing_transaction_flight_data.dart';/// Information about the flight that was purchased with this transaction.
final class IssuingTransactionPurchaseDetailsFlight {const IssuingTransactionPurchaseDetailsFlight({this.issuingTransactionFlightData});

factory IssuingTransactionPurchaseDetailsFlight.fromJson(Map<String, dynamic> json) { return IssuingTransactionPurchaseDetailsFlight(
  issuingTransactionFlightData: IssuingTransactionFlightData.canParse(json) ? IssuingTransactionFlightData.fromJson(json) : null,
); }

final IssuingTransactionFlightData? issuingTransactionFlightData;

/// At least one variant must be present.
bool get isValid { return issuingTransactionFlightData != null; } 
Map<String, dynamic> toJson() { return {
  ...?issuingTransactionFlightData?.toJson(),
}; } 
 }
