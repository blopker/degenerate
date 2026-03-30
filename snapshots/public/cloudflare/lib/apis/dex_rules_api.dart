// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/create_dex_rule_response.dart';import '../models/delete_dex_rule_response.dart';import '../models/digital_experience_monitoring_account_identifier.dart';import '../models/digital_experience_monitoring_create_rule_body.dart';import '../models/digital_experience_monitoring_patch_rule_body.dart';import '../models/digital_experience_monitoring_uuid.dart';import '../models/get_dex_rule_response.dart';import '../models/list_dex_rules_response.dart';import '../models/list_dex_rules_sort_by.dart';import '../models/list_dex_rules_sort_order.dart';import '../models/update_dex_rule_response.dart';/// DexRulesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DexRulesApi with ApiExecutor {const DexRulesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List DEX Rules
///
/// `GET /accounts/{account_id}/dex/rules`
Future<ApiResult<ListDexRulesResponse, Never>> listDexRules({required DigitalExperienceMonitoringAccountIdentifier accountId, required double page, required double perPage, ListDexRulesSortOrder? sortOrder, ListDexRulesSortBy? sortBy, String? name, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['page'] = page.toString();
queryParameters['per_page'] = perPage.toString();
if (sortOrder != null) {
  queryParameters['sort_order'] = sortOrder.toJson();
}
if (sortBy != null) {
  queryParameters['sort_by'] = sortBy.toJson();
}
if (name != null) {
  queryParameters['name'] = name;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dex/rules',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListDexRulesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a DEX Rule
///
/// `POST /accounts/{account_id}/dex/rules`
Future<ApiResult<CreateDexRuleResponse, Never>> createDexRule({required DigitalExperienceMonitoringAccountIdentifier accountId, required DigitalExperienceMonitoringCreateRuleBody body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dex/rules',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CreateDexRuleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get DEX Rule
///
/// Get details for a DEX Rule
///
/// `GET /accounts/{account_id}/dex/rules/{rule_id}`
Future<ApiResult<GetDexRuleResponse, Never>> getDexRule({required DigitalExperienceMonitoringAccountIdentifier accountId, required DigitalExperienceMonitoringUuid ruleId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dex/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GetDexRuleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a DEX Rule
///
/// `PATCH /accounts/{account_id}/dex/rules/{rule_id}`
Future<ApiResult<UpdateDexRuleResponse, Never>> updateDexRule({required DigitalExperienceMonitoringAccountIdentifier accountId, required DigitalExperienceMonitoringUuid ruleId, required DigitalExperienceMonitoringPatchRuleBody body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dex/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return UpdateDexRuleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a DEX Rule
///
/// `DELETE /accounts/{account_id}/dex/rules/{rule_id}`
Future<ApiResult<DeleteDexRuleResponse, Never>> deleteDexRule({required DigitalExperienceMonitoringAccountIdentifier accountId, required DigitalExperienceMonitoringUuid ruleId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dex/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DeleteDexRuleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
