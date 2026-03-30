// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/response_common69_result.dart';import '../models/tunnel_account_id.dart';import '../models/tunnel_components_schemas_tunnel_id.dart';import '../models/tunnel_existed_at.dart';import '../models/tunnel_hostname.dart';import '../models/tunnel_hostname_query_comment.dart';import '../models/tunnel_hostname_route.dart';import '../models/tunnel_hostname_route_id.dart';import '../models/tunnel_page_number.dart';import '../models/tunnel_per_page.dart';import '../models/zero_trust_networks_route_hostname_create_request.dart';import '../models/zero_trust_networks_route_hostname_update_request.dart';/// ZeroTrustHostnameRouteApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZeroTrustHostnameRouteApi with ApiExecutor {const ZeroTrustHostnameRouteApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List hostname routes
///
/// Lists and filters hostname routes in an account.
///
/// `GET /accounts/{account_id}/zerotrust/routes/hostname`
Future<ApiResult<List<TunnelHostnameRoute>?, Never>> zeroTrustNetworksRouteHostnameList({required TunnelAccountId accountId, TunnelHostnameRouteId? id, TunnelHostname? hostname, TunnelComponentsSchemasTunnelId? tunnelId, TunnelHostnameQueryComment? comment, TunnelExistedAt? existedAt, bool? isDeleted, TunnelPerPage? perPage, TunnelPageNumber? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (id != null) {
  queryParameters['id'] = id.toString();
}
if (hostname != null) {
  queryParameters['hostname'] = hostname.toString();
}
if (tunnelId != null) {
  queryParameters['tunnel_id'] = tunnelId.toString();
}
if (comment != null) {
  queryParameters['comment'] = comment.toString();
}
if (existedAt != null) {
  queryParameters['existed_at'] = existedAt.toString();
}
if (isDeleted != null) {
  queryParameters['is_deleted'] = isDeleted.toString();
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
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/zerotrust/routes/hostname',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => TunnelHostnameRoute.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create hostname route
///
/// Create a hostname route.
///
/// `POST /accounts/{account_id}/zerotrust/routes/hostname`
Future<ApiResult<ResponseCommon69Result, Never>> zeroTrustNetworksRouteHostnameCreate({required TunnelAccountId accountId, required ZeroTrustNetworksRouteHostnameCreateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/zerotrust/routes/hostname',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v)), fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Get hostname route
///
/// Get a hostname route.
///
/// `GET /accounts/{account_id}/zerotrust/routes/hostname/{hostname_route_id}`
Future<ApiResult<ResponseCommon69Result, Never>> zeroTrustNetworksRouteHostnameGet({required TunnelAccountId accountId, required TunnelHostnameRouteId hostnameRouteId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/zerotrust/routes/hostname/${Uri.encodeComponent(hostnameRouteId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v)), fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Update hostname route
///
/// Updates a hostname route.
///
/// `PATCH /accounts/{account_id}/zerotrust/routes/hostname/{hostname_route_id}`
Future<ApiResult<ResponseCommon69Result, Never>> zeroTrustNetworksRouteHostnameUpdate({required TunnelAccountId accountId, required TunnelHostnameRouteId hostnameRouteId, required ZeroTrustNetworksRouteHostnameUpdateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/zerotrust/routes/hostname/${Uri.encodeComponent(hostnameRouteId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v)), fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Delete hostname route
///
/// Delete a hostname route.
///
/// `DELETE /accounts/{account_id}/zerotrust/routes/hostname/{hostname_route_id}`
Future<ApiResult<ResponseCommon69Result, Never>> zeroTrustNetworksRouteHostnameDelete({required TunnelAccountId accountId, required TunnelHostnameRouteId hostnameRouteId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/zerotrust/routes/hostname/${Uri.encodeComponent(hostnameRouteId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v)), fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
 }
