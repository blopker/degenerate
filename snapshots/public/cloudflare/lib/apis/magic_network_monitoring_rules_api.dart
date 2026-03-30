// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/magic_network_monitoring_rules_create_rules_request.dart';import '../models/magic_network_monitoring_rules_update_rule_request.dart';import '../models/magic_network_monitoring_rules_update_rules_request.dart';import '../models/magic_visibility_mnm_account_identifier.dart';import '../models/magic_visibility_mnm_mnm_rule.dart';import '../models/magic_visibility_mnm_mnm_rule_advertisable_response.dart';import '../models/magic_visibility_mnm_rule_identifier.dart';/// MagicNetworkMonitoringRulesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class MagicNetworkMonitoringRulesApi with ApiExecutor {const MagicNetworkMonitoringRulesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List rules
///
/// Lists network monitoring rules for account.
///
/// `GET /accounts/{account_id}/mnm/rules`
Future<ApiResult<List<MagicVisibilityMnmMnmRule>?, Never>> magicNetworkMonitoringRulesListRules({required MagicVisibilityMnmAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/mnm/rules',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => MagicVisibilityMnmMnmRule.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create rules
///
/// Create network monitoring rules for account. Currently only supports creating a single rule per API request.
///
/// `POST /accounts/{account_id}/mnm/rules`
Future<ApiResult<MagicVisibilityMnmMnmRule?, Never>> magicNetworkMonitoringRulesCreateRules({required MagicVisibilityMnmAccountIdentifier accountId, required MagicNetworkMonitoringRulesCreateRulesRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/mnm/rules',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicVisibilityMnmMnmRule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update rules
///
/// Update network monitoring rules for account.
///
/// `PUT /accounts/{account_id}/mnm/rules`
Future<ApiResult<MagicVisibilityMnmMnmRule?, Never>> magicNetworkMonitoringRulesUpdateRules({required MagicVisibilityMnmAccountIdentifier accountId, required MagicNetworkMonitoringRulesUpdateRulesRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/mnm/rules',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicVisibilityMnmMnmRule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get rule
///
/// List a single network monitoring rule for account.
///
/// `GET /accounts/{account_id}/mnm/rules/{rule_id}`
Future<ApiResult<MagicVisibilityMnmMnmRule?, Never>> magicNetworkMonitoringRulesGetRule({required MagicVisibilityMnmRuleIdentifier ruleId, required MagicVisibilityMnmAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/mnm/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicVisibilityMnmMnmRule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update rule
///
/// Update a network monitoring rule for account.
///
/// `PATCH /accounts/{account_id}/mnm/rules/{rule_id}`
Future<ApiResult<MagicVisibilityMnmMnmRule?, Never>> magicNetworkMonitoringRulesUpdateRule({required MagicVisibilityMnmRuleIdentifier ruleId, required MagicVisibilityMnmAccountIdentifier accountId, required MagicNetworkMonitoringRulesUpdateRuleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/mnm/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicVisibilityMnmMnmRule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete rule
///
/// Delete a network monitoring rule for account.
///
/// `DELETE /accounts/{account_id}/mnm/rules/{rule_id}`
Future<ApiResult<MagicVisibilityMnmMnmRule?, Never>> magicNetworkMonitoringRulesDeleteRule({required MagicVisibilityMnmRuleIdentifier ruleId, required MagicVisibilityMnmAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/mnm/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicVisibilityMnmMnmRule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update advertisement for rule
///
/// Update advertisement for rule.
///
/// `PATCH /accounts/{account_id}/mnm/rules/{rule_id}/advertisement`
Future<ApiResult<MagicVisibilityMnmMnmRuleAdvertisableResponse?, Never>> magicNetworkMonitoringRulesUpdateAdvertisementForRule({required MagicVisibilityMnmRuleIdentifier ruleId, required MagicVisibilityMnmAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/mnm/rules/${Uri.encodeComponent(ruleId.toString())}/advertisement',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicVisibilityMnmMnmRuleAdvertisableResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
