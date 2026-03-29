// GENERATED CODE - DO NOT MODIFY BY HAND

import 'issuing_transaction_network_data.dart';/// Details about the transaction, such as processing dates, set by the card network.
final class IssuingTransactionNetworkData2 {const IssuingTransactionNetworkData2({this.issuingTransactionNetworkData});

factory IssuingTransactionNetworkData2.fromJson(Map<String, dynamic> json) { return IssuingTransactionNetworkData2(
  issuingTransactionNetworkData: IssuingTransactionNetworkData.canParse(json) ? IssuingTransactionNetworkData.fromJson(json) : null,
); }

final IssuingTransactionNetworkData? issuingTransactionNetworkData;

/// At least one variant must be present.
bool get isValid { return issuingTransactionNetworkData != null; } 
Map<String, dynamic> toJson() { return {
  ...?issuingTransactionNetworkData?.toJson(),
}; } 
 }
