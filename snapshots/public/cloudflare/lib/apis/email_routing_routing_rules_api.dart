// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/email_catch_all_rule.dart';import '../models/email_create_rule_properties.dart';import '../models/email_identifier.dart';import '../models/email_rule_identifier.dart';import '../models/email_rule_properties.dart';import '../models/email_update_catch_all_rule_properties.dart';import '../models/email_update_rule_properties.dart';/// EmailRoutingRoutingRulesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class EmailRoutingRoutingRulesApi with ApiExecutor {const EmailRoutingRoutingRulesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List routing rules
///
/// Lists existing routing rules.
///
/// `GET /zones/{zone_id}/email/routing/rules`
Future<ApiResult<List<EmailRuleProperties>?, Never>> emailRoutingRulesListRoutingRules({required EmailIdentifier zoneId, double? page, double? perPage, bool? enabled, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (enabled != null) {
  queryParameters['enabled'] = enabled.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/email/routing/rules',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => EmailRuleProperties.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create routing rule
///
/// Rules consist of a set of criteria for matching emails (such as an email being sent to a specific custom email address) plus a set of actions to take on the email (like forwarding it to a specific destination address).
///
/// `POST /zones/{zone_id}/email/routing/rules`
Future<ApiResult<EmailRuleProperties?, Never>> emailRoutingRulesCreateRoutingRule({required EmailIdentifier zoneId, required EmailCreateRuleProperties body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/email/routing/rules',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? EmailRuleProperties.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get routing rule
///
/// Get information for a specific routing rule already created.
///
/// `GET /zones/{zone_id}/email/routing/rules/{rule_identifier}`
Future<ApiResult<EmailRuleProperties?, Never>> emailRoutingRulesGetRoutingRule({required EmailRuleIdentifier ruleIdentifier, required EmailIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/email/routing/rules/${Uri.encodeComponent(ruleIdentifier.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? EmailRuleProperties.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update routing rule
///
/// Update actions and matches, or enable/disable specific routing rules.
///
/// `PUT /zones/{zone_id}/email/routing/rules/{rule_identifier}`
Future<ApiResult<EmailRuleProperties?, Never>> emailRoutingRulesUpdateRoutingRule({required EmailRuleIdentifier ruleIdentifier, required EmailIdentifier zoneId, required EmailUpdateRuleProperties body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/email/routing/rules/${Uri.encodeComponent(ruleIdentifier.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? EmailRuleProperties.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete routing rule
///
/// Delete a specific routing rule.
///
/// `DELETE /zones/{zone_id}/email/routing/rules/{rule_identifier}`
Future<ApiResult<EmailRuleProperties?, Never>> emailRoutingRulesDeleteRoutingRule({required EmailRuleIdentifier ruleIdentifier, required EmailIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/email/routing/rules/${Uri.encodeComponent(ruleIdentifier.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? EmailRuleProperties.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get catch-all rule
///
/// Get information on the default catch-all routing rule.
///
/// `GET /zones/{zone_id}/email/routing/rules/catch_all`
Future<ApiResult<EmailCatchAllRule?, Never>> emailRoutingRulesGetCatchAllRule({required EmailIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/email/routing/rules/catch_all',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? EmailCatchAllRule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update catch-all rule
///
/// Enable or disable catch-all routing rule, or change action to forward to specific destination address.
///
/// `PUT /zones/{zone_id}/email/routing/rules/catch_all`
Future<ApiResult<EmailCatchAllRule?, Never>> emailRoutingRulesUpdateCatchAllRule({required EmailIdentifier zoneId, required EmailUpdateCatchAllRuleProperties body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/email/routing/rules/catch_all',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? EmailCatchAllRule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
