// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/destination_create_request.dart';import '../models/destination_create_response400.dart';import '../models/destination_create_response401.dart';import '../models/destination_create_response500.dart';import '../models/destination_create_response_result.dart';import '../models/destination_list_order.dart';import '../models/destination_list_order_by.dart';import '../models/destination_list_response401.dart';import '../models/destination_list_response404.dart';import '../models/destination_list_response500.dart';import '../models/destination_list_response_result.dart';import '../models/destination_update_request.dart';import '../models/destination_update_response400.dart';import '../models/destination_update_response401.dart';import '../models/destination_update_response404.dart';import '../models/destination_update_response500.dart';import '../models/destination_update_response_result.dart';import '../models/destinations_delete_response401.dart';import '../models/destinations_delete_response404.dart';import '../models/destinations_delete_response500.dart';import '../models/destinations_delete_response_result.dart';/// DestinationsApi operations.
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
Future<ApiResult<List<DestinationListResponseResult>, OneOf3<DestinationListResponse401, DestinationListResponse404, DestinationListResponse500>>> destinationList({required String accountId, double? page, double? perPage, DestinationListOrder? order, DestinationListOrderBy? orderBy, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
switch (response.statusCode) {
case 401:
final json = jsonDecode(response.body);
return OneOf3<DestinationListResponse401, DestinationListResponse404, DestinationListResponse500>.a(DestinationListResponse401.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf3<DestinationListResponse401, DestinationListResponse404, DestinationListResponse500>.b(DestinationListResponse404.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OneOf3<DestinationListResponse401, DestinationListResponse404, DestinationListResponse500>.c(DestinationListResponse500.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Create Destination
///
/// Create a new Workers Observability Telemetry Destination.
///
/// `POST /accounts/{account_id}/workers/observability/destinations`
Future<ApiResult<DestinationCreateResponseResult, OneOf3<DestinationCreateResponse400, DestinationCreateResponse401, DestinationCreateResponse500>>> destinationCreate({required String accountId, DestinationCreateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf3<DestinationCreateResponse400, DestinationCreateResponse401, DestinationCreateResponse500>.a(DestinationCreateResponse400.fromJson(json as Map<String, dynamic>));
case 401:
final json = jsonDecode(response.body);
return OneOf3<DestinationCreateResponse400, DestinationCreateResponse401, DestinationCreateResponse500>.b(DestinationCreateResponse401.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OneOf3<DestinationCreateResponse400, DestinationCreateResponse401, DestinationCreateResponse500>.c(DestinationCreateResponse500.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Update Destination
///
/// Update an existing Workers Observability Telemetry Destination.
///
/// `PATCH /accounts/{account_id}/workers/observability/destinations/{slug}`
Future<ApiResult<DestinationUpdateResponseResult, OneOf4<DestinationUpdateResponse400, DestinationUpdateResponse401, DestinationUpdateResponse404, DestinationUpdateResponse500>>> destinationUpdate({required String accountId, required String slug, DestinationUpdateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf4<DestinationUpdateResponse400, DestinationUpdateResponse401, DestinationUpdateResponse404, DestinationUpdateResponse500>.a(DestinationUpdateResponse400.fromJson(json as Map<String, dynamic>));
case 401:
final json = jsonDecode(response.body);
return OneOf4<DestinationUpdateResponse400, DestinationUpdateResponse401, DestinationUpdateResponse404, DestinationUpdateResponse500>.b(DestinationUpdateResponse401.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf4<DestinationUpdateResponse400, DestinationUpdateResponse401, DestinationUpdateResponse404, DestinationUpdateResponse500>.c(DestinationUpdateResponse404.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OneOf4<DestinationUpdateResponse400, DestinationUpdateResponse401, DestinationUpdateResponse404, DestinationUpdateResponse500>.d(DestinationUpdateResponse500.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Delete Destination
///
/// Delete a Workers Observability Telemetry Destination.
///
/// `DELETE /accounts/{account_id}/workers/observability/destinations/{slug}`
Future<ApiResult<DestinationsDeleteResponseResult?, OneOf3<DestinationsDeleteResponse401, DestinationsDeleteResponse404, DestinationsDeleteResponse500>>> destinationsDelete({required String accountId, required String slug, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
switch (response.statusCode) {
case 401:
final json = jsonDecode(response.body);
return OneOf3<DestinationsDeleteResponse401, DestinationsDeleteResponse404, DestinationsDeleteResponse500>.a(DestinationsDeleteResponse401.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf3<DestinationsDeleteResponse401, DestinationsDeleteResponse404, DestinationsDeleteResponse500>.b(DestinationsDeleteResponse404.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OneOf3<DestinationsDeleteResponse401, DestinationsDeleteResponse404, DestinationsDeleteResponse500>.c(DestinationsDeleteResponse500.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
 }
