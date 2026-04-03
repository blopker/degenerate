// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/cloudflare_tunnel_create_a_cloudflare_tunnel_request.dart';import '../models/cloudflare_tunnel_create_a_warp_connector_tunnel_request.dart';import '../models/cloudflare_tunnel_get_a_cloudflare_tunnel_management_token_request.dart';import '../models/cloudflare_tunnel_update_a_cloudflare_tunnel_request.dart';import '../models/cloudflare_tunnel_update_a_warp_connector_tunnel_request.dart';import '../models/response_common69_result.dart';import '../models/tunnel_account_id.dart';import '../models/tunnel_cfd_tunnel.dart';import '../models/tunnel_client_id.dart';import '../models/tunnel_existed_at.dart';import '../models/tunnel_page_number.dart';import '../models/tunnel_per_page.dart';import '../models/tunnel_status.dart';import '../models/tunnel_tunnel_client.dart';import '../models/tunnel_tunnel_id.dart';import '../models/tunnel_tunnel_name.dart';import '../models/tunnel_tunnel_response_collection_result.dart';import '../models/tunnel_tunnel_type.dart';import '../models/tunnel_warp_connector_tunnel.dart';/// CloudflareTunnelApi operations.
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
Future<ApiResult<List<TunnelCfdTunnel>?, Never>> cloudflareTunnelListCloudflareTunnels({required TunnelAccountId accountId, TunnelTunnelName? name, bool? isDeleted, TunnelExistedAt? existedAt, TunnelTunnelId? uuid, DateTime? wasActiveAt, DateTime? wasInactiveAt, String? includePrefix, String? excludePrefix, TunnelStatus? status, TunnelPerPage? perPage, TunnelPageNumber? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  queryParameters['was_active_at'] = wasActiveAt.toString();
}
if (wasInactiveAt != null) {
  queryParameters['was_inactive_at'] = wasInactiveAt.toString();
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

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => TunnelCfdTunnel.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create a Cloudflare Tunnel
///
/// Creates a new Cloudflare Tunnel in an account.
///
/// `POST /accounts/{account_id}/cfd_tunnel`
Future<ApiResult<ResponseCommon69Result, Never>> cloudflareTunnelCreateACloudflareTunnel({required TunnelAccountId accountId, required CloudflareTunnelCreateACloudflareTunnelRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cfd_tunnel',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Get a Cloudflare Tunnel
///
/// Fetches a single Cloudflare Tunnel.
///
/// `GET /accounts/{account_id}/cfd_tunnel/{tunnel_id}`
Future<ApiResult<ResponseCommon69Result, Never>> cloudflareTunnelGetACloudflareTunnel({required TunnelAccountId accountId, required TunnelTunnelId tunnelId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cfd_tunnel/${Uri.encodeComponent(tunnelId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Update a Cloudflare Tunnel
///
/// Updates an existing Cloudflare Tunnel.
///
/// `PATCH /accounts/{account_id}/cfd_tunnel/{tunnel_id}`
Future<ApiResult<ResponseCommon69Result, Never>> cloudflareTunnelUpdateACloudflareTunnel({required TunnelTunnelId tunnelId, required TunnelAccountId accountId, required CloudflareTunnelUpdateACloudflareTunnelRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cfd_tunnel/${Uri.encodeComponent(tunnelId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Delete a Cloudflare Tunnel
///
/// Deletes a Cloudflare Tunnel from an account.
///
/// `DELETE /accounts/{account_id}/cfd_tunnel/{tunnel_id}`
Future<ApiResult<ResponseCommon69Result, Never>> cloudflareTunnelDeleteACloudflareTunnel({required TunnelAccountId accountId, required TunnelTunnelId tunnelId, required Map<String,dynamic> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cfd_tunnel/${Uri.encodeComponent(tunnelId.toString())}',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// List Cloudflare Tunnel connections
///
/// Fetches connection details for a Cloudflare Tunnel.
///
/// `GET /accounts/{account_id}/cfd_tunnel/{tunnel_id}/connections`
Future<ApiResult<List<TunnelTunnelClient>?, Never>> cloudflareTunnelListCloudflareTunnelConnections({required TunnelAccountId accountId, required TunnelTunnelId tunnelId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cfd_tunnel/${Uri.encodeComponent(tunnelId.toString())}/connections',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => TunnelTunnelClient.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Clean up Cloudflare Tunnel connections
///
/// Removes a connection (aka Cloudflare Tunnel Connector) from a Cloudflare Tunnel independently of its current state. If no connector id (client_id) is provided all connectors will be removed. We recommend running this command after rotating tokens.
///
/// `DELETE /accounts/{account_id}/cfd_tunnel/{tunnel_id}/connections`
Future<ApiResult<ResponseCommon69Result, Never>> cloudflareTunnelCleanUpCloudflareTunnelConnections({required TunnelAccountId accountId, required TunnelTunnelId tunnelId, required Map<String,dynamic> body, TunnelClientId? clientId, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Get Cloudflare Tunnel connector
///
/// Fetches connector and connection details for a Cloudflare Tunnel.
///
/// `GET /accounts/{account_id}/cfd_tunnel/{tunnel_id}/connectors/{connector_id}`
Future<ApiResult<ResponseCommon69Result, Never>> cloudflareTunnelGetCloudflareTunnelConnector({required TunnelAccountId accountId, required TunnelTunnelId tunnelId, required TunnelClientId connectorId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cfd_tunnel/${Uri.encodeComponent(tunnelId.toString())}/connectors/${Uri.encodeComponent(connectorId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Get a Cloudflare Tunnel management token
///
/// Gets a management token used to access the management resources (i.e. Streaming Logs) of a tunnel.
///
/// `POST /accounts/{account_id}/cfd_tunnel/{tunnel_id}/management`
Future<ApiResult<ResponseCommon69Result, Never>> cloudflareTunnelGetACloudflareTunnelManagementToken({required TunnelAccountId accountId, required TunnelTunnelId tunnelId, required CloudflareTunnelGetACloudflareTunnelManagementTokenRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cfd_tunnel/${Uri.encodeComponent(tunnelId.toString())}/management',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Get a Cloudflare Tunnel token
///
/// Gets the token used to associate cloudflared with a specific tunnel.
///
/// `GET /accounts/{account_id}/cfd_tunnel/{tunnel_id}/token`
Future<ApiResult<ResponseCommon69Result, Never>> cloudflareTunnelGetACloudflareTunnelToken({required TunnelAccountId accountId, required TunnelTunnelId tunnelId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cfd_tunnel/${Uri.encodeComponent(tunnelId.toString())}/token',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// List All Tunnels
///
/// Lists and filters all types of Tunnels in an account.
///
/// `GET /accounts/{account_id}/tunnels`
Future<ApiResult<List<TunnelTunnelResponseCollectionResult>?, Never>> cloudflareTunnelListAllTunnels({required TunnelAccountId accountId, String? name, bool? isDeleted, TunnelExistedAt? existedAt, TunnelTunnelId? uuid, DateTime? wasActiveAt, DateTime? wasInactiveAt, String? includePrefix, String? excludePrefix, List<TunnelTunnelType>? tunTypes, TunnelStatus? status, TunnelPerPage? perPage, TunnelPageNumber? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  queryParameters['was_active_at'] = wasActiveAt.toString();
}
if (wasInactiveAt != null) {
  queryParameters['was_inactive_at'] = wasInactiveAt.toString();
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

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => TunnelCfdTunnel.fromJson(v as Map<String, dynamic>), fromB: (v) => TunnelWarpConnectorTunnel.fromJson(v as Map<String, dynamic>),)).toList();
  },
);
 } 
/// List Warp Connector Tunnels
///
/// Lists and filters Warp Connector Tunnels in an account.
///
/// `GET /accounts/{account_id}/warp_connector`
Future<ApiResult<List<TunnelWarpConnectorTunnel>?, Never>> cloudflareTunnelListWarpConnectorTunnels({required TunnelAccountId accountId, String? name, bool? isDeleted, TunnelExistedAt? existedAt, TunnelTunnelId? uuid, DateTime? wasActiveAt, DateTime? wasInactiveAt, String? includePrefix, String? excludePrefix, TunnelStatus? status, TunnelPerPage? perPage, TunnelPageNumber? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  queryParameters['was_active_at'] = wasActiveAt.toString();
}
if (wasInactiveAt != null) {
  queryParameters['was_inactive_at'] = wasInactiveAt.toString();
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

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => TunnelWarpConnectorTunnel.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create a Warp Connector Tunnel
///
/// Creates a new Warp Connector Tunnel in an account.
///
/// `POST /accounts/{account_id}/warp_connector`
Future<ApiResult<ResponseCommon69Result, Never>> cloudflareTunnelCreateAWarpConnectorTunnel({required TunnelAccountId accountId, required CloudflareTunnelCreateAWarpConnectorTunnelRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/warp_connector',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Get a Warp Connector Tunnel
///
/// Fetches a single Warp Connector Tunnel.
///
/// `GET /accounts/{account_id}/warp_connector/{tunnel_id}`
Future<ApiResult<ResponseCommon69Result, Never>> cloudflareTunnelGetAWarpConnectorTunnel({required TunnelAccountId accountId, required TunnelTunnelId tunnelId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/warp_connector/${Uri.encodeComponent(tunnelId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Update a Warp Connector Tunnel
///
/// Updates an existing Warp Connector Tunnel.
///
/// `PATCH /accounts/{account_id}/warp_connector/{tunnel_id}`
Future<ApiResult<ResponseCommon69Result, Never>> cloudflareTunnelUpdateAWarpConnectorTunnel({required TunnelAccountId accountId, required TunnelTunnelId tunnelId, required CloudflareTunnelUpdateAWarpConnectorTunnelRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/warp_connector/${Uri.encodeComponent(tunnelId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Delete a Warp Connector Tunnel
///
/// Deletes a Warp Connector Tunnel from an account.
///
/// `DELETE /accounts/{account_id}/warp_connector/{tunnel_id}`
Future<ApiResult<ResponseCommon69Result, Never>> cloudflareTunnelDeleteAWarpConnectorTunnel({required TunnelAccountId accountId, required TunnelTunnelId tunnelId, required Map<String,dynamic> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/warp_connector/${Uri.encodeComponent(tunnelId.toString())}',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Get a Warp Connector Tunnel token
///
/// Gets the token used to associate warp device with a specific Warp Connector tunnel.
///
/// `GET /accounts/{account_id}/warp_connector/{tunnel_id}/token`
Future<ApiResult<ResponseCommon69Result, Never>> cloudflareTunnelGetAWarpConnectorTunnelToken({required TunnelAccountId accountId, required TunnelTunnelId tunnelId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/warp_connector/${Uri.encodeComponent(tunnelId.toString())}/token',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
 }
