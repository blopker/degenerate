// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/magic_components_schemas_modified_tunnels_collection_response_result.dart';import '../models/magic_components_schemas_tunnel_modified_response_result.dart';import '../models/magic_components_schemas_tunnel_single_response_result.dart';import '../models/magic_components_schemas_tunnels_collection_response_result.dart';import '../models/magic_identifier.dart';import '../models/magic_interconnect_tunnel_update_request_request.dart';import '../models/magic_interconnects_list_interconnect_details_response4xx.dart';import '../models/magic_interconnects_list_interconnects_response4xx.dart';import '../models/magic_interconnects_update_interconnect_response4xx.dart';import '../models/magic_interconnects_update_multiple_interconnects_response4xx.dart';/// MagicInterconnectsApi operations.
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
Future<ApiResult<MagicComponentsSchemasTunnelsCollectionResponseResult, MagicInterconnectsListInterconnectsResponse4xx>> magicInterconnectsListInterconnects({required MagicIdentifier accountId, bool? xMagicNewHcTarget, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
if (xMagicNewHcTarget != null) {
  headers['x-magic-new-hc-target'] = xMagicNewHcTarget.toString();
}

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cf_interconnects',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  MagicComponentsSchemasTunnelsCollectionResponseResult.fromJson(json['result'] as Map<String, dynamic>);}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  MagicInterconnectsListInterconnectsResponse4xx.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Update multiple interconnects
///
/// Updates multiple interconnects associated with an account. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.
///
/// `PUT /accounts/{account_id}/magic/cf_interconnects`
Future<ApiResult<MagicComponentsSchemasModifiedTunnelsCollectionResponseResult, MagicInterconnectsUpdateMultipleInterconnectsResponse4xx>> magicInterconnectsUpdateMultipleInterconnects({required MagicIdentifier accountId, required dynamic body, bool? xMagicNewHcTarget, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';
if (xMagicNewHcTarget != null) {
  headers['x-magic-new-hc-target'] = xMagicNewHcTarget.toString();
}

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cf_interconnects',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  MagicComponentsSchemasModifiedTunnelsCollectionResponseResult.fromJson(json['result'] as Map<String, dynamic>);}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  MagicInterconnectsUpdateMultipleInterconnectsResponse4xx.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// List interconnect Details
///
/// Lists details for a specific interconnect.
///
/// `GET /accounts/{account_id}/magic/cf_interconnects/{cf_interconnect_id}`
Future<ApiResult<MagicComponentsSchemasTunnelSingleResponseResult, MagicInterconnectsListInterconnectDetailsResponse4xx>> magicInterconnectsListInterconnectDetails({required MagicIdentifier cfInterconnectId, required MagicIdentifier accountId, bool? xMagicNewHcTarget, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
if (xMagicNewHcTarget != null) {
  headers['x-magic-new-hc-target'] = xMagicNewHcTarget.toString();
}

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cf_interconnects/${Uri.encodeComponent(cfInterconnectId.toString())}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  MagicComponentsSchemasTunnelSingleResponseResult.fromJson(json['result'] as Map<String, dynamic>);}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  MagicInterconnectsListInterconnectDetailsResponse4xx.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Update interconnect
///
/// Updates a specific interconnect associated with an account. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.
///
/// `PUT /accounts/{account_id}/magic/cf_interconnects/{cf_interconnect_id}`
Future<ApiResult<MagicComponentsSchemasTunnelModifiedResponseResult, MagicInterconnectsUpdateInterconnectResponse4xx>> magicInterconnectsUpdateInterconnect({required MagicIdentifier cfInterconnectId, required MagicIdentifier accountId, required MagicInterconnectTunnelUpdateRequestRequest body, bool? xMagicNewHcTarget, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';
if (xMagicNewHcTarget != null) {
  headers['x-magic-new-hc-target'] = xMagicNewHcTarget.toString();
}

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cf_interconnects/${Uri.encodeComponent(cfInterconnectId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  MagicComponentsSchemasTunnelModifiedResponseResult.fromJson(json['result'] as Map<String, dynamic>);}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  MagicInterconnectsUpdateInterconnectResponse4xx.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
}
