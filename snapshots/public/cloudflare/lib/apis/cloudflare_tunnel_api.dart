// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/cloudflare_tunnel_clean_up_cloudflare_tunnel_connections_response4xx.dart';import '../models/cloudflare_tunnel_create_a_cloudflare_tunnel_request.dart';import '../models/cloudflare_tunnel_create_a_cloudflare_tunnel_response4xx.dart';import '../models/cloudflare_tunnel_create_a_warp_connector_tunnel_request.dart';import '../models/cloudflare_tunnel_create_a_warp_connector_tunnel_response4xx.dart';import '../models/cloudflare_tunnel_delete_a_cloudflare_tunnel_response4xx.dart';import '../models/cloudflare_tunnel_delete_a_warp_connector_tunnel_response4xx.dart';import '../models/cloudflare_tunnel_get_a_cloudflare_tunnel_management_token_request.dart';import '../models/cloudflare_tunnel_get_a_cloudflare_tunnel_management_token_response4xx.dart';import '../models/cloudflare_tunnel_get_a_cloudflare_tunnel_response4xx.dart';import '../models/cloudflare_tunnel_get_a_cloudflare_tunnel_token_response4xx.dart';import '../models/cloudflare_tunnel_get_a_warp_connector_tunnel_response4xx.dart';import '../models/cloudflare_tunnel_get_a_warp_connector_tunnel_token_response4xx.dart';import '../models/cloudflare_tunnel_get_cloudflare_tunnel_connector_response4xx.dart';import '../models/cloudflare_tunnel_list_all_tunnels_response4xx.dart';import '../models/cloudflare_tunnel_list_cloudflare_tunnel_connections_response4xx.dart';import '../models/cloudflare_tunnel_list_cloudflare_tunnels_response4xx.dart';import '../models/cloudflare_tunnel_list_warp_connector_tunnels_response4xx.dart';import '../models/cloudflare_tunnel_update_a_cloudflare_tunnel_request.dart';import '../models/cloudflare_tunnel_update_a_cloudflare_tunnel_response4xx.dart';import '../models/cloudflare_tunnel_update_a_warp_connector_tunnel_request.dart';import '../models/cloudflare_tunnel_update_a_warp_connector_tunnel_response4xx.dart';import '../models/tunnel_account_id.dart';import '../models/tunnel_cfd_tunnel.dart';import '../models/tunnel_client_id.dart';import '../models/tunnel_existed_at.dart';import '../models/tunnel_page_number.dart';import '../models/tunnel_per_page.dart';import '../models/tunnel_status.dart';import '../models/tunnel_tunnel_client.dart';import '../models/tunnel_tunnel_id.dart';import '../models/tunnel_tunnel_name.dart';import '../models/tunnel_tunnel_response_collection_result.dart';import '../models/tunnel_tunnel_response_token.dart';import '../models/tunnel_tunnel_type.dart';import '../models/tunnel_warp_connector_tunnel.dart';/// CloudflareTunnelApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class CloudflareTunnelApi with ApiExecutor {const CloudflareTunnelApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Cloudflare Tunnels
///
/// Lists and filters Cloudflare Tunnels in an account.
///
/// `GET /accounts/{account_id}/cfd_tunnel`
Future<ApiResult<List<TunnelCfdTunnel>, CloudflareTunnelListCloudflareTunnelsResponse4xx>> cloudflareTunnelListCloudflareTunnels({required TunnelAccountId accountId, TunnelTunnelName? name, bool? isDeleted, TunnelExistedAt? existedAt, TunnelTunnelId? uuid, DateTime? wasActiveAt, DateTime? wasInactiveAt, String? includePrefix, String? excludePrefix, TunnelStatus? status, TunnelPerPage? perPage, TunnelPageNumber? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (name != null) {
  queryParameters['name'] = name.toString();
}
if (isDeleted != null) {
  queryParameters['is_deleted'] = isDeleted.toString();
}
if (existedAt != null) {
  queryParameters['existed_at'] = existedAt.toString();
}
if (uuid != null) {
  queryParameters['uuid'] = uuid.toString();
}
if (wasActiveAt != null) {
  queryParameters['was_active_at'] = wasActiveAt.toIso8601String();
}
if (wasInactiveAt != null) {
  queryParameters['was_inactive_at'] = wasInactiveAt.toIso8601String();
}
if (includePrefix != null) {
  queryParameters['include_prefix'] = includePrefix;
}
if (excludePrefix != null) {
  queryParameters['exclude_prefix'] = excludePrefix;
}
if (status != null) {
  queryParameters['status'] = status.toJson();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cfd_tunnel',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => TunnelCfdTunnel.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return CloudflareTunnelListCloudflareTunnelsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Create a Cloudflare Tunnel
///
/// Creates a new Cloudflare Tunnel in an account.
///
/// `POST /accounts/{account_id}/cfd_tunnel`
Future<ApiResult<TunnelCfdTunnel, CloudflareTunnelCreateACloudflareTunnelResponse4xx>> cloudflareTunnelCreateACloudflareTunnel({required TunnelAccountId accountId, required CloudflareTunnelCreateACloudflareTunnelRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cfd_tunnel',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TunnelCfdTunnel.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return CloudflareTunnelCreateACloudflareTunnelResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get a Cloudflare Tunnel
///
/// Fetches a single Cloudflare Tunnel.
///
/// `GET /accounts/{account_id}/cfd_tunnel/{tunnel_id}`
Future<ApiResult<TunnelCfdTunnel, CloudflareTunnelGetACloudflareTunnelResponse4xx>> cloudflareTunnelGetACloudflareTunnel({required TunnelAccountId accountId, required TunnelTunnelId tunnelId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cfd_tunnel/${Uri.encodeComponent(tunnelId.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TunnelCfdTunnel.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return CloudflareTunnelGetACloudflareTunnelResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update a Cloudflare Tunnel
///
/// Updates an existing Cloudflare Tunnel.
///
/// `PATCH /accounts/{account_id}/cfd_tunnel/{tunnel_id}`
Future<ApiResult<TunnelCfdTunnel, CloudflareTunnelUpdateACloudflareTunnelResponse4xx>> cloudflareTunnelUpdateACloudflareTunnel({required TunnelTunnelId tunnelId, required TunnelAccountId accountId, required CloudflareTunnelUpdateACloudflareTunnelRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cfd_tunnel/${Uri.encodeComponent(tunnelId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TunnelCfdTunnel.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return CloudflareTunnelUpdateACloudflareTunnelResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Delete a Cloudflare Tunnel
///
/// Deletes a Cloudflare Tunnel from an account.
///
/// `DELETE /accounts/{account_id}/cfd_tunnel/{tunnel_id}`
Future<ApiResult<TunnelCfdTunnel, CloudflareTunnelDeleteACloudflareTunnelResponse4xx>> cloudflareTunnelDeleteACloudflareTunnel({required TunnelAccountId accountId, required TunnelTunnelId tunnelId, required Map<String,dynamic> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cfd_tunnel/${Uri.encodeComponent(tunnelId.toString())}',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TunnelCfdTunnel.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return CloudflareTunnelDeleteACloudflareTunnelResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// List Cloudflare Tunnel connections
///
/// Fetches connection details for a Cloudflare Tunnel.
///
/// `GET /accounts/{account_id}/cfd_tunnel/{tunnel_id}/connections`
Future<ApiResult<List<TunnelTunnelClient>, CloudflareTunnelListCloudflareTunnelConnectionsResponse4xx>> cloudflareTunnelListCloudflareTunnelConnections({required TunnelAccountId accountId, required TunnelTunnelId tunnelId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cfd_tunnel/${Uri.encodeComponent(tunnelId.toString())}/connections',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => TunnelTunnelClient.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return CloudflareTunnelListCloudflareTunnelConnectionsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Clean up Cloudflare Tunnel connections
///
/// Removes a connection (aka Cloudflare Tunnel Connector) from a Cloudflare Tunnel independently of its current state. If no connector id (client_id) is provided all connectors will be removed. We recommend running this command after rotating tokens.
///
/// `DELETE /accounts/{account_id}/cfd_tunnel/{tunnel_id}/connections`
Future<ApiResult<Map<String, dynamic>?, CloudflareTunnelCleanUpCloudflareTunnelConnectionsResponse4xx>> cloudflareTunnelCleanUpCloudflareTunnelConnections({required TunnelAccountId accountId, required TunnelTunnelId tunnelId, required Map<String,dynamic> body, TunnelClientId? clientId, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (clientId != null) {
  queryParameters['client_id'] = clientId.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cfd_tunnel/${Uri.encodeComponent(tunnelId.toString())}/connections',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] as Map<String, dynamic>?;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return CloudflareTunnelCleanUpCloudflareTunnelConnectionsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get Cloudflare Tunnel connector
///
/// Fetches connector and connection details for a Cloudflare Tunnel.
///
/// `GET /accounts/{account_id}/cfd_tunnel/{tunnel_id}/connectors/{connector_id}`
Future<ApiResult<TunnelTunnelClient, CloudflareTunnelGetCloudflareTunnelConnectorResponse4xx>> cloudflareTunnelGetCloudflareTunnelConnector({required TunnelAccountId accountId, required TunnelTunnelId tunnelId, required TunnelClientId connectorId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cfd_tunnel/${Uri.encodeComponent(tunnelId.toString())}/connectors/${Uri.encodeComponent(connectorId.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TunnelTunnelClient.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return CloudflareTunnelGetCloudflareTunnelConnectorResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get a Cloudflare Tunnel management token
///
/// Gets a management token used to access the management resources (i.e. Streaming Logs) of a tunnel.
///
/// `POST /accounts/{account_id}/cfd_tunnel/{tunnel_id}/management`
Future<ApiResult<TunnelTunnelToken, CloudflareTunnelGetACloudflareTunnelManagementTokenResponse4xx>> cloudflareTunnelGetACloudflareTunnelManagementToken({required TunnelAccountId accountId, required TunnelTunnelId tunnelId, required CloudflareTunnelGetACloudflareTunnelManagementTokenRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cfd_tunnel/${Uri.encodeComponent(tunnelId.toString())}/management',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TunnelTunnelToken.fromJson(json['result'] as String);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return CloudflareTunnelGetACloudflareTunnelManagementTokenResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get a Cloudflare Tunnel token
///
/// Gets the token used to associate cloudflared with a specific tunnel.
///
/// `GET /accounts/{account_id}/cfd_tunnel/{tunnel_id}/token`
Future<ApiResult<TunnelTunnelToken, CloudflareTunnelGetACloudflareTunnelTokenResponse4xx>> cloudflareTunnelGetACloudflareTunnelToken({required TunnelAccountId accountId, required TunnelTunnelId tunnelId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cfd_tunnel/${Uri.encodeComponent(tunnelId.toString())}/token',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TunnelTunnelToken.fromJson(json['result'] as String);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return CloudflareTunnelGetACloudflareTunnelTokenResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// List All Tunnels
///
/// Lists and filters all types of Tunnels in an account.
///
/// `GET /accounts/{account_id}/tunnels`
Future<ApiResult<List<TunnelTunnelResponseCollectionResult>, CloudflareTunnelListAllTunnelsResponse4xx>> cloudflareTunnelListAllTunnels({required TunnelAccountId accountId, String? name, bool? isDeleted, TunnelExistedAt? existedAt, TunnelTunnelId? uuid, DateTime? wasActiveAt, DateTime? wasInactiveAt, String? includePrefix, String? excludePrefix, List<TunnelTunnelType>? tunTypes, TunnelStatus? status, TunnelPerPage? perPage, TunnelPageNumber? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (name != null) {
  queryParameters['name'] = name;
}
if (isDeleted != null) {
  queryParameters['is_deleted'] = isDeleted.toString();
}
if (existedAt != null) {
  queryParameters['existed_at'] = existedAt.toString();
}
if (uuid != null) {
  queryParameters['uuid'] = uuid.toString();
}
if (wasActiveAt != null) {
  queryParameters['was_active_at'] = wasActiveAt.toIso8601String();
}
if (wasInactiveAt != null) {
  queryParameters['was_inactive_at'] = wasInactiveAt.toIso8601String();
}
if (includePrefix != null) {
  queryParameters['include_prefix'] = includePrefix;
}
if (excludePrefix != null) {
  queryParameters['exclude_prefix'] = excludePrefix;
}
if (tunTypes != null) {
for (final item in tunTypes) {
  queryParametersList.add(ApiQueryParameter(name: 'tun_types', value: item.toJson()));
}
}
if (status != null) {
  queryParameters['status'] = status.toJson();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/tunnels',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map(TunnelTunnelResponseCollectionResult.fromJson).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return CloudflareTunnelListAllTunnelsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// List Warp Connector Tunnels
///
/// Lists and filters Warp Connector Tunnels in an account.
///
/// `GET /accounts/{account_id}/warp_connector`
Future<ApiResult<List<TunnelWarpConnectorTunnel>, CloudflareTunnelListWarpConnectorTunnelsResponse4xx>> cloudflareTunnelListWarpConnectorTunnels({required TunnelAccountId accountId, String? name, bool? isDeleted, TunnelExistedAt? existedAt, TunnelTunnelId? uuid, DateTime? wasActiveAt, DateTime? wasInactiveAt, String? includePrefix, String? excludePrefix, TunnelStatus? status, TunnelPerPage? perPage, TunnelPageNumber? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (name != null) {
  queryParameters['name'] = name;
}
if (isDeleted != null) {
  queryParameters['is_deleted'] = isDeleted.toString();
}
if (existedAt != null) {
  queryParameters['existed_at'] = existedAt.toString();
}
if (uuid != null) {
  queryParameters['uuid'] = uuid.toString();
}
if (wasActiveAt != null) {
  queryParameters['was_active_at'] = wasActiveAt.toIso8601String();
}
if (wasInactiveAt != null) {
  queryParameters['was_inactive_at'] = wasInactiveAt.toIso8601String();
}
if (includePrefix != null) {
  queryParameters['include_prefix'] = includePrefix;
}
if (excludePrefix != null) {
  queryParameters['exclude_prefix'] = excludePrefix;
}
if (status != null) {
  queryParameters['status'] = status.toJson();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/warp_connector',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => TunnelWarpConnectorTunnel.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return CloudflareTunnelListWarpConnectorTunnelsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Create a Warp Connector Tunnel
///
/// Creates a new Warp Connector Tunnel in an account.
///
/// `POST /accounts/{account_id}/warp_connector`
Future<ApiResult<TunnelWarpConnectorTunnel, CloudflareTunnelCreateAWarpConnectorTunnelResponse4xx>> cloudflareTunnelCreateAWarpConnectorTunnel({required TunnelAccountId accountId, required CloudflareTunnelCreateAWarpConnectorTunnelRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/warp_connector',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TunnelWarpConnectorTunnel.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return CloudflareTunnelCreateAWarpConnectorTunnelResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get a Warp Connector Tunnel
///
/// Fetches a single Warp Connector Tunnel.
///
/// `GET /accounts/{account_id}/warp_connector/{tunnel_id}`
Future<ApiResult<TunnelWarpConnectorTunnel, CloudflareTunnelGetAWarpConnectorTunnelResponse4xx>> cloudflareTunnelGetAWarpConnectorTunnel({required TunnelAccountId accountId, required TunnelTunnelId tunnelId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/warp_connector/${Uri.encodeComponent(tunnelId.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TunnelWarpConnectorTunnel.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return CloudflareTunnelGetAWarpConnectorTunnelResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update a Warp Connector Tunnel
///
/// Updates an existing Warp Connector Tunnel.
///
/// `PATCH /accounts/{account_id}/warp_connector/{tunnel_id}`
Future<ApiResult<TunnelWarpConnectorTunnel, CloudflareTunnelUpdateAWarpConnectorTunnelResponse4xx>> cloudflareTunnelUpdateAWarpConnectorTunnel({required TunnelAccountId accountId, required TunnelTunnelId tunnelId, required CloudflareTunnelUpdateAWarpConnectorTunnelRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/warp_connector/${Uri.encodeComponent(tunnelId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TunnelWarpConnectorTunnel.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return CloudflareTunnelUpdateAWarpConnectorTunnelResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Delete a Warp Connector Tunnel
///
/// Deletes a Warp Connector Tunnel from an account.
///
/// `DELETE /accounts/{account_id}/warp_connector/{tunnel_id}`
Future<ApiResult<TunnelWarpConnectorTunnel, CloudflareTunnelDeleteAWarpConnectorTunnelResponse4xx>> cloudflareTunnelDeleteAWarpConnectorTunnel({required TunnelAccountId accountId, required TunnelTunnelId tunnelId, required Map<String,dynamic> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/warp_connector/${Uri.encodeComponent(tunnelId.toString())}',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TunnelWarpConnectorTunnel.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return CloudflareTunnelDeleteAWarpConnectorTunnelResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get a Warp Connector Tunnel token
///
/// Gets the token used to associate warp device with a specific Warp Connector tunnel.
///
/// `GET /accounts/{account_id}/warp_connector/{tunnel_id}/token`
Future<ApiResult<TunnelTunnelToken, CloudflareTunnelGetAWarpConnectorTunnelTokenResponse4xx>> cloudflareTunnelGetAWarpConnectorTunnelToken({required TunnelAccountId accountId, required TunnelTunnelId tunnelId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/warp_connector/${Uri.encodeComponent(tunnelId.toString())}/token',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TunnelTunnelToken.fromJson(json['result'] as String);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return CloudflareTunnelGetAWarpConnectorTunnelTokenResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
