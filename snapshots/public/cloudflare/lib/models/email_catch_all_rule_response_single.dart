// GENERATED CODE - DO NOT MODIFY BY HAND

import 'email_catch_all_rule.dart';final class EmailCatchAllRuleResponseSingle {const EmailCatchAllRuleResponseSingle({this.result});

factory EmailCatchAllRuleResponseSingle.fromJson(Map<String, dynamic> json) { return EmailCatchAllRuleResponseSingle(
  result: json['result'] != null ? EmailCatchAllRule.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final EmailCatchAllRule? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
EmailCatchAllRuleResponseSingle copyWith({EmailCatchAllRule Function()? result}) { return EmailCatchAllRuleResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailCatchAllRuleResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'EmailCatchAllRuleResponseSingle(result: $result)'; } 
 }
