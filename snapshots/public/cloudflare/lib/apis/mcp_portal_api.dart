// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/create_portals_request.dart';import '../models/create_portals_response400.dart';import '../models/create_portals_response_result.dart';import '../models/delete_portals_response404.dart';import '../models/delete_portals_response_result.dart';import '../models/fetch_gateways_response404.dart';import '../models/fetch_gateways_response_result.dart';import '../models/list_portals_response400.dart';import '../models/list_portals_response_result.dart';import '../models/update_portals_request.dart';import '../models/update_portals_response400.dart';import '../models/update_portals_response_result.dart';/// McpPortalApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class McpPortalApi with ApiExecutor {const McpPortalApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List MCP Portals
///
/// `GET /accounts/{account_id}/access/ai-controls/mcp/portals`
Future<ApiResult<List<ListPortalsResponseResult>, ListPortalsResponse400>> mcpPortalsApiListPortals({required String accountId, int? page, int? perPage, String? search, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (search != null) {
  queryParameters['search'] = search;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/access/ai-controls/mcp/portals',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>).map((e) => ListPortalsResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return ListPortalsResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a new MCP Portal
///
/// `POST /accounts/{account_id}/access/ai-controls/mcp/portals`
Future<ApiResult<CreatePortalsResponseResult, CreatePortalsResponse400>> mcpPortalsApiCreatePortals({required String accountId, CreatePortalsRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/access/ai-controls/mcp/portals',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return CreatePortalsResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return CreatePortalsResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Read details of an MCP Portal
///
/// `GET /accounts/{account_id}/access/ai-controls/mcp/portals/{id}`
Future<ApiResult<FetchGatewaysResponseResult, FetchGatewaysResponse404>> mcpPortalsApiFetchGateways({required String id, required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/access/ai-controls/mcp/portals/${Uri.encodeComponent(id)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return FetchGatewaysResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return FetchGatewaysResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a MCP Portal
///
/// `PUT /accounts/{account_id}/access/ai-controls/mcp/portals/{id}`
Future<ApiResult<UpdatePortalsResponseResult, UpdatePortalsResponse400>> mcpPortalsApiUpdatePortals({required String id, required String accountId, UpdatePortalsRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/access/ai-controls/mcp/portals/${Uri.encodeComponent(id)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return UpdatePortalsResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return UpdatePortalsResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a MCP Portal
///
/// `DELETE /accounts/{account_id}/access/ai-controls/mcp/portals/{id}`
Future<ApiResult<DeletePortalsResponseResult, DeletePortalsResponse404>> mcpPortalsApiDeletePortals({required String accountId, required String id, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/access/ai-controls/mcp/portals/${Uri.encodeComponent(id)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return DeletePortalsResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return DeletePortalsResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
