// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/magic_identifier.dart';import '../models/magic_ipsec_tunnel_add_single_request.dart';import '../models/magic_psk_generation_response.dart';import '../models/magic_schemas_create_ipsec_tunnel_response.dart';import '../models/magic_schemas_modified_tunnels_collection_response.dart';import '../models/magic_schemas_tunnel_deleted_response.dart';import '../models/magic_schemas_tunnel_modified_response.dart';import '../models/magic_schemas_tunnel_single_response.dart';import '../models/magic_schemas_tunnels_collection_response.dart';/// MagicIPsecTunnelsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class MagicIPsecTunnelsApi with ApiExecutor {const MagicIPsecTunnelsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List IPsec tunnels
///
/// Lists IPsec tunnels associated with an account.
///
/// `GET /accounts/{account_id}/magic/ipsec_tunnels`
Future<ApiResult<MagicSchemasTunnelsCollectionResponse, Never>> magicIpsecTunnelsListIpsecTunnels({required MagicIdentifier accountId, bool? xMagicNewHcTarget, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
if (xMagicNewHcTarget != null) {
  headers['x-magic-new-hc-target'] = xMagicNewHcTarget.toString();
}

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/ipsec_tunnels',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MagicSchemasTunnelsCollectionResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create an IPsec tunnel
///
/// Creates a new IPsec tunnel associated with an account. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.
///
/// `POST /accounts/{account_id}/magic/ipsec_tunnels`
Future<ApiResult<MagicSchemasCreateIpsecTunnelResponse, Never>> magicIpsecTunnelsCreateIpsecTunnels({required MagicIdentifier accountId, bool? xMagicNewHcTarget, required MagicIpsecTunnelAddSingleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';
if (xMagicNewHcTarget != null) {
  headers['x-magic-new-hc-target'] = xMagicNewHcTarget.toString();
}

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/ipsec_tunnels',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MagicSchemasCreateIpsecTunnelResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update multiple IPsec tunnels
///
/// Update multiple IPsec tunnels associated with an account. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.
///
/// `PUT /accounts/{account_id}/magic/ipsec_tunnels`
Future<ApiResult<MagicSchemasModifiedTunnelsCollectionResponse, Never>> magicIpsecTunnelsUpdateMultipleIpsecTunnels({required MagicIdentifier accountId, bool? xMagicNewHcTarget, required dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';
if (xMagicNewHcTarget != null) {
  headers['x-magic-new-hc-target'] = xMagicNewHcTarget.toString();
}

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/ipsec_tunnels',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MagicSchemasModifiedTunnelsCollectionResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List IPsec tunnel details
///
/// Lists details for a specific IPsec tunnel.
///
/// `GET /accounts/{account_id}/magic/ipsec_tunnels/{ipsec_tunnel_id}`
Future<ApiResult<MagicSchemasTunnelSingleResponse, Never>> magicIpsecTunnelsListIpsecTunnelDetails({required MagicIdentifier ipsecTunnelId, required MagicIdentifier accountId, bool? xMagicNewHcTarget, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
if (xMagicNewHcTarget != null) {
  headers['x-magic-new-hc-target'] = xMagicNewHcTarget.toString();
}

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/ipsec_tunnels/${Uri.encodeComponent(ipsecTunnelId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MagicSchemasTunnelSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update IPsec Tunnel
///
/// Updates a specific IPsec tunnel associated with an account. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.
///
/// `PUT /accounts/{account_id}/magic/ipsec_tunnels/{ipsec_tunnel_id}`
Future<ApiResult<MagicSchemasTunnelModifiedResponse, Never>> magicIpsecTunnelsUpdateIpsecTunnel({required MagicIdentifier ipsecTunnelId, required MagicIdentifier accountId, bool? xMagicNewHcTarget, required MagicIpsecTunnelAddSingleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';
if (xMagicNewHcTarget != null) {
  headers['x-magic-new-hc-target'] = xMagicNewHcTarget.toString();
}

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/ipsec_tunnels/${Uri.encodeComponent(ipsecTunnelId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MagicSchemasTunnelModifiedResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete IPsec Tunnel
///
/// Disables and removes a specific static IPsec Tunnel associated with an account. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes.
///
/// `DELETE /accounts/{account_id}/magic/ipsec_tunnels/{ipsec_tunnel_id}`
Future<ApiResult<MagicSchemasTunnelDeletedResponse, Never>> magicIpsecTunnelsDeleteIpsecTunnel({required MagicIdentifier ipsecTunnelId, required MagicIdentifier accountId, bool? xMagicNewHcTarget, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
if (xMagicNewHcTarget != null) {
  headers['x-magic-new-hc-target'] = xMagicNewHcTarget.toString();
}

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/ipsec_tunnels/${Uri.encodeComponent(ipsecTunnelId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MagicSchemasTunnelDeletedResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Generate Pre Shared Key (PSK) for IPsec tunnels
///
/// Generates a Pre Shared Key for a specific IPsec tunnel used in the IKE session. Use `?validate_only=true` as an optional query parameter to only run validation without persisting changes. After a PSK is generated, the PSK is immediately persisted to Cloudflare's edge and cannot be retrieved later. Note the PSK in a safe place.
///
/// `POST /accounts/{account_id}/magic/ipsec_tunnels/{ipsec_tunnel_id}/psk_generate`
Future<ApiResult<MagicPskGenerationResponse, Never>> magicIpsecTunnelsGeneratePreSharedKeyPskForIpsecTunnels({required MagicIdentifier ipsecTunnelId, required MagicIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/ipsec_tunnels/${Uri.encodeComponent(ipsecTunnelId.toString())}/psk_generate',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MagicPskGenerationResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
