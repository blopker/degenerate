// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dlp_email_rule.dart';final class DlpEmailScannerUpdateRulePrioritiesResponse {const DlpEmailScannerUpdateRulePrioritiesResponse({this.result});

factory DlpEmailScannerUpdateRulePrioritiesResponse.fromJson(Map<String, dynamic> json) { return DlpEmailScannerUpdateRulePrioritiesResponse(
  result: json['result'] != null ? DlpEmailRule.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpEmailRule? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpEmailScannerUpdateRulePrioritiesResponse copyWith({DlpEmailRule Function()? result}) { return DlpEmailScannerUpdateRulePrioritiesResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpEmailScannerUpdateRulePrioritiesResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpEmailScannerUpdateRulePrioritiesResponse(result: $result)'; } 
 }
