// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFleetReportedBreakdownNonFuel {const PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFleetReportedBreakdownNonFuel({this.grossAmountDecimal});

factory PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFleetReportedBreakdownNonFuel.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFleetReportedBreakdownNonFuel(
  grossAmountDecimal: json['gross_amount_decimal'] as String?,
); }

final String? grossAmountDecimal;

Map<String, dynamic> toJson() { return {
  'gross_amount_decimal': ?grossAmountDecimal,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'gross_amount_decimal'}.contains(key)); } 
PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFleetReportedBreakdownNonFuel copyWith({String Function()? grossAmountDecimal}) { return PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFleetReportedBreakdownNonFuel(
  grossAmountDecimal: grossAmountDecimal != null ? grossAmountDecimal() : this.grossAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFleetReportedBreakdownNonFuel &&
          grossAmountDecimal == other.grossAmountDecimal; } 
@override int get hashCode { return grossAmountDecimal.hashCode; } 
@override String toString() { return 'PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFleetReportedBreakdownNonFuel(grossAmountDecimal: $grossAmountDecimal)'; } 
 }
