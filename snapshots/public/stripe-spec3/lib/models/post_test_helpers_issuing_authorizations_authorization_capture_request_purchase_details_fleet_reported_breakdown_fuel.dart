// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetReportedBreakdownFuel {const PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetReportedBreakdownFuel({this.grossAmountDecimal});

factory PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetReportedBreakdownFuel.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetReportedBreakdownFuel(
  grossAmountDecimal: json['gross_amount_decimal'] as String?,
); }

final String? grossAmountDecimal;

Map<String, dynamic> toJson() { return {
  'gross_amount_decimal': ?grossAmountDecimal,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'gross_amount_decimal'}.contains(key)); } 
PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetReportedBreakdownFuel copyWith({String Function()? grossAmountDecimal}) { return PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetReportedBreakdownFuel(
  grossAmountDecimal: grossAmountDecimal != null ? grossAmountDecimal() : this.grossAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetReportedBreakdownFuel &&
          grossAmountDecimal == other.grossAmountDecimal; } 
@override int get hashCode { return grossAmountDecimal.hashCode; } 
@override String toString() { return 'PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetReportedBreakdownFuel(grossAmountDecimal: $grossAmountDecimal)'; } 
 }
