// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetReportedBreakdownNonFuel {const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetReportedBreakdownNonFuel({this.grossAmountDecimal});

factory PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetReportedBreakdownNonFuel.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetReportedBreakdownNonFuel(
  grossAmountDecimal: json['gross_amount_decimal'] as String?,
); }

final String? grossAmountDecimal;

Map<String, dynamic> toJson() { return {
  'gross_amount_decimal': ?grossAmountDecimal,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'gross_amount_decimal'}.contains(key)); } 
PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetReportedBreakdownNonFuel copyWith({String Function()? grossAmountDecimal}) { return PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetReportedBreakdownNonFuel(
  grossAmountDecimal: grossAmountDecimal != null ? grossAmountDecimal() : this.grossAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetReportedBreakdownNonFuel &&
          grossAmountDecimal == other.grossAmountDecimal; } 
@override int get hashCode { return grossAmountDecimal.hashCode; } 
@override String toString() { return 'PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetReportedBreakdownNonFuel(grossAmountDecimal: $grossAmountDecimal)'; } 
 }
