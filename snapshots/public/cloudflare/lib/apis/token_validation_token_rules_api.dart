// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/shield_action.dart';import '../models/shield_edit_single_rule_request.dart';import '../models/shield_enabled.dart';import '../models/shield_endpoint.dart';import '../models/shield_host.dart';import '../models/shield_identifier.dart';import '../models/shield_method.dart';import '../models/shield_rule.dart';import '../models/shield_rule_properties.dart';import '../models/shield_selector.dart';import '../models/shield_selector_operation_state.dart';import '../models/shield_uuid.dart';import '../models/token_validation_rules_bulk_edit_request.dart';import '../models/token_validation_rules_preview_response_result.dart';/// TokenValidationTokenRulesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class TokenValidationTokenRulesApi with ApiExecutor {const TokenValidationTokenRulesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List token validation rules
///
/// `GET /zones/{zone_id}/token_validation/rules`
Future<ApiResult<List<ShieldRule>, Never>> tokenValidationRulesList({required ShieldIdentifier zoneId, int? perPage, int? page, List<ShieldUuid>? tokenConfiguration, ShieldAction? action, ShieldEnabled? enabled, ShieldUuid? id, ShieldUuid? ruleId, ShieldHost? host, ShieldHost? hostname, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (tokenConfiguration != null) {
for (final item in tokenConfiguration) {
  queryParametersList.add(ApiQueryParameter(name: 'token_configuration', value: item.toJson()));
}
}
if (action != null) {
  queryParameters['action'] = action.toJson();
}
if (enabled != null) {
  queryParameters['enabled'] = enabled.toString();
}
if (id != null) {
  queryParameters['id'] = id.toString();
}
if (ruleId != null) {
  queryParameters['rule_id'] = ruleId.toString();
}
if (host != null) {
  queryParameters['host'] = host.toString();
}
if (hostname != null) {
  queryParameters['hostname'] = hostname.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/token_validation/rules',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>).map((e) => ShieldRule.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create a token validation rule
///
/// Create a token validation rule.
///
/// `POST /zones/{zone_id}/token_validation/rules`
Future<ApiResult<ShieldRule, Never>> tokenValidationRulesCreate({required ShieldIdentifier zoneId, required ShieldRuleProperties body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/token_validation/rules',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return ShieldRule.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// Get a zone token validation rule
///
/// Get a zone token validation rule.
///
/// `GET /zones/{zone_id}/token_validation/rules/{rule_id}`
Future<ApiResult<ShieldRule, Never>> tokenValidationRulesGet({required ShieldIdentifier zoneId, required ShieldUuid ruleId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/token_validation/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return ShieldRule.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// Edit a zone token validation rule
///
/// Edit a zone token validation rule.
///
/// `PATCH /zones/{zone_id}/token_validation/rules/{rule_id}`
Future<ApiResult<ShieldRule, Never>> tokenValidationRulesEdit({required ShieldIdentifier zoneId, required ShieldUuid ruleId, required ShieldEditSingleRuleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/token_validation/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return ShieldRule.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// Delete a zone token validation rule
///
/// Delete a zone token validation rule.
///
/// `DELETE /zones/{zone_id}/token_validation/rules/{rule_id}`
Future<ApiResult<Map<String, dynamic>?, Never>> tokenValidationRulesDelete({required ShieldIdentifier zoneId, required ShieldUuid ruleId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/token_validation/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>?;
  },
);
 } 
/// Bulk create token validation rules
///
/// Create zone token validation rules.
/// 
/// A request can create multiple Token Validation Rules.
/// 
///
/// `POST /zones/{zone_id}/token_validation/rules/bulk`
Future<ApiResult<List<ShieldRule>, Never>> tokenValidationRulesBulkCreate({required ShieldIdentifier zoneId, required List<ShieldRuleProperties> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/token_validation/rules/bulk',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>).map((e) => ShieldRule.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Bulk edit token validation rules
///
/// Edit token validation rules.
/// 
/// A request can update multiple Token Validation Rules.
/// 
/// Rules can be re-ordered using the `position` field.
/// 
/// Returns all updated rules.
/// 
///
/// `PATCH /zones/{zone_id}/token_validation/rules/bulk`
Future<ApiResult<List<ShieldRule>, Never>> tokenValidationRulesBulkEdit({required ShieldIdentifier zoneId, required List<TokenValidationRulesBulkEditRequest> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/token_validation/rules/bulk',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>).map((e) => ShieldRule.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Preview operations covered by a Token Validation rule
///
/// Preview operations covered by a Token Validation rule.
/// 
/// The API will return all operations on a zone annotated with an additional `state` field.
/// Operations with an `included` `state` will be covered by a Token Validation Rule.
/// 
///
/// `POST /zones/{zone_id}/token_validation/rules/preview`
Future<ApiResult<TokenValidationRulesPreviewResponseResult, Never>> tokenValidationRulesPreview({required ShieldIdentifier zoneId, int? perPage, int? page, List<ShieldSelectorOperationState>? state, List<ShieldHost>? host, List<ShieldHost>? hostname, List<ShieldMethod>? method, List<ShieldEndpoint>? endpoint, required ShieldSelector body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (state != null) {
for (final item in state) {
  queryParametersList.add(ApiQueryParameter(name: 'state', value: item.toJson()));
}
}
if (host != null) {
for (final item in host) {
  queryParametersList.add(ApiQueryParameter(name: 'host', value: item.toJson()));
}
}
if (hostname != null) {
for (final item in hostname) {
  queryParametersList.add(ApiQueryParameter(name: 'hostname', value: item.toJson()));
}
}
if (method != null) {
for (final item in method) {
  queryParametersList.add(ApiQueryParameter(name: 'method', value: item.toJson()));
}
}
if (endpoint != null) {
for (final item in endpoint) {
  queryParametersList.add(ApiQueryParameter(name: 'endpoint', value: item.toJson()));
}
}

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/token_validation/rules/preview',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return TokenValidationRulesPreviewResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
 }
