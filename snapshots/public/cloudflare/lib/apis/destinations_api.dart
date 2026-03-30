// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/destination_create_request.dart';import '../models/destination_create_response400.dart';import '../models/destination_create_response_result.dart';import '../models/destination_list_order.dart';import '../models/destination_list_order_by.dart';import '../models/destination_list_response401.dart';import '../models/destination_list_response_result.dart';import '../models/destination_update_request.dart';import '../models/destination_update_response400.dart';import '../models/destination_update_response_result.dart';import '../models/destinations_delete_response401.dart';import '../models/destinations_delete_response_result.dart';/// DestinationsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DestinationsApi with ApiExecutor {const DestinationsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get Destinations
///
/// List your Workers Observability Telemetry Destinations.
///
/// `GET /accounts/{account_id}/workers/observability/destinations`
Future<ApiResult<List<DestinationListResponseResult>, DestinationListResponse401>> destinationList({required String accountId, double? page, double? perPage, DestinationListOrder? order, DestinationListOrderBy? orderBy, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['perPage'] = perPage.toString();
}
if (order != null) {
  queryParameters['order'] = order.toJson();
}
if (orderBy != null) {
  queryParameters['orderBy'] = orderBy.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workers/observability/destinations',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>).map((e) => DestinationListResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return DestinationListResponse401.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create Destination
///
/// Create a new Workers Observability Telemetry Destination.
///
/// `POST /accounts/{account_id}/workers/observability/destinations`
Future<ApiResult<DestinationCreateResponseResult, DestinationCreateResponse400>> destinationCreate({required String accountId, DestinationCreateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workers/observability/destinations',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return DestinationCreateResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return DestinationCreateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update Destination
///
/// Update an existing Workers Observability Telemetry Destination.
///
/// `PATCH /accounts/{account_id}/workers/observability/destinations/{slug}`
Future<ApiResult<DestinationUpdateResponseResult, DestinationUpdateResponse400>> destinationUpdate({required String accountId, required String slug, DestinationUpdateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workers/observability/destinations/${Uri.encodeComponent(slug)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return DestinationUpdateResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return DestinationUpdateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Destination
///
/// Delete a Workers Observability Telemetry Destination.
///
/// `DELETE /accounts/{account_id}/workers/observability/destinations/{slug}`
Future<ApiResult<DestinationsDeleteResponseResult?, DestinationsDeleteResponse401>> destinationsDelete({required String accountId, required String slug, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workers/observability/destinations/${Uri.encodeComponent(slug)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DestinationsDeleteResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return DestinationsDeleteResponse401.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
