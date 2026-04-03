// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_rule_properties.dart';@immutable final class EmailRuleResponseSingle {const EmailRuleResponseSingle({this.result});

factory EmailRuleResponseSingle.fromJson(Map<String, dynamic> json) { return EmailRuleResponseSingle(
  result: json['result'] != null ? EmailRuleProperties.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final EmailRuleProperties? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
EmailRuleResponseSingle copyWith({EmailRuleProperties Function()? result}) { return EmailRuleResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailRuleResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'EmailRuleResponseSingle(result: $result)'; } 
 }
