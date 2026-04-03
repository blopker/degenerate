// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/observatory_availabilities.dart';import '../models/observatory_count_response_result.dart';import '../models/observatory_create_schedule_response_result.dart';import '../models/observatory_device_type.dart';import '../models/observatory_identifier.dart';import '../models/observatory_page_test_.dart';import '../models/observatory_pages_response_collection_result.dart';import '../models/observatory_region.dart';import '../models/observatory_schedule.dart';import '../models/observatory_schedule_frequency.dart';import '../models/observatory_timestamp.dart';import '../models/observatory_trend.dart';import '../models/observatory_url.dart';import '../models/speed_create_test_request.dart';/// ObservatoryApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ObservatoryApi with ApiExecutor {const ObservatoryApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get quota and availability
///
/// Retrieves quota for all plans, as well as the current zone quota.
///
/// `GET /zones/{zone_id}/speed_api/availabilities`
Future<ApiResult<ObservatoryAvailabilities?, Never>> speedGetAvailabilities({required ObservatoryIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/speed_api/availabilities',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ObservatoryAvailabilities.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// List tested webpages
///
/// Lists all webpages which have been tested.
///
/// `GET /zones/{zone_id}/speed_api/pages`
Future<ApiResult<List<ObservatoryPagesResponseCollectionResult>?, Never>> speedListPages({required ObservatoryIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/speed_api/pages',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => ObservatoryPagesResponseCollectionResult.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// List page test history
///
/// Test history (list of tests) for a specific webpage.
///
/// `GET /zones/{zone_id}/speed_api/pages/{url}/tests`
Future<ApiResult<List<ObservatoryPageTest>?, Never>> speedListTestHistory({required ObservatoryIdentifier zoneId, required ObservatoryUrl url, int? page, int? perPage, ObservatoryRegion? region, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (region != null) {
  queryParameters['region'] = region.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/speed_api/pages/${Uri.encodeComponent(url.toString())}/tests',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => ObservatoryPageTest.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Start page test
///
/// Starts a test for a specific webpage, in a specific region.
///
/// `POST /zones/{zone_id}/speed_api/pages/{url}/tests`
Future<ApiResult<ObservatoryPageTest?, Never>> speedCreateTest({required ObservatoryIdentifier zoneId, required ObservatoryUrl url, SpeedCreateTestRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/speed_api/pages/${Uri.encodeComponent(url.toString())}/tests',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ObservatoryPageTest.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete all page tests
///
/// Deletes all tests for a specific webpage from a specific region. Deleted tests are still counted as part of the quota.
///
/// `DELETE /zones/{zone_id}/speed_api/pages/{url}/tests`
Future<ApiResult<ObservatoryCountResponseResult?, Never>> speedDeleteTests({required ObservatoryIdentifier zoneId, required ObservatoryUrl url, ObservatoryRegion? region, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (region != null) {
  queryParameters['region'] = region.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/speed_api/pages/${Uri.encodeComponent(url.toString())}/tests',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ObservatoryCountResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get a page test result
///
/// Retrieves the result of a specific test.
///
/// `GET /zones/{zone_id}/speed_api/pages/{url}/tests/{test_id}`
Future<ApiResult<ObservatoryPageTest?, Never>> speedGetTest({required ObservatoryIdentifier zoneId, required ObservatoryUrl url, required String testId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/speed_api/pages/${Uri.encodeComponent(url.toString())}/tests/${Uri.encodeComponent(testId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ObservatoryPageTest.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// List core web vital metrics trend
///
/// Lists the core web vital metrics trend over time for a specific page.
///
/// `GET /zones/{zone_id}/speed_api/pages/{url}/trend`
Future<ApiResult<ObservatoryTrend?, Never>> speedListPageTrend({required ObservatoryIdentifier zoneId, required ObservatoryUrl url, required ObservatoryRegion region, required ObservatoryDeviceType deviceType, required ObservatoryTimestamp start, required String tz, required String metrics, ObservatoryTimestamp? end, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['region'] = region.toJson();
queryParameters['deviceType'] = deviceType.toJson();
queryParameters['start'] = start.toString();
if (end != null) {
  queryParameters['end'] = end.toString();
}
queryParameters['tz'] = tz;
queryParameters['metrics'] = metrics;

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/speed_api/pages/${Uri.encodeComponent(url.toString())}/trend',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ObservatoryTrend.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get a page test schedule
///
/// Retrieves the test schedule for a page in a specific region.
///
/// `GET /zones/{zone_id}/speed_api/schedule/{url}`
Future<ApiResult<ObservatorySchedule?, Never>> speedGetScheduledTest({required ObservatoryIdentifier zoneId, required ObservatoryUrl url, ObservatoryRegion? region, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (region != null) {
  queryParameters['region'] = region.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/speed_api/schedule/${Uri.encodeComponent(url.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ObservatorySchedule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Create scheduled page test
///
/// Creates a scheduled test for a page.
///
/// `POST /zones/{zone_id}/speed_api/schedule/{url}`
Future<ApiResult<ObservatoryCreateScheduleResponseResult?, Never>> speedCreateScheduledTest({required ObservatoryIdentifier zoneId, required ObservatoryUrl url, ObservatoryRegion? region, ObservatoryScheduleFrequency? frequency, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (region != null) {
  queryParameters['region'] = region.toJson();
}
if (frequency != null) {
  queryParameters['frequency'] = frequency.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/speed_api/schedule/${Uri.encodeComponent(url.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ObservatoryCreateScheduleResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete scheduled page test
///
/// Deletes a scheduled test for a page.
///
/// `DELETE /zones/{zone_id}/speed_api/schedule/{url}`
Future<ApiResult<ObservatoryCountResponseResult?, Never>> speedDeleteTestSchedule({required ObservatoryIdentifier zoneId, required ObservatoryUrl url, ObservatoryRegion? region, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (region != null) {
  queryParameters['region'] = region.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/speed_api/schedule/${Uri.encodeComponent(url.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ObservatoryCountResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
