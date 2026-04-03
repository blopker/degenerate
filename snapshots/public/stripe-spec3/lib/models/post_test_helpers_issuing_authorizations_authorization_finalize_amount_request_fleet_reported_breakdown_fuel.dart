// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTestHelpersIssuingAuthorizationsAuthorizationFinalizeAmountRequestFleetReportedBreakdownFuel {const PostTestHelpersIssuingAuthorizationsAuthorizationFinalizeAmountRequestFleetReportedBreakdownFuel({this.grossAmountDecimal});

factory PostTestHelpersIssuingAuthorizationsAuthorizationFinalizeAmountRequestFleetReportedBreakdownFuel.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingAuthorizationsAuthorizationFinalizeAmountRequestFleetReportedBreakdownFuel(
  grossAmountDecimal: json['gross_amount_decimal'] as String?,
); }

final String? grossAmountDecimal;

Map<String, dynamic> toJson() { return {
  'gross_amount_decimal': ?grossAmountDecimal,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'gross_amount_decimal'}.contains(key)); } 
PostTestHelpersIssuingAuthorizationsAuthorizationFinalizeAmountRequestFleetReportedBreakdownFuel copyWith({String Function()? grossAmountDecimal}) { return PostTestHelpersIssuingAuthorizationsAuthorizationFinalizeAmountRequestFleetReportedBreakdownFuel(
  grossAmountDecimal: grossAmountDecimal != null ? grossAmountDecimal() : this.grossAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingAuthorizationsAuthorizationFinalizeAmountRequestFleetReportedBreakdownFuel &&
          grossAmountDecimal == other.grossAmountDecimal; } 
@override int get hashCode { return grossAmountDecimal.hashCode; } 
@override String toString() { return 'PostTestHelpersIssuingAuthorizationsAuthorizationFinalizeAmountRequestFleetReportedBreakdownFuel(grossAmountDecimal: $grossAmountDecimal)'; } 
 }
