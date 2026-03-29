// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/cloudflare_tunnel_configuration_put_configuration_request.dart';import '../models/response_common70.dart';import '../models/tunnel_identifier.dart';import '../models/tunnel_schemas_tunnel_id.dart';/// CloudflareTunnelConfigurationApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class CloudflareTunnelConfigurationApi with ApiExecutor {const CloudflareTunnelConfigurationApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get configuration
///
/// Gets the configuration for a remotely-managed tunnel
///
/// `GET /accounts/{account_id}/cfd_tunnel/{tunnel_id}/configurations`
Future<ApiResult<ResponseCommon70, Never>> cloudflareTunnelConfigurationGetConfiguration({required TunnelIdentifier accountId, required TunnelSchemasTunnelId tunnelId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cfd_tunnel/${Uri.encodeComponent(tunnelId.toString())}/configurations',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon70.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Put configuration
///
/// Adds or updates the configuration for a remotely-managed tunnel.
///
/// `PUT /accounts/{account_id}/cfd_tunnel/{tunnel_id}/configurations`
Future<ApiResult<ResponseCommon70, Never>> cloudflareTunnelConfigurationPutConfiguration({required TunnelIdentifier accountId, required TunnelSchemasTunnelId tunnelId, required CloudflareTunnelConfigurationPutConfigurationRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cfd_tunnel/${Uri.encodeComponent(tunnelId.toString())}/configurations',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon70.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
