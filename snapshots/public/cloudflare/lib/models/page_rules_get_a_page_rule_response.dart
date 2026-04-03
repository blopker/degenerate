// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_page_rule.dart';@immutable final class PageRulesGetAPageRuleResponse {const PageRulesGetAPageRuleResponse({this.result});

factory PageRulesGetAPageRuleResponse.fromJson(Map<String, dynamic> json) { return PageRulesGetAPageRuleResponse(
  result: json['result'] != null ? ZonesPageRule.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ZonesPageRule? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
PageRulesGetAPageRuleResponse copyWith({ZonesPageRule Function()? result}) { return PageRulesGetAPageRuleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PageRulesGetAPageRuleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'PageRulesGetAPageRuleResponse(result: $result)'; } 
 }
