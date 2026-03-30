// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/zero_trust_gateway_audit_ssh_settings_components_schemas_single_response.dart';import '../models/zero_trust_gateway_schemas_identifier.dart';import '../models/zero_trust_update_audit_ssh_settings_request.dart';/// ZeroTrustSshSettingsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZeroTrustSshSettingsApi with ApiExecutor {const ZeroTrustSshSettingsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get Zero Trust SSH settings
///
/// Retrieve all Zero Trust Audit SSH and SSH with Access for Infrastructure settings for an account.
///
/// `GET /accounts/{account_id}/gateway/audit_ssh_settings`
Future<ApiResult<ZeroTrustGatewayAuditSshSettingsComponentsSchemasSingleResponse, Never>> zeroTrustGetAuditSshSettings({required ZeroTrustGatewaySchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/audit_ssh_settings',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZeroTrustGatewayAuditSshSettingsComponentsSchemasSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update Zero Trust SSH settings
///
/// Update Zero Trust Audit SSH and SSH with Access for Infrastructure settings for an account.
///
/// `PUT /accounts/{account_id}/gateway/audit_ssh_settings`
Future<ApiResult<ZeroTrustGatewayAuditSshSettingsComponentsSchemasSingleResponse, Never>> zeroTrustUpdateAuditSshSettings({required ZeroTrustGatewaySchemasIdentifier accountId, required ZeroTrustUpdateAuditSshSettingsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/audit_ssh_settings',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZeroTrustGatewayAuditSshSettingsComponentsSchemasSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Rotate Zero Trust SSH account seed
///
/// Rotate the SSH account seed that generates the host key identity when connecting through the Cloudflare SSH Proxy.
///
/// `POST /accounts/{account_id}/gateway/audit_ssh_settings/rotate_seed`
Future<ApiResult<ZeroTrustGatewayAuditSshSettingsComponentsSchemasSingleResponse, Never>> zeroTrustRotateSshAccountSeed({required ZeroTrustGatewaySchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/audit_ssh_settings/rotate_seed',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZeroTrustGatewayAuditSshSettingsComponentsSchemasSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
