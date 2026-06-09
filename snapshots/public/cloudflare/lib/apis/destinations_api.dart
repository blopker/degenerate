// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/destination_create_error.dart';import '../models/destination_create_request.dart';import '../models/destination_create_response_result.dart';import '../models/destination_list_error.dart';import '../models/destination_list_order.dart';import '../models/destination_list_order_by.dart';import '../models/destination_list_response_result.dart';import '../models/destination_update_error.dart';import '../models/destination_update_request.dart';import '../models/destination_update_response_result.dart';import '../models/destinations_delete_error.dart';import '../models/destinations_delete_response_result.dart';/// DestinationsApi operations.
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
Future<ApiResult<List<DestinationListResponseResult>, DestinationListError>> destinationList({required String accountId, double? page, double? perPage, DestinationListOrder? order, DestinationListOrderBy? orderBy, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
    return DestinationListError.parse(response);
  },
);
 } 
/// Create Destination
///
/// Create a new Workers Observability Telemetry Destination.
///
/// `POST /accounts/{account_id}/workers/observability/destinations`
Future<ApiResult<DestinationCreateResponseResult, DestinationCreateError>> destinationCreate({required String accountId, DestinationCreateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return DestinationCreateError.parse(response);
  },
);
 } 
/// Update Destination
///
/// Update an existing Workers Observability Telemetry Destination.
///
/// `PATCH /accounts/{account_id}/workers/observability/destinations/{slug}`
Future<ApiResult<DestinationUpdateResponseResult, DestinationUpdateError>> destinationUpdate({required String accountId, required String slug, DestinationUpdateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return DestinationUpdateError.parse(response);
  },
);
 } 
/// Delete Destination
///
/// Delete a Workers Observability Telemetry Destination.
///
/// `DELETE /accounts/{account_id}/workers/observability/destinations/{slug}`
Future<ApiResult<DestinationsDeleteResponseResult?, DestinationsDeleteError>> destinationsDelete({required String accountId, required String slug, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
    return DestinationsDeleteError.parse(response);
  },
);
 } 
 }
