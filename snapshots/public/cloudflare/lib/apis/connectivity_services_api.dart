// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/connectivity_services_get_response.dart';import '../models/connectivity_services_list_response.dart';import '../models/connectivity_services_list_type.dart';import '../models/connectivity_services_post_response.dart';import '../models/connectivity_services_put_response.dart';import '../models/infra_account_tag.dart';import '../models/infra_service_config.dart';/// ConnectivityServicesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ConnectivityServicesApi with ApiExecutor {const ConnectivityServicesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List connectivity services
///
/// `GET /accounts/{account_id}/connectivity/directory/services`
Future<ApiResult<ConnectivityServicesListResponse, Never>> connectivityServicesList({required InfraAccountTag accountId, ConnectivityServicesListType? type, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (type != null) {
queryParametersList.add(ApiQueryParameter(name: 'type', value: type.toString(), allowReserved: false));
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
    return ConnectivityServicesListResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create connectivity service
///
/// `POST /accounts/{account_id}/connectivity/directory/services`
Future<ApiResult<ConnectivityServicesPostResponse, Never>> connectivityServicesPost({required InfraAccountTag accountId, required InfraServiceConfig body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return ConnectivityServicesPostResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get connectivity service
///
/// `GET /accounts/{account_id}/connectivity/directory/services/{service_id}`
Future<ApiResult<ConnectivityServicesGetResponse, Never>> connectivityServicesGet({required String accountId, required String serviceId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/connectivity/directory/services/${Uri.encodeComponent(serviceId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ConnectivityServicesGetResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update connectivity service
///
/// `PUT /accounts/{account_id}/connectivity/directory/services/{service_id}`
Future<ApiResult<ConnectivityServicesPutResponse, Never>> connectivityServicesPut({required String accountId, required String serviceId, required InfraServiceConfig body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return ConnectivityServicesPutResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
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
