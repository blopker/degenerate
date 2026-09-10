// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/zero_trust_gateway_rules.dart';import '../models/zero_trust_gateway_rules_create_zero_trust_gateway_rule_request.dart';import '../models/zero_trust_gateway_rules_create_zero_trust_gateway_rule_response4_xx.dart';import '../models/zero_trust_gateway_rules_delete_zero_trust_gateway_rule_response4_xx.dart';import '../models/zero_trust_gateway_rules_list_zero_trust_gateway_rules_response4_xx.dart';import '../models/zero_trust_gateway_rules_list_zero_trust_gateway_rules_tenant_response4_xx.dart';import '../models/zero_trust_gateway_rules_reset_expiration_zero_trust_gateway_rule_response4_xx.dart';import '../models/zero_trust_gateway_rules_update_zero_trust_gateway_rule_request.dart';import '../models/zero_trust_gateway_rules_update_zero_trust_gateway_rule_response4_xx.dart';import '../models/zero_trust_gateway_rules_zero_trust_gateway_rule_details_response4_xx.dart';import '../models/zero_trust_gateway_schemas_identifier.dart';import '../models/zero_trust_gateway_schemas_uuid.dart';/// ZeroTrustGatewayRulesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZeroTrustGatewayRulesApi with ApiExecutor {const ZeroTrustGatewayRulesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Zero Trust Gateway rules
///
/// List Zero Trust Gateway rules for an account.
///
/// `GET /accounts/{account_id}/gateway/rules`
Future<ApiResult<List<ZeroTrustGatewayRules>?, ZeroTrustGatewayRulesListZeroTrustGatewayRulesResponse4Xx>> zeroTrustGatewayRulesListZeroTrustGatewayRules({required ZeroTrustGatewaySchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/rules',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>?)?.map((e) => ZeroTrustGatewayRules.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustGatewayRulesListZeroTrustGatewayRulesResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Create a Zero Trust Gateway rule
///
/// Create a new Zero Trust Gateway rule.
///
/// `POST /accounts/{account_id}/gateway/rules`
Future<ApiResult<ZeroTrustGatewayRules?, ZeroTrustGatewayRulesCreateZeroTrustGatewayRuleResponse4Xx>> zeroTrustGatewayRulesCreateZeroTrustGatewayRule({required ZeroTrustGatewaySchemasIdentifier accountId, required ZeroTrustGatewayRulesCreateZeroTrustGatewayRuleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/rules',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? ZeroTrustGatewayRules.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustGatewayRulesCreateZeroTrustGatewayRuleResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get Zero Trust Gateway rule details.
///
/// Get a single Zero Trust Gateway rule.
///
/// `GET /accounts/{account_id}/gateway/rules/{rule_id}`
Future<ApiResult<ZeroTrustGatewayRules?, ZeroTrustGatewayRulesZeroTrustGatewayRuleDetailsResponse4Xx>> zeroTrustGatewayRulesZeroTrustGatewayRuleDetails({required ZeroTrustGatewaySchemasUuid ruleId, required ZeroTrustGatewaySchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? ZeroTrustGatewayRules.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustGatewayRulesZeroTrustGatewayRuleDetailsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update a Zero Trust Gateway rule
///
/// Update a configured Zero Trust Gateway rule.
///
/// `PUT /accounts/{account_id}/gateway/rules/{rule_id}`
Future<ApiResult<ZeroTrustGatewayRules?, ZeroTrustGatewayRulesUpdateZeroTrustGatewayRuleResponse4Xx>> zeroTrustGatewayRulesUpdateZeroTrustGatewayRule({required ZeroTrustGatewaySchemasUuid ruleId, required ZeroTrustGatewaySchemasIdentifier accountId, required ZeroTrustGatewayRulesUpdateZeroTrustGatewayRuleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? ZeroTrustGatewayRules.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustGatewayRulesUpdateZeroTrustGatewayRuleResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Delete a Zero Trust Gateway rule
///
/// Delete a Zero Trust Gateway rule.
///
/// `DELETE /accounts/{account_id}/gateway/rules/{rule_id}`
Future<ApiResult<Map<String, dynamic>?, ZeroTrustGatewayRulesDeleteZeroTrustGatewayRuleResponse4Xx>> zeroTrustGatewayRulesDeleteZeroTrustGatewayRule({required ZeroTrustGatewaySchemasUuid ruleId, required ZeroTrustGatewaySchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] as Map<String, dynamic>?;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustGatewayRulesDeleteZeroTrustGatewayRuleResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Reset the expiration of a Zero Trust Gateway Rule
///
/// Resets the expiration of a Zero Trust Gateway Rule if its duration elapsed and it has a default duration. The Zero Trust Gateway Rule must have values  for both `expiration.expires_at` and `expiration.duration`.
///
/// `POST /accounts/{account_id}/gateway/rules/{rule_id}/reset_expiration`
Future<ApiResult<ZeroTrustGatewayRules?, ZeroTrustGatewayRulesResetExpirationZeroTrustGatewayRuleResponse4Xx>> zeroTrustGatewayRulesResetExpirationZeroTrustGatewayRule({required ZeroTrustGatewaySchemasUuid ruleId, required ZeroTrustGatewaySchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/rules/${Uri.encodeComponent(ruleId.toString())}/reset_expiration',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? ZeroTrustGatewayRules.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustGatewayRulesResetExpirationZeroTrustGatewayRuleResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// List Zero Trust Gateway rules inherited from the parent account
///
/// List Zero Trust Gateway rules for the parent account of an account in the MSP configuration.
///
/// `GET /accounts/{account_id}/gateway/rules/tenant`
Future<ApiResult<List<ZeroTrustGatewayRules>?, ZeroTrustGatewayRulesListZeroTrustGatewayRulesTenantResponse4Xx>> zeroTrustGatewayRulesListZeroTrustGatewayRulesTenant({required ZeroTrustGatewaySchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/rules/tenant',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>?)?.map((e) => ZeroTrustGatewayRules.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustGatewayRulesListZeroTrustGatewayRulesTenantResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
