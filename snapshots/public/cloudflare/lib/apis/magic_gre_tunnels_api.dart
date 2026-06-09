// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/magic_create_gre_tunnel_request.dart';import '../models/magic_gre_tunnel.dart';import '../models/magic_gre_tunnel_add_single_request.dart';import '../models/magic_identifier.dart';import '../models/magic_modified_tunnels_collection_response.dart';import '../models/magic_modified_tunnels_collection_response_result.dart';import '../models/magic_tunnel_deleted_response.dart';import '../models/magic_tunnel_deleted_response_result.dart';import '../models/magic_tunnel_modified_response.dart';import '../models/magic_tunnel_modified_response_result.dart';import '../models/magic_tunnel_single_response.dart';import '../models/magic_tunnel_single_response_result.dart';import '../models/magic_tunnels_collection_response.dart';import '../models/magic_tunnels_collection_response_result.dart';/// MagicGreTunnelsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class MagicGreTunnelsApi with ApiExecutor {const MagicGreTunnelsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List GRE tunnels
///
/// Lists GRE tunnels associated with an account.
///
/// `GET /accounts/{account_id}/magic/gre_tunnels`
Future<ApiResult<MagicTunnelsCollectionResponseResult?, MagicTunnelsCollectionResponse>> magicGreTunnelsListGreTunnels({required MagicIdentifier accountId, bool? xMagicNewHcTarget, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
if (xMagicNewHcTarget != null) {
  headers['x-magic-new-hc-target'] = xMagicNewHcTarget.toString();
}

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/gre_tunnels',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicTunnelsCollectionResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return MagicTunnelsCollectionResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a GRE tunnel
///
/// Creates a new GRE tunnel. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.
///
/// `POST /accounts/{account_id}/magic/gre_tunnels`
Future<ApiResult<MagicGreTunnel?, MagicTunnelsCollectionResponse>> magicGreTunnelsCreateGreTunnels({required MagicIdentifier accountId, required MagicCreateGreTunnelRequest body, bool? xMagicNewHcTarget, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';
if (xMagicNewHcTarget != null) {
  headers['x-magic-new-hc-target'] = xMagicNewHcTarget.toString();
}

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/gre_tunnels',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicGreTunnel.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return MagicTunnelsCollectionResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update multiple GRE tunnels
///
/// Updates multiple GRE tunnels. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.
///
/// `PUT /accounts/{account_id}/magic/gre_tunnels`
Future<ApiResult<MagicModifiedTunnelsCollectionResponseResult?, MagicModifiedTunnelsCollectionResponse>> magicGreTunnelsUpdateMultipleGreTunnels({required MagicIdentifier accountId, required dynamic body, bool? xMagicNewHcTarget, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';
if (xMagicNewHcTarget != null) {
  headers['x-magic-new-hc-target'] = xMagicNewHcTarget.toString();
}

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/gre_tunnels',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicModifiedTunnelsCollectionResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return MagicModifiedTunnelsCollectionResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List GRE Tunnel Details
///
/// Lists informtion for a specific GRE tunnel.
///
/// `GET /accounts/{account_id}/magic/gre_tunnels/{gre_tunnel_id}`
Future<ApiResult<MagicTunnelSingleResponseResult?, MagicTunnelSingleResponse>> magicGreTunnelsListGreTunnelDetails({required MagicIdentifier greTunnelId, required MagicIdentifier accountId, bool? xMagicNewHcTarget, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
if (xMagicNewHcTarget != null) {
  headers['x-magic-new-hc-target'] = xMagicNewHcTarget.toString();
}

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/gre_tunnels/${Uri.encodeComponent(greTunnelId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicTunnelSingleResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return MagicTunnelSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update GRE Tunnel
///
/// Updates a specific GRE tunnel. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.
///
/// `PUT /accounts/{account_id}/magic/gre_tunnels/{gre_tunnel_id}`
Future<ApiResult<MagicTunnelModifiedResponseResult?, MagicTunnelModifiedResponse>> magicGreTunnelsUpdateGreTunnel({required MagicIdentifier greTunnelId, required MagicIdentifier accountId, required MagicGreTunnelAddSingleRequest body, bool? xMagicNewHcTarget, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';
if (xMagicNewHcTarget != null) {
  headers['x-magic-new-hc-target'] = xMagicNewHcTarget.toString();
}

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/gre_tunnels/${Uri.encodeComponent(greTunnelId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicTunnelModifiedResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return MagicTunnelModifiedResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete GRE Tunnel
///
/// Disables and removes a specific static GRE tunnel. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.
///
/// `DELETE /accounts/{account_id}/magic/gre_tunnels/{gre_tunnel_id}`
Future<ApiResult<MagicTunnelDeletedResponseResult?, MagicTunnelDeletedResponse>> magicGreTunnelsDeleteGreTunnel({required MagicIdentifier greTunnelId, required MagicIdentifier accountId, bool? xMagicNewHcTarget, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
if (xMagicNewHcTarget != null) {
  headers['x-magic-new-hc-target'] = xMagicNewHcTarget.toString();
}

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/gre_tunnels/${Uri.encodeComponent(greTunnelId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicTunnelDeletedResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return MagicTunnelDeletedResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
