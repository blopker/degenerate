// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/aig_config_create_dataset_request.dart';import '../models/aig_config_create_dataset_response400.dart';import '../models/aig_config_create_dataset_response_result.dart';import '../models/aig_config_delete_dataset_response404.dart';import '../models/aig_config_delete_dataset_response_result.dart';import '../models/aig_config_fetch_dataset_response404.dart';import '../models/aig_config_fetch_dataset_response_result.dart';import '../models/aig_config_list_dataset_response400.dart';import '../models/aig_config_list_dataset_response_result.dart';import '../models/aig_config_update_dataset_error.dart';import '../models/aig_config_update_dataset_request.dart';import '../models/aig_config_update_dataset_response_result.dart';/// AiGatewayDatasetsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AiGatewayDatasetsApi with ApiExecutor {const AiGatewayDatasetsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Datasets
///
/// Lists all AI Gateway evaluator types configured for the account.
///
/// `GET /accounts/{account_id}/ai-gateway/gateways/{gateway_id}/datasets`
Future<ApiResult<List<AigConfigListDatasetResponseResult>, AigConfigListDatasetResponse400>> aigConfigListDataset({required String accountId, required String gatewayId, int? page, int? perPage, String? name, bool? enable, String? search, RequestOptions? options, }) async {final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (name != null) {
  queryParameters['name'] = name;
}
if (enable != null) {
  queryParameters['enable'] = enable.toString();
}
if (search != null) {
  queryParameters['search'] = search;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-gateway/gateways/${Uri.encodeComponent(gatewayId)}/datasets',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  (json['result'] as List<dynamic>).map((e) => AigConfigListDatasetResponseResult.fromJson(e as Map<String, dynamic>)).toList();}, onError: (response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  AigConfigListDatasetResponse400.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Create a new Dataset
///
/// Creates a new AI Gateway.
///
/// `POST /accounts/{account_id}/ai-gateway/gateways/{gateway_id}/datasets`
Future<ApiResult<AigConfigCreateDatasetResponseResult, AigConfigCreateDatasetResponse400>> aigConfigCreateDataset({required String gatewayId, required String accountId, AigConfigCreateDatasetRequest? body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-gateway/gateways/${Uri.encodeComponent(gatewayId)}/datasets',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  AigConfigCreateDatasetResponseResult.fromJson(json['result'] as Map<String, dynamic>);}, onError: (response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  AigConfigCreateDatasetResponse400.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Fetch a Dataset
///
/// Retrieves details for a specific AI Gateway dataset.
///
/// `GET /accounts/{account_id}/ai-gateway/gateways/{gateway_id}/datasets/{id}`
Future<ApiResult<AigConfigFetchDatasetResponseResult, AigConfigFetchDatasetResponse404>> aigConfigFetchDataset({required String accountId, required String gatewayId, required String id, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-gateway/gateways/${Uri.encodeComponent(gatewayId)}/datasets/${Uri.encodeComponent(id)}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  AigConfigFetchDatasetResponseResult.fromJson(json['result'] as Map<String, dynamic>);}, onError: (response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return  AigConfigFetchDatasetResponse404.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Update a Dataset
///
/// Updates an existing AI Gateway dataset.
///
/// `PUT /accounts/{account_id}/ai-gateway/gateways/{gateway_id}/datasets/{id}`
Future<ApiResult<AigConfigUpdateDatasetResponseResult, AigConfigUpdateDatasetError>> aigConfigUpdateDataset({required String accountId, required String gatewayId, required String id, AigConfigUpdateDatasetRequest? body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-gateway/gateways/${Uri.encodeComponent(gatewayId)}/datasets/${Uri.encodeComponent(id)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  AigConfigUpdateDatasetResponseResult.fromJson(json['result'] as Map<String, dynamic>);}, onError: AigConfigUpdateDatasetError.parse, );}
/// Delete a Dataset
///
/// Deletes an AI Gateway dataset.
///
/// `DELETE /accounts/{account_id}/ai-gateway/gateways/{gateway_id}/datasets/{id}`
Future<ApiResult<AigConfigDeleteDatasetResponseResult, AigConfigDeleteDatasetResponse404>> aigConfigDeleteDataset({required String accountId, required String gatewayId, required String id, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-gateway/gateways/${Uri.encodeComponent(gatewayId)}/datasets/${Uri.encodeComponent(id)}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  AigConfigDeleteDatasetResponseResult.fromJson(json['result'] as Map<String, dynamic>);}, onError: (response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return  AigConfigDeleteDatasetResponse404.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
}
