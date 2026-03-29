// GENERATED CODE - DO NOT MODIFY BY HAND

import 'quotes_resource_transfer_data.dart';/// The account (if any) the payments will be attributed to for tax reporting, and where funds from each payment will be transferred to for each of the invoices.
final class QuoteTransferData {const QuoteTransferData({this.quotesResourceTransferData});

factory QuoteTransferData.fromJson(Map<String, dynamic> json) { return QuoteTransferData(
  quotesResourceTransferData: QuotesResourceTransferData.canParse(json) ? QuotesResourceTransferData.fromJson(json) : null,
); }

final QuotesResourceTransferData? quotesResourceTransferData;

/// At least one variant must be present.
bool get isValid { return quotesResourceTransferData != null; } 
Map<String, dynamic> toJson() { return {
  ...?quotesResourceTransferData?.toJson(),
}; } 
 }
