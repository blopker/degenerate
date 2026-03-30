// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFleetReportedBreakdownTax {const PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFleetReportedBreakdownTax({this.localAmountDecimal, this.nationalAmountDecimal, });

factory PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFleetReportedBreakdownTax.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFleetReportedBreakdownTax(
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
PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFleetReportedBreakdownTax copyWith({String Function()? localAmountDecimal, String Function()? nationalAmountDecimal, }) { return PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFleetReportedBreakdownTax(
  localAmountDecimal: localAmountDecimal != null ? localAmountDecimal() : this.localAmountDecimal,
  nationalAmountDecimal: nationalAmountDecimal != null ? nationalAmountDecimal() : this.nationalAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFleetReportedBreakdownTax &&
          localAmountDecimal == other.localAmountDecimal &&
          nationalAmountDecimal == other.nationalAmountDecimal; } 
@override int get hashCode { return Object.hash(localAmountDecimal, nationalAmountDecimal); } 
@override String toString() { return 'PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFleetReportedBreakdownTax(localAmountDecimal: $localAmountDecimal, nationalAmountDecimal: $nationalAmountDecimal)'; } 
 }
