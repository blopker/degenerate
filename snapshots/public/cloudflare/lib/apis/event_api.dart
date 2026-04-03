// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/delete_event_delete_response400.dart';import '../models/delete_event_query_alert_delete_response404.dart';import '../models/delete_event_query_delete_response404.dart';import '../models/delete_event_reference_delete_request.dart';import '../models/delete_event_reference_delete_response400.dart';import '../models/delete_event_reference_delete_response_result.dart';import '../models/delete_event_tag_delete_request.dart';import '../models/delete_event_tag_delete_response400.dart';import '../models/delete_event_tag_delete_response_result.dart';import '../models/get_event_aggregate_dataset_id.dart';import '../models/get_event_aggregate_response.dart';import '../models/get_event_aggregate_response400.dart';import '../models/get_event_list_get_format.dart';import '../models/get_event_list_get_order.dart';import '../models/get_event_list_get_response.dart';import '../models/get_event_list_get_response400.dart';import '../models/get_event_list_get_search.dart';import '../models/get_event_query_alert_list_response.dart';import '../models/get_event_query_alert_list_response500.dart';import '../models/get_event_query_alert_read_response.dart';import '../models/get_event_query_alert_read_response404.dart';import '../models/get_event_query_list_response.dart';import '../models/get_event_query_list_response500.dart';import '../models/get_event_query_read_response.dart';import '../models/get_event_query_read_response404.dart';import '../models/get_event_raw_read_ds_response.dart';import '../models/get_event_raw_read_ds_response404.dart';import '../models/get_event_raw_read_response.dart';import '../models/get_event_raw_read_response400.dart';import '../models/get_event_read_response.dart';import '../models/get_event_read_response404.dart';import '../models/get_event_relationships_direction.dart';import '../models/get_event_relationships_relationship_types.dart';import '../models/get_event_relationships_response.dart';import '../models/get_event_relationships_response400.dart';import '../models/patch_event_query_alert_update_request.dart';import '../models/patch_event_query_alert_update_response.dart';import '../models/patch_event_query_alert_update_response400.dart';import '../models/patch_event_query_update_request.dart';import '../models/patch_event_query_update_response.dart';import '../models/patch_event_query_update_response400.dart';import '../models/patch_event_raw_update_request.dart';import '../models/patch_event_raw_update_response.dart';import '../models/patch_event_raw_update_response400.dart';import '../models/patch_event_update_request.dart';import '../models/patch_event_update_response.dart';import '../models/patch_event_update_response400.dart';import '../models/post_create_event_relationship_request.dart';import '../models/post_create_event_relationship_response.dart';import '../models/post_create_event_relationship_response400.dart';import '../models/post_event_create_bulk_request.dart';import '../models/post_event_create_bulk_response202.dart';import '../models/post_event_create_bulk_response400.dart';import '../models/post_event_create_request.dart';import '../models/post_event_create_response.dart';import '../models/post_event_create_response400.dart';import '../models/post_event_do_revert_request.dart';import '../models/post_event_do_revert_response.dart';import '../models/post_event_do_revert_response400.dart';import '../models/post_event_graph_ql_response.dart';import '../models/post_event_graph_ql_response400.dart';import '../models/post_event_move_to_new_ds_request.dart';import '../models/post_event_move_to_new_ds_response400.dart';import '../models/post_event_query_alert_create_request.dart';import '../models/post_event_query_alert_create_response.dart';import '../models/post_event_query_alert_create_response400.dart';import '../models/post_event_query_alert_update_request.dart';import '../models/post_event_query_alert_update_response.dart';import '../models/post_event_query_alert_update_response400.dart';import '../models/post_event_query_create_request.dart';import '../models/post_event_query_create_response.dart';import '../models/post_event_query_create_response400.dart';import '../models/post_event_query_update_request.dart';import '../models/post_event_query_update_response.dart';import '../models/post_event_query_update_response400.dart';import '../models/post_event_raw_update_request.dart';import '../models/post_event_raw_update_response.dart';import '../models/post_event_raw_update_response400.dart';import '../models/post_event_reference_create_request.dart';import '../models/post_event_reference_create_response400.dart';import '../models/post_event_reference_create_response_result.dart';import '../models/post_event_tag_create_request.dart';import '../models/post_event_tag_create_response400.dart';import '../models/post_event_tag_create_response_result.dart';import '../models/post_event_update_request.dart';import '../models/post_event_update_response.dart';import '../models/post_event_update_response400.dart';/// EventApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class EventApi with ApiExecutor {const EventApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Filter and list events
///
/// When `datasetId` is unspecified, events will be listed from the `Cloudforce One Threat Events` dataset. To list existing datasets (and their IDs), use the [`List Datasets`](https://developers.cloudflare.com/api/resources/cloudforce_one/subresources/threat_events/subresources/datasets/methods/list/) endpoint). Also, must provide query parameters.
///
/// `GET /accounts/{account_id}/cloudforce-one/events`
Future<ApiResult<List<GetEventListGetResponse>, GetEventListGetResponse400>> getEventListGet({required String accountId, String? cursor, List<GetEventListGetSearch>? search, double? page, double? pageSize, String? orderBy, GetEventListGetOrder? order, List<String>? datasetId, bool? forceRefresh, GetEventListGetFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (cursor != null) {
  queryParameters['cursor'] = cursor;
}
if (search != null) {
for (final item in search) {
  queryParametersList.add(ApiQueryParameter(name: 'search', value: item.toString()));
}
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (pageSize != null) {
  queryParameters['pageSize'] = pageSize.toString();
}
if (orderBy != null) {
  queryParameters['orderBy'] = orderBy;
}
if (order != null) {
  queryParameters['order'] = order.toJson();
}
if (datasetId != null) {
for (final item in datasetId) {
  queryParametersList.add(ApiQueryParameter(name: 'datasetId', value: item));
}
}
if (forceRefresh != null) {
  queryParameters['forceRefresh'] = forceRefresh.toString();
}
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => GetEventListGetResponse.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return GetEventListGetResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Deletes one or more events
///
/// `DELETE /accounts/{account_id}/cloudforce-one/events/{dataset_id}/delete`
Future<ApiResult<double, DeleteEventDeleteResponse400>> deleteEventDelete({required String accountId, required String datasetId, required List<String> eventIds, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
for (final item in eventIds) {
  queryParametersList.add(ApiQueryParameter(name: 'eventIds', value: item));
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/${Uri.encodeComponent(datasetId)}/delete',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return double.parse(response.body);
  },
  onError: (response) {
    return DeleteEventDeleteResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Revert an Events Durable Object to a point in time
///
/// `POST /accounts/{account_id}/cloudforce-one/events/{dataset_id}/revert-do`
Future<ApiResult<PostEventDoRevertResponse, PostEventDoRevertResponse400>> postEventDoRevert({required String accountId, required String datasetId, PostEventDoRevertRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/${Uri.encodeComponent(datasetId)}/revert-do',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PostEventDoRevertResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return PostEventDoRevertResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Updates an event
///
/// `POST /accounts/{account_id}/cloudforce-one/events/{event_id}`
Future<ApiResult<PostEventUpdateResponse, PostEventUpdateResponse400>> postEventUpdate({required String accountId, required String eventId, PostEventUpdateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/${Uri.encodeComponent(eventId)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PostEventUpdateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return PostEventUpdateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Updates an event
///
/// `PATCH /accounts/{account_id}/cloudforce-one/events/{event_id}`
Future<ApiResult<PatchEventUpdateResponse, PatchEventUpdateResponse400>> patchEventUpdate({required String accountId, required String eventId, PatchEventUpdateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/${Uri.encodeComponent(eventId)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PatchEventUpdateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return PatchEventUpdateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Reads data for a raw event
///
/// `GET /accounts/{account_id}/cloudforce-one/events/{event_id}/raw/{raw_id}`
Future<ApiResult<GetEventRawReadResponse, GetEventRawReadResponse400>> getEventRawRead({required String accountId, required String eventId, required String rawId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/${Uri.encodeComponent(eventId)}/raw/${Uri.encodeComponent(rawId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GetEventRawReadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return GetEventRawReadResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Updates a raw event
///
/// `POST /accounts/{account_id}/cloudforce-one/events/{event_id}/raw/{raw_id}`
Future<ApiResult<PostEventRawUpdateResponse, PostEventRawUpdateResponse400>> postEventRawUpdate({required String accountId, required String eventId, required String rawId, PostEventRawUpdateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/${Uri.encodeComponent(eventId)}/raw/${Uri.encodeComponent(rawId)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PostEventRawUpdateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return PostEventRawUpdateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Updates a raw event
///
/// `PATCH /accounts/{account_id}/cloudforce-one/events/{event_id}/raw/{raw_id}`
Future<ApiResult<PatchEventRawUpdateResponse, PatchEventRawUpdateResponse400>> patchEventRawUpdate({required String accountId, required String eventId, required String rawId, PatchEventRawUpdateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/${Uri.encodeComponent(eventId)}/raw/${Uri.encodeComponent(rawId)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PatchEventRawUpdateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return PatchEventRawUpdateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Filter and list events related to specific event
///
/// The `event_id` must be defined (to list existing events (and their IDs), use the [`Filter and List Events`](https://developers.cloudflare.com/api/resources/cloudforce_one/subresources/threat_events/methods/list/) endpoint). Also, must provide query parameters.
///
/// `GET /accounts/{account_id}/cloudforce-one/events/{event_id}/relationships`
Future<ApiResult<List<GetEventRelationshipsResponse>, GetEventRelationshipsResponse400>> getEventRelationships({required String accountId, required String eventId, required String datasetId, GetEventRelationshipsDirection? direction, double? maxDepth, GetEventRelationshipsRelationshipTypes? relationshipTypes, List<String>? indicatorTypeIds, bool? includeParent, double? page, double? pageSize, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (direction != null) {
  queryParameters['direction'] = direction.toJson();
}
if (maxDepth != null) {
  queryParameters['maxDepth'] = maxDepth.toString();
}
if (relationshipTypes != null) {
queryParametersList.add(ApiQueryParameter(name: 'relationshipTypes', value: relationshipTypes.toString()));
}
if (indicatorTypeIds != null) {
for (final item in indicatorTypeIds) {
  queryParametersList.add(ApiQueryParameter(name: 'indicatorTypeIds', value: item));
}
}
queryParameters['datasetId'] = datasetId;
if (includeParent != null) {
  queryParameters['includeParent'] = includeParent.toString();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (pageSize != null) {
  queryParameters['pageSize'] = pageSize.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/${Uri.encodeComponent(eventId)}/relationships',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => GetEventRelationshipsResponse.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return GetEventRelationshipsResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Aggregate events by single or multiple columns with optional date filtering
///
/// Aggregate threat events by one or more columns (e.g., attacker, targetIndustry) with optional date filtering and daily grouping. Supports multi-dimensional aggregation for cross-analysis.
///
/// `GET /accounts/{account_id}/cloudforce-one/events/aggregate`
Future<ApiResult<GetEventAggregateResponse, GetEventAggregateResponse400>> getEventAggregate({required String accountId, required String aggregateBy, GetEventAggregateDatasetId? datasetId, String? startDate, String? endDate, bool? groupByDate, double? limit, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['aggregateBy'] = aggregateBy;
if (datasetId != null) {
queryParametersList.add(ApiQueryParameter(name: 'datasetId', value: datasetId.toString()));
}
if (startDate != null) {
  queryParameters['startDate'] = startDate;
}
if (endDate != null) {
  queryParameters['endDate'] = endDate;
}
if (groupByDate != null) {
  queryParameters['groupByDate'] = groupByDate.toString();
}
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/aggregate',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GetEventAggregateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return GetEventAggregateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Creates a new event
///
/// To create a dataset, see the [`Create Dataset`](https://developers.cloudflare.com/api/resources/cloudforce_one/subresources/threat_events/subresources/datasets/methods/create/) endpoint. When `datasetId` parameter is unspecified, it will be created in a default dataset named `Cloudforce One Threat Events`.
///
/// `POST /accounts/{account_id}/cloudforce-one/events/create`
Future<ApiResult<PostEventCreateResponse, PostEventCreateResponse400>> postEventCreate({required String accountId, PostEventCreateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/create',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PostEventCreateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return PostEventCreateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Creates bulk events
///
/// The `datasetId` parameter must be defined. To list existing datasets (and their IDs) in your account, use the [`List Datasets`](https://developers.cloudflare.com/api/resources/cloudforce_one/subresources/threat_events/subresources/datasets/methods/list/) endpoint.
///
/// `POST /accounts/{account_id}/cloudforce-one/events/create/bulk`
Future<ApiResult<PostEventCreateBulkResponse202, PostEventCreateBulkResponse400>> postEventCreateBulk({required String accountId, PostEventCreateBulkRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/create/bulk',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PostEventCreateBulkResponse202.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return PostEventCreateBulkResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Reads an event
///
/// Retrieves a specific event by its UUID.
///
/// `GET /accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/events/{event_id}`
Future<ApiResult<GetEventReadResponse, GetEventReadResponse404>> getEventRead({required String accountId, required String datasetId, required String eventId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/${Uri.encodeComponent(datasetId)}/events/${Uri.encodeComponent(eventId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GetEventReadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return GetEventReadResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Moves specified events from one dataset to another dataset
///
/// `POST /accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/move`
Future<ApiResult<double, PostEventMoveToNewDsResponse400>> postEventMoveToNewDs({required String accountId, required String datasetId, bool? keepRawData, PostEventMoveToNewDsRequest? body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (keepRawData != null) {
  queryParameters['keepRawData'] = keepRawData.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/${Uri.encodeComponent(datasetId)}/move',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return double.parse(response.body);
  },
  onError: (response) {
    return PostEventMoveToNewDsResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Removes a tag from an event
///
/// `DELETE /accounts/{account_id}/cloudforce-one/events/event_tag/{event_id}`
Future<ApiResult<DeleteEventTagDeleteResponseResult, DeleteEventTagDeleteResponse400>> deleteEventTagDelete({required String accountId, required String eventId, DeleteEventTagDeleteRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/event_tag/${Uri.encodeComponent(eventId)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return DeleteEventTagDeleteResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return DeleteEventTagDeleteResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Adds a tag to an event
///
/// `POST /accounts/{account_id}/cloudforce-one/events/event_tag/{event_id}/create`
Future<ApiResult<PostEventTagCreateResponseResult, PostEventTagCreateResponse400>> postEventTagCreate({required String accountId, required String eventId, PostEventTagCreateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/event_tag/${Uri.encodeComponent(eventId)}/create',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return PostEventTagCreateResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return PostEventTagCreateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List all saved event queries
///
/// Retrieve all saved event queries for the account
///
/// `GET /accounts/{account_id}/cloudforce-one/events/queries`
Future<ApiResult<List<GetEventQueryListResponse>, GetEventQueryListResponse500>> getEventQueryList({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/queries',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => GetEventQueryListResponse.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return GetEventQueryListResponse500.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Read a saved event query
///
/// Retrieve a saved event query by its ID
///
/// `GET /accounts/{account_id}/cloudforce-one/events/queries/{query_id}`
Future<ApiResult<GetEventQueryReadResponse, GetEventQueryReadResponse404>> getEventQueryRead({required String accountId, required int queryId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/queries/${Uri.encodeComponent(queryId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GetEventQueryReadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return GetEventQueryReadResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a saved event query
///
/// Update an existing saved event query by its ID
///
/// `POST /accounts/{account_id}/cloudforce-one/events/queries/{query_id}`
Future<ApiResult<PostEventQueryUpdateResponse, PostEventQueryUpdateResponse400>> postEventQueryUpdate({required String accountId, required int queryId, PostEventQueryUpdateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/queries/${Uri.encodeComponent(queryId.toString())}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PostEventQueryUpdateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return PostEventQueryUpdateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a saved event query
///
/// Update an existing saved event query by its ID
///
/// `PATCH /accounts/{account_id}/cloudforce-one/events/queries/{query_id}`
Future<ApiResult<PatchEventQueryUpdateResponse, PatchEventQueryUpdateResponse400>> patchEventQueryUpdate({required String accountId, required int queryId, PatchEventQueryUpdateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/queries/${Uri.encodeComponent(queryId.toString())}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PatchEventQueryUpdateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return PatchEventQueryUpdateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a saved event query
///
/// Delete a saved event query by its ID
///
/// `DELETE /accounts/{account_id}/cloudforce-one/events/queries/{query_id}`
Future<ApiResult<void, DeleteEventQueryDeleteResponse404>> deleteEventQueryDelete({required String accountId, required int queryId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/queries/${Uri.encodeComponent(queryId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return DeleteEventQueryDeleteResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List all event query alerts
///
/// Retrieve all event query alerts for the account
///
/// `GET /accounts/{account_id}/cloudforce-one/events/queries/alerts`
Future<ApiResult<List<GetEventQueryAlertListResponse>, GetEventQueryAlertListResponse500>> getEventQueryAlertList({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/queries/alerts',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => GetEventQueryAlertListResponse.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return GetEventQueryAlertListResponse500.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Read an event query alert
///
/// Retrieve an event query alert by its ID
///
/// `GET /accounts/{account_id}/cloudforce-one/events/queries/alerts/{alert_id}`
Future<ApiResult<GetEventQueryAlertReadResponse, GetEventQueryAlertReadResponse404>> getEventQueryAlertRead({required String accountId, required int alertId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/queries/alerts/${Uri.encodeComponent(alertId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GetEventQueryAlertReadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return GetEventQueryAlertReadResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update an event query alert
///
/// Update an existing event query alert by its ID
///
/// `POST /accounts/{account_id}/cloudforce-one/events/queries/alerts/{alert_id}`
Future<ApiResult<PostEventQueryAlertUpdateResponse, PostEventQueryAlertUpdateResponse400>> postEventQueryAlertUpdate({required String accountId, required int alertId, PostEventQueryAlertUpdateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/queries/alerts/${Uri.encodeComponent(alertId.toString())}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PostEventQueryAlertUpdateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return PostEventQueryAlertUpdateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update an event query alert
///
/// Update an existing event query alert by its ID
///
/// `PATCH /accounts/{account_id}/cloudforce-one/events/queries/alerts/{alert_id}`
Future<ApiResult<PatchEventQueryAlertUpdateResponse, PatchEventQueryAlertUpdateResponse400>> patchEventQueryAlertUpdate({required String accountId, required int alertId, PatchEventQueryAlertUpdateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/queries/alerts/${Uri.encodeComponent(alertId.toString())}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PatchEventQueryAlertUpdateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return PatchEventQueryAlertUpdateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete an event query alert
///
/// Delete an event query alert subscription by its ID
///
/// `DELETE /accounts/{account_id}/cloudforce-one/events/queries/alerts/{alert_id}`
Future<ApiResult<void, DeleteEventQueryAlertDeleteResponse404>> deleteEventQueryAlertDelete({required String accountId, required int alertId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/queries/alerts/${Uri.encodeComponent(alertId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return DeleteEventQueryAlertDeleteResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create an event query alert
///
/// Create a new alert subscription for an event query
///
/// `POST /accounts/{account_id}/cloudforce-one/events/queries/alerts/create`
Future<ApiResult<PostEventQueryAlertCreateResponse, PostEventQueryAlertCreateResponse400>> postEventQueryAlertCreate({required String accountId, PostEventQueryAlertCreateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/queries/alerts/create',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PostEventQueryAlertCreateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return PostEventQueryAlertCreateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a saved event query
///
/// Create a new saved event query for the account
///
/// `POST /accounts/{account_id}/cloudforce-one/events/queries/create`
Future<ApiResult<PostEventQueryCreateResponse, PostEventQueryCreateResponse400>> postEventQueryCreate({required String accountId, PostEventQueryCreateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/queries/create',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PostEventQueryCreateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return PostEventQueryCreateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Reads raw data for an event by UUID
///
/// Retrieves the raw data associated with an event. Searches across all shards in the dataset.
///
/// `GET /accounts/{account_id}/cloudforce-one/events/raw/{dataset_id}/{event_id}`
Future<ApiResult<GetEventRawReadDsResponse, GetEventRawReadDsResponse404>> getEventRawReadDs({required String accountId, required String eventId, required String datasetId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/raw/${Uri.encodeComponent(datasetId)}/${Uri.encodeComponent(eventId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GetEventRawReadDsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return GetEventRawReadDsResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Removes an event reference
///
/// `DELETE /accounts/{account_id}/cloudforce-one/events/relate/{event_id}`
Future<ApiResult<DeleteEventReferenceDeleteResponseResult, DeleteEventReferenceDeleteResponse400>> deleteEventReferenceDelete({required String accountId, required String eventId, DeleteEventReferenceDeleteRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/relate/${Uri.encodeComponent(eventId)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return DeleteEventReferenceDeleteResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return DeleteEventReferenceDeleteResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Creates event references for a event
///
/// `POST /accounts/{account_id}/cloudforce-one/events/relate/{event_id}/create`
Future<ApiResult<PostEventReferenceCreateResponseResult, PostEventReferenceCreateResponse400>> postEventReferenceCreate({required String accountId, required String eventId, PostEventReferenceCreateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/relate/${Uri.encodeComponent(eventId)}/create',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return PostEventReferenceCreateResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return PostEventReferenceCreateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a relationship between two events
///
/// Creates a directed relationship between two events. The relationship is from parent to child with a specified type.
///
/// `POST /accounts/{account_id}/cloudforce-one/events/relationships/create`
Future<ApiResult<PostCreateEventRelationshipResponse, PostCreateEventRelationshipResponse400>> postCreateEventRelationship({required String accountId, PostCreateEventRelationshipRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/relationships/create',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PostCreateEventRelationshipResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return PostCreateEventRelationshipResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// GraphQL endpoint for event aggregation
///
/// Execute GraphQL aggregations over threat events. Supports multi-dimensional group-bys, optional date range filtering, and multi-dataset aggregation.
///
/// `POST /accounts/{account_id}/cloudforce-one/v2/events/graphql`
Future<ApiResult<PostEventGraphQlResponse, PostEventGraphQlResponse400>> postEventGraphQl({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/v2/events/graphql',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PostEventGraphQlResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return PostEventGraphQlResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
