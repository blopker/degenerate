// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTestHelpersIssuingAuthorizationsRequestFleetReportedBreakdownNonFuel {const PostTestHelpersIssuingAuthorizationsRequestFleetReportedBreakdownNonFuel({this.grossAmountDecimal});

factory PostTestHelpersIssuingAuthorizationsRequestFleetReportedBreakdownNonFuel.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingAuthorizationsRequestFleetReportedBreakdownNonFuel(
  grossAmountDecimal: json['gross_amount_decimal'] as String?,
); }

final String? grossAmountDecimal;

Map<String, dynamic> toJson() { return {
  'gross_amount_decimal': ?grossAmountDecimal,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'gross_amount_decimal'}.contains(key)); } 
PostTestHelpersIssuingAuthorizationsRequestFleetReportedBreakdownNonFuel copyWith({String Function()? grossAmountDecimal}) { return PostTestHelpersIssuingAuthorizationsRequestFleetReportedBreakdownNonFuel(
  grossAmountDecimal: grossAmountDecimal != null ? grossAmountDecimal() : this.grossAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingAuthorizationsRequestFleetReportedBreakdownNonFuel &&
          grossAmountDecimal == other.grossAmountDecimal; } 
@override int get hashCode { return grossAmountDecimal.hashCode; } 
@override String toString() { return 'PostTestHelpersIssuingAuthorizationsRequestFleetReportedBreakdownNonFuel(grossAmountDecimal: $grossAmountDecimal)'; } 
 }
