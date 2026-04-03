// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/firewall_account_identifier.dart';import '../models/firewall_rule_identifier.dart';import '../models/firewall_schemas_mode.dart';import '../models/firewall_schemas_rule.dart';import '../models/ip_access_rules_for_an_account_create_an_ip_access_rule_request.dart';import '../models/ip_access_rules_for_an_account_list_ip_access_rules_configuration_target.dart';import '../models/ip_access_rules_for_an_account_list_ip_access_rules_direction.dart';import '../models/ip_access_rules_for_an_account_list_ip_access_rules_match.dart';import '../models/ip_access_rules_for_an_account_list_ip_access_rules_order.dart';import '../models/response_common31_result.dart';/// IpAccessRulesForAnAccountApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class IpAccessRulesForAnAccountApi with ApiExecutor {const IpAccessRulesForAnAccountApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List IP Access rules
///
/// Fetches IP Access rules of an account. These rules apply to all the zones in the account. You can filter the results using several optional parameters.
///
/// `GET /accounts/{account_id}/firewall/access_rules/rules`
Future<ApiResult<List<FirewallSchemasRule>?, Never>> ipAccessRulesForAnAccountListIpAccessRules({required FirewallAccountIdentifier accountId, FirewallSchemasMode? mode, IpAccessRulesForAnAccountListIpAccessRulesConfigurationTarget? configurationTarget, String? configurationValue, String? notes, IpAccessRulesForAnAccountListIpAccessRulesMatch? match, double? page, double? perPage, IpAccessRulesForAnAccountListIpAccessRulesOrder? order, IpAccessRulesForAnAccountListIpAccessRulesDirection? direction, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/firewall/access_rules/rules',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => FirewallSchemasRule.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create an IP Access rule
///
/// Creates a new IP Access rule for an account. The rule will apply to all zones in the account.
/// 
/// Note: To create an IP Access rule that applies to a single zone, refer to the [IP Access rules for a zone](#ip-access-rules-for-a-zone) endpoints.
///
/// `POST /accounts/{account_id}/firewall/access_rules/rules`
Future<ApiResult<FirewallSchemasRule?, Never>> ipAccessRulesForAnAccountCreateAnIpAccessRule({required FirewallAccountIdentifier accountId, required IpAccessRulesForAnAccountCreateAnIpAccessRuleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/firewall/access_rules/rules',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? FirewallSchemasRule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get an IP Access rule
///
/// Fetches the details of an IP Access rule defined at the account level.
///
/// `GET /accounts/{account_id}/firewall/access_rules/rules/{rule_id}`
Future<ApiResult<FirewallSchemasRule?, Never>> ipAccessRulesForAnAccountGetAnIpAccessRule({required FirewallRuleIdentifier ruleId, required FirewallAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/firewall/access_rules/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? FirewallSchemasRule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update an IP Access rule
///
/// Updates an IP Access rule defined at the account level.
/// 
/// Note: This operation will affect all zones in the account.
///
/// `PATCH /accounts/{account_id}/firewall/access_rules/rules/{rule_id}`
Future<ApiResult<FirewallSchemasRule?, Never>> ipAccessRulesForAnAccountUpdateAnIpAccessRule({required FirewallRuleIdentifier ruleId, required FirewallAccountIdentifier accountId, required FirewallSchemasRule body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/firewall/access_rules/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? FirewallSchemasRule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete an IP Access rule
///
/// Deletes an existing IP Access rule defined at the account level.
/// 
/// Note: This operation will affect all zones in the account.
///
/// `DELETE /accounts/{account_id}/firewall/access_rules/rules/{rule_id}`
Future<ApiResult<ResponseCommon31Result, Never>> ipAccessRulesForAnAccountDeleteAnIpAccessRule({required FirewallRuleIdentifier ruleId, required FirewallAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/firewall/access_rules/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e as Map<String, dynamic>).toList(), fromC: (v) => v as String,);
  },
);
 } 
 }
