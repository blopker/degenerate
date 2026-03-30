// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/healthchecks_id_response.dart';import '../models/healthchecks_identifier.dart';import '../models/healthchecks_query_healthcheck.dart';import '../models/healthchecks_response_collection.dart';import '../models/healthchecks_single_response.dart';import '../models/smartshield_identifier.dart';import '../models/smartshield_query_healthcheck.dart';import '../models/smartshield_response_collection.dart';import '../models/smartshield_single_hc_id_response.dart';import '../models/smartshield_single_hc_response.dart';/// HealthChecksApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class HealthChecksApi with ApiExecutor {const HealthChecksApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Health Checks
///
/// List configured health checks.
///
/// `GET /zones/{zone_id}/healthchecks`
Future<ApiResult<HealthchecksResponseCollection, Never>> healthChecksListHealthChecks({required HealthchecksIdentifier zoneId, double? page, double? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/healthchecks',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return HealthchecksResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create Health Check
///
/// Create a new health check.
///
/// `POST /zones/{zone_id}/healthchecks`
Future<ApiResult<HealthchecksSingleResponse, Never>> healthChecksCreateHealthCheck({required HealthchecksIdentifier zoneId, required HealthchecksQueryHealthcheck body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/healthchecks',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return HealthchecksSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Health Check Details
///
/// Fetch a single configured health check.
///
/// `GET /zones/{zone_id}/healthchecks/{healthcheck_id}`
Future<ApiResult<HealthchecksSingleResponse, Never>> healthChecksHealthCheckDetails({required HealthchecksIdentifier healthcheckId, required HealthchecksIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/healthchecks/${Uri.encodeComponent(healthcheckId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return HealthchecksSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update Health Check
///
/// Update a configured health check.
///
/// `PUT /zones/{zone_id}/healthchecks/{healthcheck_id}`
Future<ApiResult<HealthchecksSingleResponse, Never>> healthChecksUpdateHealthCheck({required HealthchecksIdentifier healthcheckId, required HealthchecksIdentifier zoneId, required HealthchecksQueryHealthcheck body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/healthchecks/${Uri.encodeComponent(healthcheckId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return HealthchecksSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Patch Health Check
///
/// Patch a configured health check.
///
/// `PATCH /zones/{zone_id}/healthchecks/{healthcheck_id}`
Future<ApiResult<HealthchecksSingleResponse, Never>> healthChecksPatchHealthCheck({required HealthchecksIdentifier healthcheckId, required HealthchecksIdentifier zoneId, required HealthchecksQueryHealthcheck body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/healthchecks/${Uri.encodeComponent(healthcheckId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return HealthchecksSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Health Check
///
/// Delete a health check.
///
/// `DELETE /zones/{zone_id}/healthchecks/{healthcheck_id}`
Future<ApiResult<HealthchecksIdResponse, Never>> healthChecksDeleteHealthCheck({required HealthchecksIdentifier healthcheckId, required HealthchecksIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/healthchecks/${Uri.encodeComponent(healthcheckId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return HealthchecksIdResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create Preview Health Check
///
/// Create a new preview health check.
///
/// `POST /zones/{zone_id}/healthchecks/preview`
Future<ApiResult<HealthchecksSingleResponse, Never>> healthChecksCreatePreviewHealthCheck({required HealthchecksIdentifier zoneId, required HealthchecksQueryHealthcheck body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/healthchecks/preview',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return HealthchecksSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Health Check Preview Details
///
/// Fetch a single configured health check preview.
///
/// `GET /zones/{zone_id}/healthchecks/preview/{healthcheck_id}`
Future<ApiResult<HealthchecksSingleResponse, Never>> healthChecksHealthCheckPreviewDetails({required HealthchecksIdentifier healthcheckId, required HealthchecksIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/healthchecks/preview/${Uri.encodeComponent(healthcheckId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return HealthchecksSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Preview Health Check
///
/// Delete a health check.
///
/// `DELETE /zones/{zone_id}/healthchecks/preview/{healthcheck_id}`
Future<ApiResult<HealthchecksIdResponse, Never>> healthChecksDeletePreviewHealthCheck({required HealthchecksIdentifier healthcheckId, required HealthchecksIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/healthchecks/preview/${Uri.encodeComponent(healthcheckId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return HealthchecksIdResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List Health Checks
///
/// List configured health checks.
///
/// `GET /zones/{zone_id}/smart_shield/healthchecks`
Future<ApiResult<SmartshieldResponseCollection, Never>> smartShieldListHealthChecks({required SmartshieldIdentifier zoneId, double? page, double? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/smart_shield/healthchecks',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return SmartshieldResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create Health Check
///
/// Create a new health check.
///
/// `POST /zones/{zone_id}/smart_shield/healthchecks`
Future<ApiResult<SmartshieldSingleHcResponse, Never>> smartShieldCreateHealthCheck({required SmartshieldIdentifier zoneId, required SmartshieldQueryHealthcheck body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/smart_shield/healthchecks',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return SmartshieldSingleHcResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Health Check Details
///
/// Fetch a single configured health check.
///
/// `GET /zones/{zone_id}/smart_shield/healthchecks/{healthcheck_id}`
Future<ApiResult<SmartshieldSingleHcResponse, Never>> smartShieldHealthCheckDetails({required SmartshieldIdentifier healthcheckId, required SmartshieldIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/smart_shield/healthchecks/${Uri.encodeComponent(healthcheckId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return SmartshieldSingleHcResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update Health Check
///
/// Update a configured health check.
///
/// `PUT /zones/{zone_id}/smart_shield/healthchecks/{healthcheck_id}`
Future<ApiResult<SmartshieldSingleHcResponse, Never>> smartShieldUpdateHealthCheck({required SmartshieldIdentifier healthcheckId, required SmartshieldIdentifier zoneId, required SmartshieldSingleHcResponse body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/smart_shield/healthchecks/${Uri.encodeComponent(healthcheckId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return SmartshieldSingleHcResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Patch Health Check
///
/// Patch a configured health check.
///
/// `PATCH /zones/{zone_id}/smart_shield/healthchecks/{healthcheck_id}`
Future<ApiResult<SmartshieldSingleHcResponse, Never>> smartShieldPatchHealthCheck({required SmartshieldIdentifier healthcheckId, required SmartshieldIdentifier zoneId, required SmartshieldQueryHealthcheck body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/smart_shield/healthchecks/${Uri.encodeComponent(healthcheckId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return SmartshieldSingleHcResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Health Check
///
/// Delete a health check.
///
/// `DELETE /zones/{zone_id}/smart_shield/healthchecks/{healthcheck_id}`
Future<ApiResult<SmartshieldSingleHcIdResponse, Never>> smartShieldDeleteHealthCheck({required SmartshieldIdentifier healthcheckId, required SmartshieldIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/smart_shield/healthchecks/${Uri.encodeComponent(healthcheckId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return SmartshieldSingleHcIdResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
