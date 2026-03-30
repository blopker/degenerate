// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/event_calendar_schema.dart';import '../models/filter_options_schema.dart';import '../models/paged_session_list_schema.dart';import '../models/session_detail_schema.dart';/// EventsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class EventsApi with ApiExecutor {const EventsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Events
///
/// `GET /api/v1/spaces/`
Future<ApiResult<PagedSessionListSchema, Never>> totemSpacesApiListEvents({required String? category, required String? author, int? limit, int? offset, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (category != null) {
  queryParameters['category'] = category;
}
if (author != null) {
  queryParameters['author'] = author;
}
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (offset != null) {
  queryParameters['offset'] = offset.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/api/v1/spaces/',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PagedSessionListSchema.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Filter Options
///
/// `GET /api/v1/spaces/filter-options`
Future<ApiResult<FilterOptionsSchema, Never>> totemSpacesApiFilterOptions({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/api/v1/spaces/filter-options',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return FilterOptionsSchema.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Event Detail
///
/// `GET /api/v1/spaces/event/{event_slug}`
Future<ApiResult<SessionDetailSchema, Never>> totemSpacesApiEventDetail({required String eventSlug, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/api/v1/spaces/event/${Uri.encodeComponent(eventSlug)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return SessionDetailSchema.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Upcoming Events
///
/// `GET /api/v1/spaces/calendar`
Future<ApiResult<List<EventCalendarSchema>, Never>> totemSpacesApiUpcomingEvents({String? spaceSlug, int? month, int? year, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (spaceSlug != null) {
  queryParameters['space_slug'] = spaceSlug;
}
if (month != null) {
  queryParameters['month'] = month.toString();
}
if (year != null) {
  queryParameters['year'] = year.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/api/v1/spaces/calendar',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => EventCalendarSchema.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
 }
