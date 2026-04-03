// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/create_servers_request.dart';import '../models/create_servers_response400.dart';import '../models/create_servers_response_result.dart';import '../models/delete_servers_response404.dart';import '../models/delete_servers_response_result.dart';import '../models/fetch_servers_response404.dart';import '../models/fetch_servers_response_result.dart';import '../models/list_servers_response400.dart';import '../models/list_servers_response_result.dart';import '../models/sync_server_response404.dart';import '../models/update_servers_request.dart';import '../models/update_servers_response400.dart';import '../models/update_servers_response_result.dart';/// McpPortalServersApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class McpPortalServersApi with ApiExecutor {const McpPortalServersApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List MCP Servers
///
/// `GET /accounts/{account_id}/access/ai-controls/mcp/servers`
Future<ApiResult<List<ListServersResponseResult>, ListServersResponse400>> mcpPortalsApiListServers({required String accountId, int? page, int? perPage, String? search, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/accounts/${Uri.encodeComponent(accountId)}/access/ai-controls/mcp/servers',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>).map((e) => ListServersResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return ListServersResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a new MCP Server
///
/// `POST /accounts/{account_id}/access/ai-controls/mcp/servers`
Future<ApiResult<CreateServersResponseResult, CreateServersResponse400>> mcpPortalsApiCreateServers({required String accountId, CreateServersRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/access/ai-controls/mcp/servers',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return CreateServersResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return CreateServersResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Read the details of a MCP Server
///
/// `GET /accounts/{account_id}/access/ai-controls/mcp/servers/{id}`
Future<ApiResult<FetchServersResponseResult, FetchServersResponse404>> mcpPortalsApiFetchServers({required String accountId, required String id, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/access/ai-controls/mcp/servers/${Uri.encodeComponent(id)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return FetchServersResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return FetchServersResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a MCP Server
///
/// `PUT /accounts/{account_id}/access/ai-controls/mcp/servers/{id}`
Future<ApiResult<UpdateServersResponseResult, UpdateServersResponse400>> mcpPortalsApiUpdateServers({required String id, required String accountId, UpdateServersRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/access/ai-controls/mcp/servers/${Uri.encodeComponent(id)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return UpdateServersResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return UpdateServersResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a MCP Server
///
/// `DELETE /accounts/{account_id}/access/ai-controls/mcp/servers/{id}`
Future<ApiResult<DeleteServersResponseResult, DeleteServersResponse404>> mcpPortalsApiDeleteServers({required String accountId, required String id, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/access/ai-controls/mcp/servers/${Uri.encodeComponent(id)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return DeleteServersResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return DeleteServersResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Sync MCP Server Capabilities
///
/// `POST /accounts/{account_id}/access/ai-controls/mcp/servers/{id}/sync`
Future<ApiResult<Map<String, dynamic>, SyncServerResponse404>> mcpPortalsApiSyncServer({required String id, required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/access/ai-controls/mcp/servers/${Uri.encodeComponent(id)}/sync',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
  onError: (response) {
    return SyncServerResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
