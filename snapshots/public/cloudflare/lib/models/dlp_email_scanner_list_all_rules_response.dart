// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_email_rule.dart';@immutable final class DlpEmailScannerListAllRulesResponse {const DlpEmailScannerListAllRulesResponse({this.result});

factory DlpEmailScannerListAllRulesResponse.fromJson(Map<String, dynamic> json) { return DlpEmailScannerListAllRulesResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => DlpEmailRule.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DlpEmailRule>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpEmailScannerListAllRulesResponse copyWith({List<DlpEmailRule> Function()? result}) { return DlpEmailScannerListAllRulesResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpEmailScannerListAllRulesResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'DlpEmailScannerListAllRulesResponse(result: $result)'; } 
 }
