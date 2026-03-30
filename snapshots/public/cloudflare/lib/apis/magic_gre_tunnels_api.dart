// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/magic_create_gre_tunnel_request.dart';import '../models/magic_create_gre_tunnel_response.dart';import '../models/magic_gre_tunnel_add_single_request.dart';import '../models/magic_identifier.dart';import '../models/magic_modified_tunnels_collection_response.dart';import '../models/magic_tunnel_deleted_response.dart';import '../models/magic_tunnel_modified_response.dart';import '../models/magic_tunnel_single_response.dart';import '../models/magic_tunnels_collection_response.dart';/// MagicGreTunnelsApi operations.
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
Future<ApiResult<MagicTunnelsCollectionResponse, Never>> magicGreTunnelsListGreTunnels({required MagicIdentifier accountId, bool? xMagicNewHcTarget, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return MagicTunnelsCollectionResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a GRE tunnel
///
/// Creates a new GRE tunnel. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.
///
/// `POST /accounts/{account_id}/magic/gre_tunnels`
Future<ApiResult<MagicCreateGreTunnelResponse, Never>> magicGreTunnelsCreateGreTunnels({required MagicIdentifier accountId, bool? xMagicNewHcTarget, required MagicCreateGreTunnelRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return MagicCreateGreTunnelResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update multiple GRE tunnels
///
/// Updates multiple GRE tunnels. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.
///
/// `PUT /accounts/{account_id}/magic/gre_tunnels`
Future<ApiResult<MagicModifiedTunnelsCollectionResponse, Never>> magicGreTunnelsUpdateMultipleGreTunnels({required MagicIdentifier accountId, bool? xMagicNewHcTarget, required dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return MagicModifiedTunnelsCollectionResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List GRE Tunnel Details
///
/// Lists informtion for a specific GRE tunnel.
///
/// `GET /accounts/{account_id}/magic/gre_tunnels/{gre_tunnel_id}`
Future<ApiResult<MagicTunnelSingleResponse, Never>> magicGreTunnelsListGreTunnelDetails({required MagicIdentifier greTunnelId, required MagicIdentifier accountId, bool? xMagicNewHcTarget, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return MagicTunnelSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update GRE Tunnel
///
/// Updates a specific GRE tunnel. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.
///
/// `PUT /accounts/{account_id}/magic/gre_tunnels/{gre_tunnel_id}`
Future<ApiResult<MagicTunnelModifiedResponse, Never>> magicGreTunnelsUpdateGreTunnel({required MagicIdentifier greTunnelId, required MagicIdentifier accountId, bool? xMagicNewHcTarget, required MagicGreTunnelAddSingleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return MagicTunnelModifiedResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete GRE Tunnel
///
/// Disables and removes a specific static GRE tunnel. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.
///
/// `DELETE /accounts/{account_id}/magic/gre_tunnels/{gre_tunnel_id}`
Future<ApiResult<MagicTunnelDeletedResponse, Never>> magicGreTunnelsDeleteGreTunnel({required MagicIdentifier greTunnelId, required MagicIdentifier accountId, bool? xMagicNewHcTarget, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return MagicTunnelDeletedResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
