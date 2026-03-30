// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dlp_email_rule.dart';final class DlpEmailScannerDeleteRuleResponse {const DlpEmailScannerDeleteRuleResponse({this.result});

factory DlpEmailScannerDeleteRuleResponse.fromJson(Map<String, dynamic> json) { return DlpEmailScannerDeleteRuleResponse(
  result: json['result'] != null ? DlpEmailRule.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpEmailRule? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpEmailScannerDeleteRuleResponse copyWith({DlpEmailRule Function()? result}) { return DlpEmailScannerDeleteRuleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpEmailScannerDeleteRuleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpEmailScannerDeleteRuleResponse(result: $result)'; } 
 }
