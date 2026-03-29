// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/aig_config_create_gateway_request.dart';import '../models/aig_config_create_gateway_response.dart';import '../models/aig_config_create_gateway_response400.dart';import '../models/aig_config_delete_gateway_response.dart';import '../models/aig_config_delete_gateway_response404.dart';import '../models/aig_config_fetch_gateway_response.dart';import '../models/aig_config_fetch_gateway_response404.dart';import '../models/aig_config_get_gateway_url_response.dart';import '../models/aig_config_get_gateway_url_response400.dart';import '../models/aig_config_list_gateway_response.dart';import '../models/aig_config_list_gateway_response400.dart';import '../models/aig_config_update_gateway_request.dart';import '../models/aig_config_update_gateway_response.dart';import '../models/aig_config_update_gateway_response400.dart';/// AiGatewayGatewaysApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AiGatewayGatewaysApi with ApiExecutor {const AiGatewayGatewaysApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Gateways
///
/// Lists all AI Gateway evaluator types configured for the account.
///
/// `GET /accounts/{account_id}/ai-gateway/gateways`
Future<ApiResult<AigConfigListGatewayResponse, AigConfigListGatewayResponse400>> aigConfigListGateway({required String accountId, int? page, int? perPage, String? search, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) queryParameters['page'] = page.toString();
if (perPage != null) queryParameters['per_page'] = perPage.toString();
if (search != null) queryParameters['search'] = search;

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-gateway/gateways',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AigConfigListGatewayResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return AigConfigListGatewayResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a new Gateway
///
/// Creates a new AI Gateway.
///
/// `POST /accounts/{account_id}/ai-gateway/gateways`
Future<ApiResult<AigConfigCreateGatewayResponse, AigConfigCreateGatewayResponse400>> aigConfigCreateGateway({required String accountId, AigConfigCreateGatewayRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-gateway/gateways',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AigConfigCreateGatewayResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return AigConfigCreateGatewayResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Gateway URL
///
/// Retrieves the endpoint URL for an AI Gateway.
///
/// `GET /accounts/{account_id}/ai-gateway/gateways/{gateway_id}/url/{provider}`
Future<ApiResult<AigConfigGetGatewayUrlResponse, AigConfigGetGatewayUrlResponse400>> aigConfigGetGatewayUrl({required String gatewayId, required String accountId, required String provider, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-gateway/gateways/${Uri.encodeComponent(gatewayId)}/url/${Uri.encodeComponent(provider)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AigConfigGetGatewayUrlResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return AigConfigGetGatewayUrlResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Fetch a Gateway
///
/// Retrieves details for a specific AI Gateway dataset.
///
/// `GET /accounts/{account_id}/ai-gateway/gateways/{id}`
Future<ApiResult<AigConfigFetchGatewayResponse, AigConfigFetchGatewayResponse404>> aigConfigFetchGateway({required String accountId, required String id, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-gateway/gateways/${Uri.encodeComponent(id)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AigConfigFetchGatewayResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return AigConfigFetchGatewayResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a Gateway
///
/// Updates an existing AI Gateway dataset.
///
/// `PUT /accounts/{account_id}/ai-gateway/gateways/{id}`
Future<ApiResult<AigConfigUpdateGatewayResponse, AigConfigUpdateGatewayResponse400>> aigConfigUpdateGateway({required String accountId, required String id, AigConfigUpdateGatewayRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-gateway/gateways/${Uri.encodeComponent(id)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AigConfigUpdateGatewayResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return AigConfigUpdateGatewayResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a Gateway
///
/// Deletes an AI Gateway dataset.
///
/// `DELETE /accounts/{account_id}/ai-gateway/gateways/{id}`
Future<ApiResult<AigConfigDeleteGatewayResponse, AigConfigDeleteGatewayResponse404>> aigConfigDeleteGateway({required String accountId, required String id, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-gateway/gateways/${Uri.encodeComponent(id)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AigConfigDeleteGatewayResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return AigConfigDeleteGatewayResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
