// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTestHelpersIssuingAuthorizationsAuthorizationFinalizeAmountRequestFleetReportedBreakdownNonFuel {const PostTestHelpersIssuingAuthorizationsAuthorizationFinalizeAmountRequestFleetReportedBreakdownNonFuel({this.grossAmountDecimal});

factory PostTestHelpersIssuingAuthorizationsAuthorizationFinalizeAmountRequestFleetReportedBreakdownNonFuel.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingAuthorizationsAuthorizationFinalizeAmountRequestFleetReportedBreakdownNonFuel(
  grossAmountDecimal: json['gross_amount_decimal'] as String?,
); }

final String? grossAmountDecimal;

Map<String, dynamic> toJson() { return {
  'gross_amount_decimal': ?grossAmountDecimal,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'gross_amount_decimal'}.contains(key)); } 
PostTestHelpersIssuingAuthorizationsAuthorizationFinalizeAmountRequestFleetReportedBreakdownNonFuel copyWith({String Function()? grossAmountDecimal}) { return PostTestHelpersIssuingAuthorizationsAuthorizationFinalizeAmountRequestFleetReportedBreakdownNonFuel(
  grossAmountDecimal: grossAmountDecimal != null ? grossAmountDecimal() : this.grossAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingAuthorizationsAuthorizationFinalizeAmountRequestFleetReportedBreakdownNonFuel &&
          grossAmountDecimal == other.grossAmountDecimal; } 
@override int get hashCode { return grossAmountDecimal.hashCode; } 
@override String toString() { return 'PostTestHelpersIssuingAuthorizationsAuthorizationFinalizeAmountRequestFleetReportedBreakdownNonFuel(grossAmountDecimal: $grossAmountDecimal)'; } 
 }
