// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zones_page_rule.dart';final class PageRulesEditAPageRuleResponse {const PageRulesEditAPageRuleResponse({this.result});

factory PageRulesEditAPageRuleResponse.fromJson(Map<String, dynamic> json) { return PageRulesEditAPageRuleResponse(
  result: json['result'] != null ? ZonesPageRule.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ZonesPageRule? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
PageRulesEditAPageRuleResponse copyWith({ZonesPageRule Function()? result}) { return PageRulesEditAPageRuleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PageRulesEditAPageRuleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'PageRulesEditAPageRuleResponse(result: $result)'; } 
 }
