// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dex_endpoints_http_test_details_interval.dart';import '../models/dex_endpoints_http_test_details_response.dart';import '../models/dex_endpoints_http_test_percentiles_response.dart';import '../models/dex_endpoints_list_colos_response.dart';import '../models/dex_endpoints_list_colos_sort_by.dart';import '../models/dex_endpoints_list_tests_overview_kind.dart';import '../models/dex_endpoints_list_tests_overview_response.dart';import '../models/dex_endpoints_tests_unique_devices_response.dart';import '../models/dex_endpoints_traceroute_test_details_interval.dart';import '../models/dex_endpoints_traceroute_test_details_response.dart';import '../models/dex_endpoints_traceroute_test_network_path_interval.dart';import '../models/dex_endpoints_traceroute_test_network_path_response.dart';import '../models/dex_endpoints_traceroute_test_percentiles_response.dart';import '../models/dex_endpoints_traceroute_test_result_network_path_response.dart';import '../models/digital_experience_monitoring_account_identifier.dart';import '../models/digital_experience_monitoring_colo.dart';import '../models/digital_experience_monitoring_device.dart';import '../models/digital_experience_monitoring_device_id.dart';import '../models/digital_experience_monitoring_fleet_status_devices_response.dart';import '../models/digital_experience_monitoring_fleet_status_live_response.dart';import '../models/digital_experience_monitoring_fleet_status_over_time_response.dart';import '../models/digital_experience_monitoring_mode.dart';import '../models/digital_experience_monitoring_page.dart';import '../models/digital_experience_monitoring_per_page.dart';import '../models/digital_experience_monitoring_platform.dart';import '../models/digital_experience_monitoring_since_minutes.dart';import '../models/digital_experience_monitoring_sort_by.dart';import '../models/digital_experience_monitoring_source.dart';import '../models/digital_experience_monitoring_status.dart';import '../models/digital_experience_monitoring_time_now.dart';import '../models/digital_experience_monitoring_timestamp.dart';import '../models/digital_experience_monitoring_uuid.dart';import '../models/digital_experience_monitoring_version.dart';/// DexSyntheticApplicationMonitoringApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DexSyntheticApplicationMonitoringApi with ApiExecutor {const DexSyntheticApplicationMonitoringApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Cloudflare colos
///
/// List Cloudflare colos that account's devices were connected to during a time period, sorted by usage starting from the most used colo. Colos without traffic are also returned and sorted alphabetically.
///
/// `GET /accounts/{account_id}/dex/colos`
Future<ApiResult<DexEndpointsListColosResponse, Never>> dexEndpointsListColos({required DigitalExperienceMonitoringAccountIdentifier accountId, required String from, required String to, DexEndpointsListColosSortBy? sortBy, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['from'] = from;
queryParameters['to'] = to;
if (sortBy != null) {
  queryParameters['sortBy'] = sortBy.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dex/colos',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DexEndpointsListColosResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get the live status of a latest device
///
/// Get the live status of a latest device given device_id from the device_state table
///
/// `GET /accounts/{account_id}/dex/devices/{device_id}/fleet-status/live`
Future<ApiResult<DigitalExperienceMonitoringDevice, Never>> devicesLiveStatus({required DigitalExperienceMonitoringAccountIdentifier accountId, required DigitalExperienceMonitoringDeviceId deviceId, required DigitalExperienceMonitoringSinceMinutes sinceMinutes, DigitalExperienceMonitoringTimeNow? timeNow, DigitalExperienceMonitoringColo? colo, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['since_minutes'] = sinceMinutes.toString();
if (timeNow != null) {
  queryParameters['time_now'] = timeNow.toString();
}
if (colo != null) {
  queryParameters['colo'] = colo.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dex/devices/${Uri.encodeComponent(deviceId.toString())}/fleet-status/live',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DigitalExperienceMonitoringDevice.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List fleet status devices
///
/// List details for devices using WARP
///
/// `GET /accounts/{account_id}/dex/fleet-status/devices`
Future<ApiResult<DigitalExperienceMonitoringFleetStatusDevicesResponse, Never>> dexFleetStatusDevices({required DigitalExperienceMonitoringAccountIdentifier accountId, required DigitalExperienceMonitoringTimestamp to, required DigitalExperienceMonitoringTimestamp from, required DigitalExperienceMonitoringPage page, required DigitalExperienceMonitoringPerPage perPage, DigitalExperienceMonitoringSortBy? sortBy, DigitalExperienceMonitoringColo? colo, DigitalExperienceMonitoringDeviceId? deviceId, DigitalExperienceMonitoringMode? mode, DigitalExperienceMonitoringStatus? status, DigitalExperienceMonitoringPlatform? platform, DigitalExperienceMonitoringVersion? version, DigitalExperienceMonitoringSource? source, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['to'] = to.toString();
queryParameters['from'] = from.toString();
queryParameters['page'] = page.toString();
queryParameters['per_page'] = perPage.toString();
if (sortBy != null) {
  queryParameters['sort_by'] = sortBy.toJson();
}
if (colo != null) {
  queryParameters['colo'] = colo.toString();
}
if (deviceId != null) {
  queryParameters['device_id'] = deviceId.toString();
}
if (mode != null) {
  queryParameters['mode'] = mode.toString();
}
if (status != null) {
  queryParameters['status'] = status.toString();
}
if (platform != null) {
  queryParameters['platform'] = platform.toString();
}
if (version != null) {
  queryParameters['version'] = version.toString();
}
if (source != null) {
  queryParameters['source'] = source.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dex/fleet-status/devices',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DigitalExperienceMonitoringFleetStatusDevicesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List fleet status details by dimension
///
/// List details for live (up to 60 minutes) devices using WARP
///
/// `GET /accounts/{account_id}/dex/fleet-status/live`
Future<ApiResult<DigitalExperienceMonitoringFleetStatusLiveResponse, Never>> dexFleetStatusLive({required DigitalExperienceMonitoringAccountIdentifier accountId, required DigitalExperienceMonitoringSinceMinutes sinceMinutes, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['since_minutes'] = sinceMinutes.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dex/fleet-status/live',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DigitalExperienceMonitoringFleetStatusLiveResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List fleet status aggregate details by dimension
///
/// List details for devices using WARP, up to 7 days
///
/// `GET /accounts/{account_id}/dex/fleet-status/over-time`
Future<ApiResult<DigitalExperienceMonitoringFleetStatusOverTimeResponse, Never>> dexFleetStatusOverTime({required DigitalExperienceMonitoringAccountIdentifier accountId, required DigitalExperienceMonitoringTimestamp to, required DigitalExperienceMonitoringTimestamp from, DigitalExperienceMonitoringColo? colo, DigitalExperienceMonitoringDeviceId? deviceId, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['to'] = to.toString();
queryParameters['from'] = from.toString();
if (colo != null) {
  queryParameters['colo'] = colo.toString();
}
if (deviceId != null) {
  queryParameters['device_id'] = deviceId.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dex/fleet-status/over-time',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DigitalExperienceMonitoringFleetStatusOverTimeResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get details and aggregate metrics for an http test
///
/// Get test details and aggregate performance metrics for an http test for a given time period between 1 hour and 7 days.
///
/// `GET /accounts/{account_id}/dex/http-tests/{test_id}`
Future<ApiResult<DexEndpointsHttpTestDetailsResponse, Never>> dexEndpointsHttpTestDetails({required DigitalExperienceMonitoringAccountIdentifier accountId, required DigitalExperienceMonitoringUuid testId, List<String>? deviceId, required String from, required String to, required DexEndpointsHttpTestDetailsInterval interval, String? colo, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (deviceId != null) {
for (final item in deviceId) {
  queryParametersList.add(ApiQueryParameter(name: 'deviceId', value: item, allowReserved: false));
}
}
queryParameters['from'] = from;
queryParameters['to'] = to;
queryParameters['interval'] = interval.toJson();
if (colo != null) {
  queryParameters['colo'] = colo;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dex/http-tests/${Uri.encodeComponent(testId.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DexEndpointsHttpTestDetailsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get percentiles for an http test
///
/// Get percentiles for an http test for a given time period between 1 hour and 7 days.
///
/// `GET /accounts/{account_id}/dex/http-tests/{test_id}/percentiles`
Future<ApiResult<DexEndpointsHttpTestPercentilesResponse, Never>> dexEndpointsHttpTestPercentiles({required DigitalExperienceMonitoringAccountIdentifier accountId, required DigitalExperienceMonitoringUuid testId, List<String>? deviceId, required String from, required String to, String? colo, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (deviceId != null) {
for (final item in deviceId) {
  queryParametersList.add(ApiQueryParameter(name: 'deviceId', value: item, allowReserved: false));
}
}
queryParameters['from'] = from;
queryParameters['to'] = to;
if (colo != null) {
  queryParameters['colo'] = colo;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dex/http-tests/${Uri.encodeComponent(testId.toString())}/percentiles',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DexEndpointsHttpTestPercentilesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List DEX test analytics
///
/// List DEX tests with overview metrics
///
/// `GET /accounts/{account_id}/dex/tests/overview`
Future<ApiResult<DexEndpointsListTestsOverviewResponse, Never>> dexEndpointsListTestsOverview({required DigitalExperienceMonitoringAccountIdentifier accountId, String? colo, String? testName, List<String>? deviceId, double? page, double? perPage, DexEndpointsListTestsOverviewKind? kind, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (colo != null) {
  queryParameters['colo'] = colo;
}
if (testName != null) {
  queryParameters['testName'] = testName;
}
if (deviceId != null) {
for (final item in deviceId) {
  queryParametersList.add(ApiQueryParameter(name: 'deviceId', value: item, allowReserved: false));
}
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (kind != null) {
  queryParameters['kind'] = kind.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dex/tests/overview',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DexEndpointsListTestsOverviewResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get count of devices targeted
///
/// Returns unique count of devices that have run synthetic application monitoring tests in the past 7 days.
///
/// `GET /accounts/{account_id}/dex/tests/unique-devices`
Future<ApiResult<DexEndpointsTestsUniqueDevicesResponse, Never>> dexEndpointsTestsUniqueDevices({required DigitalExperienceMonitoringAccountIdentifier accountId, String? testName, List<String>? deviceId, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (testName != null) {
  queryParameters['testName'] = testName;
}
if (deviceId != null) {
for (final item in deviceId) {
  queryParametersList.add(ApiQueryParameter(name: 'deviceId', value: item, allowReserved: false));
}
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dex/tests/unique-devices',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DexEndpointsTestsUniqueDevicesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get details for a specific traceroute test run
///
/// Get a breakdown of hops and performance metrics for a specific traceroute test run
///
/// `GET /accounts/{account_id}/dex/traceroute-test-results/{test_result_id}/network-path`
Future<ApiResult<DexEndpointsTracerouteTestResultNetworkPathResponse, Never>> dexEndpointsTracerouteTestResultNetworkPath({required DigitalExperienceMonitoringAccountIdentifier accountId, required DigitalExperienceMonitoringUuid testResultId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dex/traceroute-test-results/${Uri.encodeComponent(testResultId.toString())}/network-path',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DexEndpointsTracerouteTestResultNetworkPathResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get details and aggregate metrics for a traceroute test
///
/// Get test details and aggregate performance metrics for an traceroute test for a given time period between 1 hour and 7 days.
///
/// `GET /accounts/{account_id}/dex/traceroute-tests/{test_id}`
Future<ApiResult<DexEndpointsTracerouteTestDetailsResponse, Never>> dexEndpointsTracerouteTestDetails({required DigitalExperienceMonitoringAccountIdentifier accountId, required DigitalExperienceMonitoringUuid testId, List<String>? deviceId, required String from, required String to, required DexEndpointsTracerouteTestDetailsInterval interval, String? colo, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (deviceId != null) {
for (final item in deviceId) {
  queryParametersList.add(ApiQueryParameter(name: 'deviceId', value: item, allowReserved: false));
}
}
queryParameters['from'] = from;
queryParameters['to'] = to;
queryParameters['interval'] = interval.toJson();
if (colo != null) {
  queryParameters['colo'] = colo;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dex/traceroute-tests/${Uri.encodeComponent(testId.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DexEndpointsTracerouteTestDetailsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get network path breakdown for a traceroute test
///
/// Get a breakdown of metrics by hop for individual traceroute test runs
///
/// `GET /accounts/{account_id}/dex/traceroute-tests/{test_id}/network-path`
Future<ApiResult<DexEndpointsTracerouteTestNetworkPathResponse, Never>> dexEndpointsTracerouteTestNetworkPath({required DigitalExperienceMonitoringAccountIdentifier accountId, required DigitalExperienceMonitoringUuid testId, required String deviceId, required String from, required String to, required DexEndpointsTracerouteTestNetworkPathInterval interval, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['deviceId'] = deviceId;
queryParameters['from'] = from;
queryParameters['to'] = to;
queryParameters['interval'] = interval.toJson();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dex/traceroute-tests/${Uri.encodeComponent(testId.toString())}/network-path',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DexEndpointsTracerouteTestNetworkPathResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get percentiles for a traceroute test
///
/// Get percentiles for a traceroute test for a given time period between 1 hour and 7 days.
///
/// `GET /accounts/{account_id}/dex/traceroute-tests/{test_id}/percentiles`
Future<ApiResult<DexEndpointsTracerouteTestPercentilesResponse, Never>> dexEndpointsTracerouteTestPercentiles({required DigitalExperienceMonitoringAccountIdentifier accountId, required DigitalExperienceMonitoringUuid testId, List<String>? deviceId, required String from, required String to, String? colo, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (deviceId != null) {
for (final item in deviceId) {
  queryParametersList.add(ApiQueryParameter(name: 'deviceId', value: item, allowReserved: false));
}
}
queryParameters['from'] = from;
queryParameters['to'] = to;
if (colo != null) {
  queryParameters['colo'] = colo;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dex/traceroute-tests/${Uri.encodeComponent(testId.toString())}/percentiles',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DexEndpointsTracerouteTestPercentilesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
