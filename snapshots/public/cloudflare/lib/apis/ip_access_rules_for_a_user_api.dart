// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/firewall_rule.dart';import '../models/firewall_rule_identifier.dart';import '../models/firewall_rule_single_id_response_result.dart';import '../models/firewall_schemas_mode.dart';import '../models/ip_access_rules_for_a_user_create_an_ip_access_rule_request.dart';import '../models/ip_access_rules_for_a_user_list_ip_access_rules_configuration_target.dart';import '../models/ip_access_rules_for_a_user_list_ip_access_rules_direction.dart';import '../models/ip_access_rules_for_a_user_list_ip_access_rules_match.dart';import '../models/ip_access_rules_for_a_user_list_ip_access_rules_order.dart';import '../models/ip_access_rules_for_a_user_update_an_ip_access_rule_request.dart';/// IpAccessRulesForAUserApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class IpAccessRulesForAUserApi with ApiExecutor {const IpAccessRulesForAUserApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List IP Access rules
///
/// Fetches IP Access rules of the user. You can filter the results using several optional parameters.
///
/// `GET /user/firewall/access_rules/rules`
Future<ApiResult<List<FirewallRule>?, Never>> ipAccessRulesForAUserListIpAccessRules({FirewallSchemasMode? mode, IpAccessRulesForAUserListIpAccessRulesConfigurationTarget? configurationTarget, String? configurationValue, String? notes, IpAccessRulesForAUserListIpAccessRulesMatch? match, double? page, double? perPage, IpAccessRulesForAUserListIpAccessRulesOrder? order, IpAccessRulesForAUserListIpAccessRulesDirection? direction, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (mode != null) {
  queryParameters['mode'] = mode.toJson();
}
if (configurationTarget != null) {
  queryParameters['configuration.target'] = configurationTarget.toJson();
}
if (configurationValue != null) {
  queryParameters['configuration.value'] = configurationValue;
}
if (notes != null) {
  queryParameters['notes'] = notes;
}
if (match != null) {
  queryParameters['match'] = match.toJson();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (order != null) {
  queryParameters['order'] = order.toJson();
}
if (direction != null) {
  queryParameters['direction'] = direction.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/user/firewall/access_rules/rules',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => FirewallRule.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create an IP Access rule
///
/// Creates a new IP Access rule for all zones owned by the current user.
/// 
/// Note: To create an IP Access rule that applies to a specific zone, refer to the [IP Access rules for a zone](#ip-access-rules-for-a-zone) endpoints.
///
/// `POST /user/firewall/access_rules/rules`
Future<ApiResult<FirewallRule?, Never>> ipAccessRulesForAUserCreateAnIpAccessRule({required IpAccessRulesForAUserCreateAnIpAccessRuleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/user/firewall/access_rules/rules',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? FirewallRule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update an IP Access rule
///
/// Updates an IP Access rule defined at the user level. You can only update the rule action (`mode` parameter) and notes.
///
/// `PATCH /user/firewall/access_rules/rules/{rule_id}`
Future<ApiResult<FirewallRule?, Never>> ipAccessRulesForAUserUpdateAnIpAccessRule({required FirewallRuleIdentifier ruleId, required IpAccessRulesForAUserUpdateAnIpAccessRuleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/user/firewall/access_rules/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? FirewallRule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete an IP Access rule
///
/// Deletes an IP Access rule at the user level.
/// 
/// Note: Deleting a user-level rule will affect all zones owned by the user.
///
/// `DELETE /user/firewall/access_rules/rules/{rule_id}`
Future<ApiResult<FirewallRuleSingleIdResponseResult?, Never>> ipAccessRulesForAUserDeleteAnIpAccessRule({required FirewallRuleIdentifier ruleId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/user/firewall/access_rules/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? FirewallRuleSingleIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
