// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_page_rule.dart';@immutable final class PageRulesCreateAPageRuleResponse {const PageRulesCreateAPageRuleResponse({this.result});

factory PageRulesCreateAPageRuleResponse.fromJson(Map<String, dynamic> json) { return PageRulesCreateAPageRuleResponse(
  result: json['result'] != null ? ZonesPageRule.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ZonesPageRule? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
PageRulesCreateAPageRuleResponse copyWith({ZonesPageRule Function()? result}) { return PageRulesCreateAPageRuleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PageRulesCreateAPageRuleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'PageRulesCreateAPageRuleResponse(result: $result)'; } 
 }
