// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetReportedBreakdownTax {const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetReportedBreakdownTax({this.localAmountDecimal, this.nationalAmountDecimal, });

factory PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetReportedBreakdownTax.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetReportedBreakdownTax(
  localAmountDecimal: json['local_amount_decimal'] as String?,
  nationalAmountDecimal: json['national_amount_decimal'] as String?,
); }

final String? localAmountDecimal;

final String? nationalAmountDecimal;

Map<String, dynamic> toJson() { return {
  'local_amount_decimal': ?localAmountDecimal,
  'national_amount_decimal': ?nationalAmountDecimal,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'local_amount_decimal', 'national_amount_decimal'}.contains(key)); } 
PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetReportedBreakdownTax copyWith({String Function()? localAmountDecimal, String Function()? nationalAmountDecimal, }) { return PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetReportedBreakdownTax(
  localAmountDecimal: localAmountDecimal != null ? localAmountDecimal() : this.localAmountDecimal,
  nationalAmountDecimal: nationalAmountDecimal != null ? nationalAmountDecimal() : this.nationalAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetReportedBreakdownTax &&
          localAmountDecimal == other.localAmountDecimal &&
          nationalAmountDecimal == other.nationalAmountDecimal; } 
@override int get hashCode { return Object.hash(localAmountDecimal, nationalAmountDecimal); } 
@override String toString() { return 'PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetReportedBreakdownTax(localAmountDecimal: $localAmountDecimal, nationalAmountDecimal: $nationalAmountDecimal)'; } 
 }
