// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/response_common69.dart';import '../models/tunnel_account_id.dart';import '../models/tunnel_existed_at.dart';import '../models/tunnel_ip.dart';import '../models/tunnel_ip_network.dart';import '../models/tunnel_page_number.dart';import '../models/tunnel_per_page.dart';import '../models/tunnel_route_comment.dart';import '../models/tunnel_route_create_a_tunnel_route_request.dart';import '../models/tunnel_route_id.dart';import '../models/tunnel_route_update_a_tunnel_route_request.dart';import '../models/tunnel_tunnel_id.dart';import '../models/tunnel_tunnel_type.dart';import '../models/tunnel_virtual_network_id.dart';/// TunnelRoutingApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class TunnelRoutingApi with ApiExecutor {const TunnelRoutingApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List tunnel routes
///
/// Lists and filters private network routes in an account.
///
/// `GET /accounts/{account_id}/teamnet/routes`
Future<ApiResult<ResponseCommon69, Never>> tunnelRouteListTunnelRoutes({required TunnelAccountId accountId, TunnelRouteComment? comment, bool? isDeleted, TunnelIpNetwork? networkSubset, TunnelIpNetwork? networkSuperset, TunnelExistedAt? existedAt, TunnelTunnelId? tunnelId, TunnelRouteId? routeId, List<TunnelTunnelType>? tunTypes, TunnelVirtualNetworkId? virtualNetworkId, TunnelPerPage? perPage, TunnelPageNumber? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (comment != null) {
  queryParameters['comment'] = comment.toString();
}
if (isDeleted != null) {
  queryParameters['is_deleted'] = isDeleted.toString();
}
if (networkSubset != null) {
  queryParameters['network_subset'] = networkSubset.toString();
}
if (networkSuperset != null) {
  queryParameters['network_superset'] = networkSuperset.toString();
}
if (existedAt != null) {
  queryParameters['existed_at'] = existedAt.toString();
}
if (tunnelId != null) {
  queryParameters['tunnel_id'] = tunnelId.toString();
}
if (routeId != null) {
  queryParameters['route_id'] = routeId.toString();
}
if (tunTypes != null) {
for (final item in tunTypes) {
  queryParametersList.add(ApiQueryParameter(name: 'tun_types', value: item.toJson(), allowReserved: false));
}
}
if (virtualNetworkId != null) {
  queryParameters['virtual_network_id'] = virtualNetworkId.toString();
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
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/teamnet/routes',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon69.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a tunnel route
///
/// Routes a private network through a Cloudflare Tunnel.
///
/// `POST /accounts/{account_id}/teamnet/routes`
Future<ApiResult<ResponseCommon69, Never>> tunnelRouteCreateATunnelRoute({required TunnelAccountId accountId, required TunnelRouteCreateATunnelRouteRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/teamnet/routes',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon69.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get tunnel route
///
/// Get a private network route in an account.
///
/// `GET /accounts/{account_id}/teamnet/routes/{route_id}`
Future<ApiResult<ResponseCommon69, Never>> tunnelRouteGetTunnelRoute({required TunnelAccountId accountId, required TunnelRouteId routeId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/teamnet/routes/${Uri.encodeComponent(routeId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon69.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a tunnel route
///
/// Updates an existing private network route in an account. The fields that are meant to be updated should be provided in the body of the request.
///
/// `PATCH /accounts/{account_id}/teamnet/routes/{route_id}`
Future<ApiResult<ResponseCommon69, Never>> tunnelRouteUpdateATunnelRoute({required TunnelRouteId routeId, required TunnelAccountId accountId, required TunnelRouteUpdateATunnelRouteRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/teamnet/routes/${Uri.encodeComponent(routeId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon69.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a tunnel route
///
/// Deletes a private network route from an account.
/// 
///
/// `DELETE /accounts/{account_id}/teamnet/routes/{route_id}`
Future<ApiResult<ResponseCommon69, Never>> tunnelRouteDeleteATunnelRoute({required TunnelRouteId routeId, required TunnelAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/teamnet/routes/${Uri.encodeComponent(routeId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon69.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get tunnel route by IP
///
/// Fetches routes that contain the given IP address.
///
/// `GET /accounts/{account_id}/teamnet/routes/ip/{ip}`
Future<ApiResult<ResponseCommon69, Never>> tunnelRouteGetTunnelRouteByIp({required TunnelIp ip, required TunnelAccountId accountId, TunnelVirtualNetworkId? virtualNetworkId, bool? defaultVirtualNetworkFallback, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (virtualNetworkId != null) {
  queryParameters['virtual_network_id'] = virtualNetworkId.toString();
}
if (defaultVirtualNetworkFallback != null) {
  queryParameters['default_virtual_network_fallback'] = defaultVirtualNetworkFallback.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/teamnet/routes/ip/${Uri.encodeComponent(ip.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon69.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
