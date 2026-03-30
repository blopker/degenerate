// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/firewall_components_ua_rule_id.dart';import '../models/firewall_description_search.dart';import '../models/firewall_firewalluablock.dart';import '../models/firewall_identifier.dart';import '../models/user_agent_blocking_rules_create_a_user_agent_blocking_rule_request.dart';import '../models/user_agent_blocking_rules_delete_a_user_agent_blocking_rule_response_result.dart';import '../models/user_agent_blocking_rules_update_a_user_agent_blocking_rule_request.dart';/// UserAgentBlockingRulesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class UserAgentBlockingRulesApi with ApiExecutor {const UserAgentBlockingRulesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List User Agent Blocking rules
///
/// Fetches User Agent Blocking rules in a zone. You can filter the results using several optional parameters.
///
/// `GET /zones/{zone_id}/firewall/ua_rules`
Future<ApiResult<List<FirewallFirewalluablock>?, Never>> userAgentBlockingRulesListUserAgentBlockingRules({required FirewallIdentifier zoneId, double? page, FirewallDescriptionSearch? description, double? perPage, String? userAgent, bool? paused, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (description != null) {
  queryParameters['description'] = description.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (userAgent != null) {
  queryParameters['user_agent'] = userAgent;
}
if (paused != null) {
  queryParameters['paused'] = paused.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/firewall/ua_rules',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => FirewallFirewalluablock.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create a User Agent Blocking rule
///
/// Creates a new User Agent Blocking rule in a zone.
///
/// `POST /zones/{zone_id}/firewall/ua_rules`
Future<ApiResult<FirewallFirewalluablock?, Never>> userAgentBlockingRulesCreateAUserAgentBlockingRule({required FirewallIdentifier zoneId, required UserAgentBlockingRulesCreateAUserAgentBlockingRuleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/firewall/ua_rules',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? FirewallFirewalluablock.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get a User Agent Blocking rule
///
/// Fetches the details of a User Agent Blocking rule.
///
/// `GET /zones/{zone_id}/firewall/ua_rules/{ua_rule_id}`
Future<ApiResult<FirewallFirewalluablock?, Never>> userAgentBlockingRulesGetAUserAgentBlockingRule({required FirewallComponentsUaRuleId uaRuleId, required FirewallIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/firewall/ua_rules/${Uri.encodeComponent(uaRuleId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? FirewallFirewalluablock.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update a User Agent Blocking rule
///
/// Updates an existing User Agent Blocking rule.
///
/// `PUT /zones/{zone_id}/firewall/ua_rules/{ua_rule_id}`
Future<ApiResult<FirewallFirewalluablock?, Never>> userAgentBlockingRulesUpdateAUserAgentBlockingRule({required FirewallComponentsUaRuleId uaRuleId, required FirewallIdentifier zoneId, required UserAgentBlockingRulesUpdateAUserAgentBlockingRuleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/firewall/ua_rules/${Uri.encodeComponent(uaRuleId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? FirewallFirewalluablock.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete a User Agent Blocking rule
///
/// Deletes an existing User Agent Blocking rule.
///
/// `DELETE /zones/{zone_id}/firewall/ua_rules/{ua_rule_id}`
Future<ApiResult<UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponseResult?, Never>> userAgentBlockingRulesDeleteAUserAgentBlockingRule({required FirewallComponentsUaRuleId uaRuleId, required FirewallIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/firewall/ua_rules/${Uri.encodeComponent(uaRuleId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
