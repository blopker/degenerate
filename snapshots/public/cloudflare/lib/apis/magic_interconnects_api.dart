// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/magic_identifier.dart';import '../models/magic_interconnect_tunnel_update_request.dart';import '../models/response_common48.dart';/// MagicInterconnectsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class MagicInterconnectsApi with ApiExecutor {const MagicInterconnectsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List interconnects
///
/// Lists interconnects associated with an account.
///
/// `GET /accounts/{account_id}/magic/cf_interconnects`
Future<ApiResult<ResponseCommon48, Never>> magicInterconnectsListInterconnects({required MagicIdentifier accountId, bool? xMagicNewHcTarget, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
if (xMagicNewHcTarget != null) headers['x-magic-new-hc-target'] = xMagicNewHcTarget.toString();

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cf_interconnects',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon48.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update multiple interconnects
///
/// Updates multiple interconnects associated with an account. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.
///
/// `PUT /accounts/{account_id}/magic/cf_interconnects`
Future<ApiResult<ResponseCommon48, Never>> magicInterconnectsUpdateMultipleInterconnects({required MagicIdentifier accountId, bool? xMagicNewHcTarget, required dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';
if (xMagicNewHcTarget != null) headers['x-magic-new-hc-target'] = xMagicNewHcTarget.toString();

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cf_interconnects',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon48.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List interconnect Details
///
/// Lists details for a specific interconnect.
///
/// `GET /accounts/{account_id}/magic/cf_interconnects/{cf_interconnect_id}`
Future<ApiResult<ResponseCommon48, Never>> magicInterconnectsListInterconnectDetails({required MagicIdentifier cfInterconnectId, required MagicIdentifier accountId, bool? xMagicNewHcTarget, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
if (xMagicNewHcTarget != null) headers['x-magic-new-hc-target'] = xMagicNewHcTarget.toString();

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cf_interconnects/${Uri.encodeComponent(cfInterconnectId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon48.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update interconnect
///
/// Updates a specific interconnect associated with an account. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.
///
/// `PUT /accounts/{account_id}/magic/cf_interconnects/{cf_interconnect_id}`
Future<ApiResult<ResponseCommon48, Never>> magicInterconnectsUpdateInterconnect({required MagicIdentifier cfInterconnectId, required MagicIdentifier accountId, bool? xMagicNewHcTarget, required MagicInterconnectTunnelUpdateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';
if (xMagicNewHcTarget != null) headers['x-magic-new-hc-target'] = xMagicNewHcTarget.toString();

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cf_interconnects/${Uri.encodeComponent(cfInterconnectId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon48.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
