// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/rum_create_rule_request.dart';import '../models/rum_create_site_request.dart';import '../models/rum_identifier.dart';import '../models/rum_modify_rules_request.dart';import '../models/rum_order_by.dart';import '../models/rum_page.dart';import '../models/rum_per_page.dart';import '../models/rum_rule.dart';import '../models/rum_rule_id_response_single_result.dart';import '../models/rum_rule_identifier.dart';import '../models/rum_rules_response_collection_result.dart';import '../models/rum_ruleset_identifier.dart';import '../models/rum_rum_site.dart';import '../models/rum_site.dart';import '../models/rum_site_tag_response_single_result.dart';import '../models/rum_toggle_rum_request.dart';import '../models/rum_update_site_request.dart';/// WebAnalyticsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class WebAnalyticsApi with ApiExecutor {const WebAnalyticsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Create a Web Analytics site
///
/// Creates a new Web Analytics site.
///
/// `POST /accounts/{account_id}/rum/site_info`
Future<ApiResult<RumSite?, Never>> webAnalyticsCreateSite({required RumIdentifier accountId, required RumCreateSiteRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rum/site_info',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? RumSite.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get a Web Analytics site
///
/// Retrieves a Web Analytics site.
///
/// `GET /accounts/{account_id}/rum/site_info/{site_id}`
Future<ApiResult<RumSite?, Never>> webAnalyticsGetSite({required RumIdentifier accountId, required RumIdentifier siteId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rum/site_info/${Uri.encodeComponent(siteId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? RumSite.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update a Web Analytics site
///
/// Updates an existing Web Analytics site.
///
/// `PUT /accounts/{account_id}/rum/site_info/{site_id}`
Future<ApiResult<RumSite?, Never>> webAnalyticsUpdateSite({required RumIdentifier accountId, required RumIdentifier siteId, required RumUpdateSiteRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rum/site_info/${Uri.encodeComponent(siteId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? RumSite.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete a Web Analytics site
///
/// Deletes an existing Web Analytics site.
///
/// `DELETE /accounts/{account_id}/rum/site_info/{site_id}`
Future<ApiResult<RumSiteTagResponseSingleResult?, Never>> webAnalyticsDeleteSite({required RumIdentifier accountId, required RumIdentifier siteId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rum/site_info/${Uri.encodeComponent(siteId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? RumSiteTagResponseSingleResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// List Web Analytics sites
///
/// Lists all Web Analytics sites of an account.
///
/// `GET /accounts/{account_id}/rum/site_info/list`
Future<ApiResult<List<RumSite>?, Never>> webAnalyticsListSites({required RumIdentifier accountId, RumPerPage? perPage, RumPage? page, RumOrderBy? orderBy, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (orderBy != null) {
  queryParameters['order_by'] = orderBy.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rum/site_info/list',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => RumSite.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create a Web Analytics rule
///
/// Creates a new rule in a Web Analytics ruleset.
///
/// `POST /accounts/{account_id}/rum/v2/{ruleset_id}/rule`
Future<ApiResult<RumRule?, Never>> webAnalyticsCreateRule({required RumIdentifier accountId, required RumRulesetIdentifier rulesetId, required RumCreateRuleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rum/v2/${Uri.encodeComponent(rulesetId.toString())}/rule',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? RumRule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update a Web Analytics rule
///
/// Updates a rule in a Web Analytics ruleset.
///
/// `PUT /accounts/{account_id}/rum/v2/{ruleset_id}/rule/{rule_id}`
Future<ApiResult<RumRule?, Never>> webAnalyticsUpdateRule({required RumIdentifier accountId, required RumRulesetIdentifier rulesetId, required RumRuleIdentifier ruleId, required RumCreateRuleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rum/v2/${Uri.encodeComponent(rulesetId.toString())}/rule/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? RumRule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete a Web Analytics rule
///
/// Deletes an existing rule from a Web Analytics ruleset.
///
/// `DELETE /accounts/{account_id}/rum/v2/{ruleset_id}/rule/{rule_id}`
Future<ApiResult<RumRuleIdResponseSingleResult?, Never>> webAnalyticsDeleteRule({required RumIdentifier accountId, required RumRulesetIdentifier rulesetId, required RumRuleIdentifier ruleId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rum/v2/${Uri.encodeComponent(rulesetId.toString())}/rule/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? RumRuleIdResponseSingleResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// List rules in Web Analytics ruleset
///
/// Lists all the rules in a Web Analytics ruleset.
///
/// `GET /accounts/{account_id}/rum/v2/{ruleset_id}/rules`
Future<ApiResult<RumRulesResponseCollectionResult?, Never>> webAnalyticsListRules({required RumIdentifier accountId, required RumRulesetIdentifier rulesetId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rum/v2/${Uri.encodeComponent(rulesetId.toString())}/rules',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? RumRulesResponseCollectionResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update Web Analytics rules
///
/// Modifies one or more rules in a Web Analytics ruleset with a single request.
///
/// `POST /accounts/{account_id}/rum/v2/{ruleset_id}/rules`
Future<ApiResult<RumRulesResponseCollectionResult?, Never>> webAnalyticsModifyRules({required RumIdentifier accountId, required RumRulesetIdentifier rulesetId, required RumModifyRulesRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rum/v2/${Uri.encodeComponent(rulesetId.toString())}/rules',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? RumRulesResponseCollectionResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get RUM status for a zone
///
/// Retrieves RUM status for a zone.
///
/// `GET /zones/{zone_id}/settings/rum`
Future<ApiResult<RumRumSite?, Never>> webAnalyticsGetRumStatus({required RumIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/settings/rum',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? RumRumSite.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Toggle RUM on/off for a zone
///
/// Toggles RUM on/off for an existing zone.
///
/// `PATCH /zones/{zone_id}/settings/rum`
Future<ApiResult<RumRumSite?, Never>> webAnalyticsToggleRum({required RumIdentifier zoneId, required RumToggleRumRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/settings/rum',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? RumRumSite.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
