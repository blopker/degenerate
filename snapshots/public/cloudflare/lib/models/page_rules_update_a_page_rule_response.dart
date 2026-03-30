// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zones_page_rule.dart';final class PageRulesUpdateAPageRuleResponse {const PageRulesUpdateAPageRuleResponse({this.result});

factory PageRulesUpdateAPageRuleResponse.fromJson(Map<String, dynamic> json) { return PageRulesUpdateAPageRuleResponse(
  result: json['result'] != null ? ZonesPageRule.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ZonesPageRule? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
PageRulesUpdateAPageRuleResponse copyWith({ZonesPageRule Function()? result}) { return PageRulesUpdateAPageRuleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PageRulesUpdateAPageRuleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'PageRulesUpdateAPageRuleResponse(result: $result)'; } 
 }
