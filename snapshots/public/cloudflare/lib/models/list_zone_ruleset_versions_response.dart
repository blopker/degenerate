// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'list_zone_ruleset_versions_response_result.dart';import 'rulesets_message.dart';import 'rulesets_result_info.dart';final class ListZoneRulesetVersionsResponse {const ListZoneRulesetVersionsResponse({required this.errors, required this.messages, required this.result, required this.success, this.resultInfo, });

factory ListZoneRulesetVersionsResponse.fromJson(Map<String, dynamic> json) { return ListZoneRulesetVersionsResponse(
  errors: json['errors'],
  messages: (json['messages'] as List<dynamic>).map((e) => RulesetsMessage.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as List<dynamic>).map((e) => ListZoneRulesetVersionsResponseResult.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'],
  resultInfo: json['result_info'] != null ? RulesetsResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final dynamic errors;

/// A list of warning messages.
final List<RulesetsMessage> messages;

/// A list of rulesets. The returned information will not include the rules in each ruleset.
final List<ListZoneRulesetVersionsResponseResult> result;

final dynamic success;

final RulesetsResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  'errors': ?errors,
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.map((e) => e.toJson()).toList(),
  'success': ?success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success'); } 
ListZoneRulesetVersionsResponse copyWith({dynamic Function()? errors, List<RulesetsMessage>? messages, List<ListZoneRulesetVersionsResponseResult>? result, dynamic Function()? success, RulesetsResultInfo Function()? resultInfo, }) { return ListZoneRulesetVersionsResponse(
  errors: errors != null ? errors() : this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success != null ? success() : this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListZoneRulesetVersionsResponse &&
          errors == other.errors &&
          listEquals(messages, other.messages) &&
          listEquals(result, other.result) &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(errors, Object.hashAll(messages), Object.hashAll(result), success, resultInfo); } 
@override String toString() { return 'ListZoneRulesetVersionsResponse(errors: $errors, messages: $messages, result: $result, success: $success, resultInfo: $resultInfo)'; } 
 }
