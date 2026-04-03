// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTestHelpersIssuingAuthorizationsRequestFleetReportedBreakdownFuel {const PostTestHelpersIssuingAuthorizationsRequestFleetReportedBreakdownFuel({this.grossAmountDecimal});

factory PostTestHelpersIssuingAuthorizationsRequestFleetReportedBreakdownFuel.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingAuthorizationsRequestFleetReportedBreakdownFuel(
  grossAmountDecimal: json['gross_amount_decimal'] as String?,
); }

final String? grossAmountDecimal;

Map<String, dynamic> toJson() { return {
  'gross_amount_decimal': ?grossAmountDecimal,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'gross_amount_decimal'}.contains(key)); } 
PostTestHelpersIssuingAuthorizationsRequestFleetReportedBreakdownFuel copyWith({String Function()? grossAmountDecimal}) { return PostTestHelpersIssuingAuthorizationsRequestFleetReportedBreakdownFuel(
  grossAmountDecimal: grossAmountDecimal != null ? grossAmountDecimal() : this.grossAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingAuthorizationsRequestFleetReportedBreakdownFuel &&
          grossAmountDecimal == other.grossAmountDecimal; } 
@override int get hashCode { return grossAmountDecimal.hashCode; } 
@override String toString() { return 'PostTestHelpersIssuingAuthorizationsRequestFleetReportedBreakdownFuel(grossAmountDecimal: $grossAmountDecimal)'; } 
 }
