// GENERATED CODE - DO NOT MODIFY BY HAND

import 'issuing_transaction_fleet_reported_breakdown.dart';/// More information about the total amount. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
final class IssuingTransactionFleetDataReportedBreakdown {const IssuingTransactionFleetDataReportedBreakdown({this.issuingTransactionFleetReportedBreakdown});

factory IssuingTransactionFleetDataReportedBreakdown.fromJson(Map<String, dynamic> json) { return IssuingTransactionFleetDataReportedBreakdown(
  issuingTransactionFleetReportedBreakdown: IssuingTransactionFleetReportedBreakdown.canParse(json) ? IssuingTransactionFleetReportedBreakdown.fromJson(json) : null,
); }

final IssuingTransactionFleetReportedBreakdown? issuingTransactionFleetReportedBreakdown;

/// At least one variant must be present.
bool get isValid { return issuingTransactionFleetReportedBreakdown != null; } 
Map<String, dynamic> toJson() { return {
  ...?issuingTransactionFleetReportedBreakdown?.toJson(),
}; } 
 }
