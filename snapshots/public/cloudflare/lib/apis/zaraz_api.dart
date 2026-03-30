// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/get_zones_zone_identifier_zaraz_history_sort_field.dart';import '../models/get_zones_zone_identifier_zaraz_history_sort_order.dart';import '../models/post_zones_zone_identifier_zaraz_publish_response.dart';import '../models/zaraz_identifier.dart';import '../models/zaraz_zaraz_config_body.dart';import '../models/zaraz_zaraz_config_history_response.dart';import '../models/zaraz_zaraz_config_response.dart';import '../models/zaraz_zaraz_config_return.dart';import '../models/zaraz_zaraz_history_response.dart';import '../models/zaraz_zaraz_workflow.dart';import '../models/zaraz_zaraz_workflow_response.dart';/// ZarazApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZarazApi with ApiExecutor {const ZarazApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get Zaraz configuration
///
/// Gets latest Zaraz configuration for a zone. It can be preview or published configuration, whichever was the last updated. Secret variables values will not be included.
///
/// `GET /zones/{zone_id}/settings/zaraz/config`
Future<ApiResult<ZarazZarazConfigResponse, Never>> getZonesZoneIdentifierZarazConfig({required ZarazIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/settings/zaraz/config',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZarazZarazConfigResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update Zaraz configuration
///
/// Updates Zaraz configuration for a zone.
///
/// `PUT /zones/{zone_id}/settings/zaraz/config`
Future<ApiResult<ZarazZarazConfigResponse, Never>> putZonesZoneIdentifierZarazConfig({required ZarazIdentifier zoneId, required ZarazZarazConfigBody body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/settings/zaraz/config',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZarazZarazConfigResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get default Zaraz configuration
///
/// Gets default Zaraz configuration for a zone.
///
/// `GET /zones/{zone_id}/settings/zaraz/default`
Future<ApiResult<ZarazZarazConfigResponse, Never>> getZonesZoneIdentifierZarazDefault({required ZarazIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/settings/zaraz/default',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZarazZarazConfigResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Export Zaraz configuration
///
/// Exports full current published Zaraz configuration for a zone, secret variables included.
///
/// `GET /zones/{zone_id}/settings/zaraz/export`
Future<ApiResult<ZarazZarazConfigReturn, Never>> getZonesZoneIdentifierZarazExport({required ZarazIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/settings/zaraz/export',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZarazZarazConfigReturn.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List Zaraz historical configuration records
///
/// Lists a history of published Zaraz configuration records for a zone.
///
/// `GET /zones/{zone_id}/settings/zaraz/history`
Future<ApiResult<ZarazZarazHistoryResponse, Never>> getZonesZoneIdentifierZarazHistory({required ZarazIdentifier zoneId, int? offset, int? limit, GetZonesZoneIdentifierZarazHistorySortField? sortField, GetZonesZoneIdentifierZarazHistorySortOrder? sortOrder, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (offset != null) {
  queryParameters['offset'] = offset.toString();
}
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (sortField != null) {
  queryParameters['sortField'] = sortField.toJson();
}
if (sortOrder != null) {
  queryParameters['sortOrder'] = sortOrder.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/settings/zaraz/history',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZarazZarazHistoryResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Restore Zaraz historical configuration by ID
///
/// Restores a historical published Zaraz configuration by ID for a zone.
///
/// `PUT /zones/{zone_id}/settings/zaraz/history`
Future<ApiResult<ZarazZarazConfigResponse, Never>> putZonesZoneIdentifierZarazHistory({required ZarazIdentifier zoneId, required int body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/settings/zaraz/history',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZarazZarazConfigResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Zaraz historical configurations by ID(s)
///
/// Gets a history of published Zaraz configurations by ID(s) for a zone.
///
/// `GET /zones/{zone_id}/settings/zaraz/history/configs`
Future<ApiResult<ZarazZarazConfigHistoryResponse, Never>> getZonesZoneIdentifierZarazConfigHistory({required ZarazIdentifier zoneId, required List<int> ids, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['ids'] = ids.map((item) => item.toString()).join(',');

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/settings/zaraz/history/configs',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZarazZarazConfigHistoryResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Publish Zaraz preview configuration
///
/// Publish current Zaraz preview configuration for a zone.
///
/// `POST /zones/{zone_id}/settings/zaraz/publish`
Future<ApiResult<PostZonesZoneIdentifierZarazPublishResponse, Never>> postZonesZoneIdentifierZarazPublish({required ZarazIdentifier zoneId, String? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/settings/zaraz/publish',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PostZonesZoneIdentifierZarazPublishResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Zaraz workflow
///
/// Gets Zaraz workflow for a zone.
///
/// `GET /zones/{zone_id}/settings/zaraz/workflow`
Future<ApiResult<ZarazZarazWorkflowResponse, Never>> getZonesZoneIdentifierZarazWorkflow({required ZarazIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/settings/zaraz/workflow',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZarazZarazWorkflowResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update Zaraz workflow
///
/// Updates Zaraz workflow for a zone.
///
/// `PUT /zones/{zone_id}/settings/zaraz/workflow`
Future<ApiResult<ZarazZarazWorkflowResponse, Never>> putZonesZoneIdentifierZarazWorkflow({required ZarazIdentifier zoneId, required ZarazZarazWorkflow body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/settings/zaraz/workflow',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZarazZarazWorkflowResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
