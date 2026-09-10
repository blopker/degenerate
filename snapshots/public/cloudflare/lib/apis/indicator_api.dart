// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/delete_indicator_delete_response.dart';import '../models/delete_indicator_delete_response404.dart';import '../models/get_indicator_list_format.dart';import '../models/get_indicator_list_legacy_response.dart';import '../models/get_indicator_list_response.dart';import '../models/get_indicator_list_response400.dart';import '../models/get_indicator_read_response.dart';import '../models/get_indicator_read_response404.dart';import '../models/get_indicator_tags_list_response400.dart';import '../models/get_indicator_tags_list_response404.dart';import '../models/get_indicator_tags_list_response500.dart';import '../models/patch_indicator_update_request.dart';import '../models/patch_indicator_update_response.dart';import '../models/patch_indicator_update_response400.dart';import '../models/patch_indicator_update_response404.dart';import '../models/post_indicator_create_bulk_request.dart';import '../models/post_indicator_create_bulk_response400.dart';import '../models/post_indicator_create_request.dart';import '../models/post_indicator_create_response.dart';import '../models/post_indicator_create_response400.dart';/// IndicatorApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class IndicatorApi with ApiExecutor {const IndicatorApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Lists indicators
///
/// Retrieves a paginated list of indicators for the account.
///
/// `GET /accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/indicators`
Future<ApiResult<GetIndicatorListLegacyResponse, Never>> getIndicatorListLegacy({required String accountId, required String datasetId, double? page, double? pageSize, String? search, String? indicatorType, List<String>? relatedEvent, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (pageSize != null) {
  queryParameters['pageSize'] = pageSize.toString();
}
if (search != null) {
  queryParameters['search'] = search;
}
if (indicatorType != null) {
  queryParameters['indicatorType'] = indicatorType;
}
if (relatedEvent != null) {
for (final item in relatedEvent) {
  queryParametersList.add(ApiQueryParameter(name: 'relatedEvent', value: item));
}
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/${Uri.encodeComponent(datasetId)}/indicators',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return GetIndicatorListLegacyResponse.fromJson(json as Map<String, dynamic>);
  },
);
 } 
/// Reads an indicator
///
/// Retrieves a specific indicator by its UUID.
///
/// `GET /accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/indicators/{indicator_id}`
Future<ApiResult<GetIndicatorReadResponse, GetIndicatorReadResponse404>> getIndicatorRead({required String accountId, required String datasetId, required String indicatorId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/${Uri.encodeComponent(datasetId)}/indicators/${Uri.encodeComponent(indicatorId)}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return GetIndicatorReadResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return GetIndicatorReadResponse404.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Updates an indicator
///
/// Updates an existing indicator's properties.
///
/// `PATCH /accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/indicators/{indicator_id}`
Future<ApiResult<PatchIndicatorUpdateResponse, OneOf2<PatchIndicatorUpdateResponse400, PatchIndicatorUpdateResponse404>>> patchIndicatorUpdate({required String accountId, required String datasetId, required String indicatorId, PatchIndicatorUpdateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/${Uri.encodeComponent(datasetId)}/indicators/${Uri.encodeComponent(indicatorId)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return PatchIndicatorUpdateResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf2<PatchIndicatorUpdateResponse400, PatchIndicatorUpdateResponse404>.a(PatchIndicatorUpdateResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf2<PatchIndicatorUpdateResponse400, PatchIndicatorUpdateResponse404>.b(PatchIndicatorUpdateResponse404.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Deletes an indicator
///
/// Deletes a specific indicator by its UUID.
///
/// `DELETE /accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/indicators/{indicator_id}`
Future<ApiResult<DeleteIndicatorDeleteResponse, DeleteIndicatorDeleteResponse404>> deleteIndicatorDelete({required String accountId, required String datasetId, required String indicatorId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/${Uri.encodeComponent(datasetId)}/indicators/${Uri.encodeComponent(indicatorId)}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return DeleteIndicatorDeleteResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return DeleteIndicatorDeleteResponse404.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Creates multiple indicators in bulk
///
/// Creates multiple indicators at once with their respective types and related datasets.
///
/// `POST /accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/indicators/bulk`
Future<ApiResult<double, PostIndicatorCreateBulkResponse400>> postIndicatorCreateBulk({required String accountId, required String datasetId, PostIndicatorCreateBulkRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/${Uri.encodeComponent(datasetId)}/indicators/bulk',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return (json as num).toDouble();
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return PostIndicatorCreateBulkResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Creates a new indicator
///
/// Creates a new indicator with the specified type and related datasets.
///
/// `POST /accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/indicators/create`
Future<ApiResult<PostIndicatorCreateResponse, PostIndicatorCreateResponse400>> postIndicatorCreate({required String accountId, required String datasetId, PostIndicatorCreateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/${Uri.encodeComponent(datasetId)}/indicators/create',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return PostIndicatorCreateResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return PostIndicatorCreateResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// List mirrored tags for an indicator dataset
///
/// Returns all mirrored tags from the indicator dataset (DO mirror table). No pagination.
///
/// `GET /accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/indicators/tags`
Future<ApiResult<List<Map<String, dynamic>>, OneOf3<GetIndicatorTagsListResponse400, GetIndicatorTagsListResponse404, GetIndicatorTagsListResponse500>>> getIndicatorTagsList({required String accountId, required String datasetId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/${Uri.encodeComponent(datasetId)}/indicators/tags',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return (json as List<dynamic>).map((e) => e as Map<String, dynamic>).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf3<GetIndicatorTagsListResponse400, GetIndicatorTagsListResponse404, GetIndicatorTagsListResponse500>.a(GetIndicatorTagsListResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf3<GetIndicatorTagsListResponse400, GetIndicatorTagsListResponse404, GetIndicatorTagsListResponse500>.b(GetIndicatorTagsListResponse404.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OneOf3<GetIndicatorTagsListResponse400, GetIndicatorTagsListResponse404, GetIndicatorTagsListResponse500>.c(GetIndicatorTagsListResponse500.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Lists indicators across multiple datasets
///
/// Retrieves a paginated list of indicators across specified datasets. Use datasetIds=all or datasetIds=* to query all datasets for the account. If no datasetIds provided, uses the default dataset.
///
/// `GET /accounts/{account_id}/cloudforce-one/events/indicators`
Future<ApiResult<GetIndicatorListResponse, GetIndicatorListResponse400>> getIndicatorList({required String accountId, List<String>? datasetIds, double? page, double? pageSize, String? search, String? indicatorType, List<String>? relatedEvents, List<String>? tags, DateTime? createdAfter, DateTime? createdBefore, double? relatedEventsLimit, bool? includeTags, bool? includeTotalCount, GetIndicatorListFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (datasetIds != null) {
for (final item in datasetIds) {
  queryParametersList.add(ApiQueryParameter(name: 'datasetIds', value: item));
}
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (pageSize != null) {
  queryParameters['pageSize'] = pageSize.toString();
}
if (search != null) {
  queryParameters['search'] = search;
}
if (indicatorType != null) {
  queryParameters['indicatorType'] = indicatorType;
}
if (relatedEvents != null) {
for (final item in relatedEvents) {
  queryParametersList.add(ApiQueryParameter(name: 'relatedEvents', value: item));
}
}
if (tags != null) {
for (final item in tags) {
  queryParametersList.add(ApiQueryParameter(name: 'tags', value: item));
}
}
if (createdAfter != null) {
  queryParameters['createdAfter'] = createdAfter.toIso8601String();
}
if (createdBefore != null) {
  queryParameters['createdBefore'] = createdBefore.toIso8601String();
}
if (relatedEventsLimit != null) {
  queryParameters['relatedEventsLimit'] = relatedEventsLimit.toString();
}
if (includeTags != null) {
  queryParameters['includeTags'] = includeTags.toString();
}
if (includeTotalCount != null) {
  queryParameters['includeTotalCount'] = includeTotalCount.toString();
}
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/indicators',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return GetIndicatorListResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return GetIndicatorListResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
