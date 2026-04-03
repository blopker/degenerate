// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_email_rule.dart';@immutable final class DlpEmailScannerUpdateRuleResponse {const DlpEmailScannerUpdateRuleResponse({this.result});

factory DlpEmailScannerUpdateRuleResponse.fromJson(Map<String, dynamic> json) { return DlpEmailScannerUpdateRuleResponse(
  result: json['result'] != null ? DlpEmailRule.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpEmailRule? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpEmailScannerUpdateRuleResponse copyWith({DlpEmailRule Function()? result}) { return DlpEmailScannerUpdateRuleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpEmailScannerUpdateRuleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpEmailScannerUpdateRuleResponse(result: $result)'; } 
 }
