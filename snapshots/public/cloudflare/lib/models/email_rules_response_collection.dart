// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_rule_properties.dart';import 'email_rules_response_collection_result_info.dart';@immutable final class EmailRulesResponseCollection {const EmailRulesResponseCollection({this.result, this.resultInfo, });

factory EmailRulesResponseCollection.fromJson(Map<String, dynamic> json) { return EmailRulesResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => EmailRuleProperties.fromJson(e as Map<String, dynamic>)).toList(),
  resultInfo: json['result_info'] != null ? EmailRulesResponseCollectionResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<EmailRuleProperties>? result;

final EmailRulesResponseCollectionResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result', 'result_info'}.contains(key)); } 
EmailRulesResponseCollection copyWith({List<EmailRuleProperties> Function()? result, EmailRulesResponseCollectionResultInfo Function()? resultInfo, }) { return EmailRulesResponseCollection(
  result: result != null ? result() : this.result,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailRulesResponseCollection &&
          listEquals(result, other.result) &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(result ?? const []), resultInfo); } 
@override String toString() { return 'EmailRulesResponseCollection(result: $result, resultInfo: $resultInfo)'; } 
 }
