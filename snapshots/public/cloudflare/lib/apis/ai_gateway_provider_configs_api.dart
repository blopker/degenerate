// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/aig_config_create_providers_request.dart';import '../models/aig_config_create_providers_response400.dart';import '../models/aig_config_create_providers_response_result.dart';import '../models/aig_config_delete_providers_response404.dart';import '../models/aig_config_delete_providers_response_result.dart';import '../models/aig_config_list_providers_response400.dart';import '../models/aig_config_list_providers_response_result.dart';import '../models/aig_config_update_providers_request.dart';import '../models/aig_config_update_providers_response400.dart';import '../models/aig_config_update_providers_response_result.dart';/// AiGatewayProviderConfigsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AiGatewayProviderConfigsApi with ApiExecutor {const AiGatewayProviderConfigsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Provider Configs
///
/// Lists all AI Gateway evaluator types configured for the account.
///
/// `GET /accounts/{account_id}/ai-gateway/gateways/{gateway_id}/provider_configs`
Future<ApiResult<List<AigConfigListProvidersResponseResult>, AigConfigListProvidersResponse400>> aigConfigListProviders({required String accountId, required String gatewayId, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-gateway/gateways/${Uri.encodeComponent(gatewayId)}/provider_configs',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>).map((e) => AigConfigListProvidersResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return AigConfigListProvidersResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a new Provider Configs
///
/// Creates a new AI Gateway.
///
/// `POST /accounts/{account_id}/ai-gateway/gateways/{gateway_id}/provider_configs`
Future<ApiResult<AigConfigCreateProvidersResponseResult, AigConfigCreateProvidersResponse400>> aigConfigCreateProviders({required String accountId, required String gatewayId, AigConfigCreateProvidersRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-gateway/gateways/${Uri.encodeComponent(gatewayId)}/provider_configs',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return AigConfigCreateProvidersResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return AigConfigCreateProvidersResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a Provider Configs
///
/// Updates an existing AI Gateway dataset.
///
/// `PUT /accounts/{account_id}/ai-gateway/gateways/{gateway_id}/provider_configs/{id}`
Future<ApiResult<AigConfigUpdateProvidersResponseResult, AigConfigUpdateProvidersResponse400>> aigConfigUpdateProviders({required String accountId, required String gatewayId, required String id, AigConfigUpdateProvidersRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-gateway/gateways/${Uri.encodeComponent(gatewayId)}/provider_configs/${Uri.encodeComponent(id)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return AigConfigUpdateProvidersResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return AigConfigUpdateProvidersResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a Provider Configs
///
/// Deletes an AI Gateway dataset.
///
/// `DELETE /accounts/{account_id}/ai-gateway/gateways/{gateway_id}/provider_configs/{id}`
Future<ApiResult<AigConfigDeleteProvidersResponseResult, AigConfigDeleteProvidersResponse404>> aigConfigDeleteProviders({required String accountId, required String gatewayId, required String id, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-gateway/gateways/${Uri.encodeComponent(gatewayId)}/provider_configs/${Uri.encodeComponent(id)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return AigConfigDeleteProvidersResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return AigConfigDeleteProvidersResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
