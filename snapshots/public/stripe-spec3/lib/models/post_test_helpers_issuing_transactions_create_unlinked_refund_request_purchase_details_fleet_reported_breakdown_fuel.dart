// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFleetReportedBreakdownFuel {const PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFleetReportedBreakdownFuel({this.grossAmountDecimal});

factory PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFleetReportedBreakdownFuel.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFleetReportedBreakdownFuel(
  grossAmountDecimal: json['gross_amount_decimal'] as String?,
); }

final String? grossAmountDecimal;

Map<String, dynamic> toJson() { return {
  'gross_amount_decimal': ?grossAmountDecimal,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'gross_amount_decimal'}.contains(key)); } 
PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFleetReportedBreakdownFuel copyWith({String Function()? grossAmountDecimal}) { return PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFleetReportedBreakdownFuel(
  grossAmountDecimal: grossAmountDecimal != null ? grossAmountDecimal() : this.grossAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFleetReportedBreakdownFuel &&
          grossAmountDecimal == other.grossAmountDecimal; } 
@override int get hashCode { return grossAmountDecimal.hashCode; } 
@override String toString() { return 'PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFleetReportedBreakdownFuel(grossAmountDecimal: $grossAmountDecimal)'; } 
 }
