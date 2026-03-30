// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/infra_account_tag.dart';import '../models/infra_service_config.dart';import '../models/infra_service_type.dart';/// ConnectivityServicesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ConnectivityServicesApi with ApiExecutor {const ConnectivityServicesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List connectivity services
///
/// `GET /accounts/{account_id}/connectivity/directory/services`
Future<ApiResult<List<InfraServiceConfig>?, Never>> connectivityServicesList({required InfraAccountTag accountId, InfraServiceType? type, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (type != null) {
  queryParameters['type'] = type.toJson();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/connectivity/directory/services',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => InfraServiceConfig.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create connectivity service
///
/// `POST /accounts/{account_id}/connectivity/directory/services`
Future<ApiResult<InfraServiceConfig?, Never>> connectivityServicesPost({required InfraAccountTag accountId, required InfraServiceConfig body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/connectivity/directory/services',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? InfraServiceConfig.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get connectivity service
///
/// `GET /accounts/{account_id}/connectivity/directory/services/{service_id}`
Future<ApiResult<InfraServiceConfig?, Never>> connectivityServicesGet({required String accountId, required String serviceId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/connectivity/directory/services/${Uri.encodeComponent(serviceId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? InfraServiceConfig.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update connectivity service
///
/// `PUT /accounts/{account_id}/connectivity/directory/services/{service_id}`
Future<ApiResult<InfraServiceConfig?, Never>> connectivityServicesPut({required String accountId, required String serviceId, required InfraServiceConfig body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/connectivity/directory/services/${Uri.encodeComponent(serviceId)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? InfraServiceConfig.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete connectivity service
///
/// `DELETE /accounts/{account_id}/connectivity/directory/services/{service_id}`
Future<ApiResult<void, Never>> connectivityServicesDelete({required String accountId, required String serviceId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/connectivity/directory/services/${Uri.encodeComponent(serviceId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
 }
