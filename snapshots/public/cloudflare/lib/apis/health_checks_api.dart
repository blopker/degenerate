// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/health_checks_create_health_check_response4_xx.dart';import '../models/health_checks_create_preview_health_check_response4_xx.dart';import '../models/health_checks_delete_health_check_response4_xx.dart';import '../models/health_checks_delete_preview_health_check_response4_xx.dart';import '../models/health_checks_health_check_details_response4_xx.dart';import '../models/health_checks_health_check_preview_details_response4_xx.dart';import '../models/health_checks_list_health_checks_response4_xx.dart';import '../models/health_checks_patch_health_check_response4_xx.dart';import '../models/health_checks_update_health_check_response4_xx.dart';import '../models/healthchecks_healthchecks.dart';import '../models/healthchecks_id_response_result.dart';import '../models/healthchecks_identifier.dart';import '../models/healthchecks_query_healthcheck.dart';import '../models/smart_shield_create_health_check_response4_xx.dart';import '../models/smart_shield_delete_health_check_response4_xx.dart';import '../models/smart_shield_health_check_details_response4_xx.dart';import '../models/smart_shield_list_health_checks_response4_xx.dart';import '../models/smart_shield_patch_health_check_response4_xx.dart';import '../models/smart_shield_update_health_check_response4_xx.dart';import '../models/smartshield_healthchecks.dart';import '../models/smartshield_identifier.dart';import '../models/smartshield_query_healthcheck.dart';import '../models/smartshield_single_hc_id_response_result.dart';import '../models/smartshield_single_hc_response_request.dart';/// HealthChecksApi operations.
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
Future<ApiResult<List<HealthchecksHealthchecks>, HealthChecksListHealthChecksResponse4Xx>> healthChecksListHealthChecks({required HealthchecksIdentifier zoneId, double? page, double? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => HealthchecksHealthchecks.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return HealthChecksListHealthChecksResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Create Health Check
///
/// Create a new health check.
///
/// `POST /zones/{zone_id}/healthchecks`
Future<ApiResult<HealthchecksHealthchecks, HealthChecksCreateHealthCheckResponse4Xx>> healthChecksCreateHealthCheck({required HealthchecksIdentifier zoneId, required HealthchecksQueryHealthcheck body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
final json = jsonDecode(response.body) as Map<String, dynamic>;
return HealthchecksHealthchecks.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return HealthChecksCreateHealthCheckResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Health Check Details
///
/// Fetch a single configured health check.
///
/// `GET /zones/{zone_id}/healthchecks/{healthcheck_id}`
Future<ApiResult<HealthchecksHealthchecks, HealthChecksHealthCheckDetailsResponse4Xx>> healthChecksHealthCheckDetails({required HealthchecksIdentifier healthcheckId, required HealthchecksIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/healthchecks/${Uri.encodeComponent(healthcheckId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return HealthchecksHealthchecks.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return HealthChecksHealthCheckDetailsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update Health Check
///
/// Update a configured health check.
///
/// `PUT /zones/{zone_id}/healthchecks/{healthcheck_id}`
Future<ApiResult<HealthchecksHealthchecks, HealthChecksUpdateHealthCheckResponse4Xx>> healthChecksUpdateHealthCheck({required HealthchecksIdentifier healthcheckId, required HealthchecksIdentifier zoneId, required HealthchecksQueryHealthcheck body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
final json = jsonDecode(response.body) as Map<String, dynamic>;
return HealthchecksHealthchecks.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return HealthChecksUpdateHealthCheckResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Patch Health Check
///
/// Patch a configured health check.
///
/// `PATCH /zones/{zone_id}/healthchecks/{healthcheck_id}`
Future<ApiResult<HealthchecksHealthchecks, HealthChecksPatchHealthCheckResponse4Xx>> healthChecksPatchHealthCheck({required HealthchecksIdentifier healthcheckId, required HealthchecksIdentifier zoneId, required HealthchecksQueryHealthcheck body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
final json = jsonDecode(response.body) as Map<String, dynamic>;
return HealthchecksHealthchecks.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return HealthChecksPatchHealthCheckResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Delete Health Check
///
/// Delete a health check.
///
/// `DELETE /zones/{zone_id}/healthchecks/{healthcheck_id}`
Future<ApiResult<HealthchecksIdResponseResult, HealthChecksDeleteHealthCheckResponse4Xx>> healthChecksDeleteHealthCheck({required HealthchecksIdentifier healthcheckId, required HealthchecksIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/healthchecks/${Uri.encodeComponent(healthcheckId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return HealthchecksIdResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return HealthChecksDeleteHealthCheckResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Create Preview Health Check
///
/// Create a new preview health check.
///
/// `POST /zones/{zone_id}/healthchecks/preview`
Future<ApiResult<HealthchecksHealthchecks, HealthChecksCreatePreviewHealthCheckResponse4Xx>> healthChecksCreatePreviewHealthCheck({required HealthchecksIdentifier zoneId, required HealthchecksQueryHealthcheck body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
final json = jsonDecode(response.body) as Map<String, dynamic>;
return HealthchecksHealthchecks.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return HealthChecksCreatePreviewHealthCheckResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Health Check Preview Details
///
/// Fetch a single configured health check preview.
///
/// `GET /zones/{zone_id}/healthchecks/preview/{healthcheck_id}`
Future<ApiResult<HealthchecksHealthchecks, HealthChecksHealthCheckPreviewDetailsResponse4Xx>> healthChecksHealthCheckPreviewDetails({required HealthchecksIdentifier healthcheckId, required HealthchecksIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/healthchecks/preview/${Uri.encodeComponent(healthcheckId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return HealthchecksHealthchecks.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return HealthChecksHealthCheckPreviewDetailsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Delete Preview Health Check
///
/// Delete a health check.
///
/// `DELETE /zones/{zone_id}/healthchecks/preview/{healthcheck_id}`
Future<ApiResult<HealthchecksIdResponseResult, HealthChecksDeletePreviewHealthCheckResponse4Xx>> healthChecksDeletePreviewHealthCheck({required HealthchecksIdentifier healthcheckId, required HealthchecksIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/healthchecks/preview/${Uri.encodeComponent(healthcheckId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return HealthchecksIdResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return HealthChecksDeletePreviewHealthCheckResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// List Health Checks
///
/// List configured health checks.
///
/// `GET /zones/{zone_id}/smart_shield/healthchecks`
Future<ApiResult<List<SmartshieldHealthchecks>, SmartShieldListHealthChecksResponse4Xx>> smartShieldListHealthChecks({required SmartshieldIdentifier zoneId, double? page, double? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => SmartshieldHealthchecks.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return SmartShieldListHealthChecksResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Create Health Check
///
/// Create a new health check.
///
/// `POST /zones/{zone_id}/smart_shield/healthchecks`
Future<ApiResult<SmartshieldHealthchecks, SmartShieldCreateHealthCheckResponse4Xx>> smartShieldCreateHealthCheck({required SmartshieldIdentifier zoneId, required SmartshieldQueryHealthcheck body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
final json = jsonDecode(response.body) as Map<String, dynamic>;
return SmartshieldHealthchecks.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return SmartShieldCreateHealthCheckResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Health Check Details
///
/// Fetch a single configured health check.
///
/// `GET /zones/{zone_id}/smart_shield/healthchecks/{healthcheck_id}`
Future<ApiResult<SmartshieldHealthchecks, SmartShieldHealthCheckDetailsResponse4Xx>> smartShieldHealthCheckDetails({required SmartshieldIdentifier healthcheckId, required SmartshieldIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/smart_shield/healthchecks/${Uri.encodeComponent(healthcheckId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return SmartshieldHealthchecks.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return SmartShieldHealthCheckDetailsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update Health Check
///
/// Update a configured health check.
///
/// `PUT /zones/{zone_id}/smart_shield/healthchecks/{healthcheck_id}`
Future<ApiResult<SmartshieldHealthchecks, SmartShieldUpdateHealthCheckResponse4Xx>> smartShieldUpdateHealthCheck({required SmartshieldIdentifier healthcheckId, required SmartshieldIdentifier zoneId, required SmartshieldSingleHcResponseRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
final json = jsonDecode(response.body) as Map<String, dynamic>;
return SmartshieldHealthchecks.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return SmartShieldUpdateHealthCheckResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Patch Health Check
///
/// Patch a configured health check.
///
/// `PATCH /zones/{zone_id}/smart_shield/healthchecks/{healthcheck_id}`
Future<ApiResult<SmartshieldHealthchecks, SmartShieldPatchHealthCheckResponse4Xx>> smartShieldPatchHealthCheck({required SmartshieldIdentifier healthcheckId, required SmartshieldIdentifier zoneId, required SmartshieldQueryHealthcheck body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
final json = jsonDecode(response.body) as Map<String, dynamic>;
return SmartshieldHealthchecks.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return SmartShieldPatchHealthCheckResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Delete Health Check
///
/// Delete a health check.
///
/// `DELETE /zones/{zone_id}/smart_shield/healthchecks/{healthcheck_id}`
Future<ApiResult<SmartshieldSingleHcIdResponseResult, SmartShieldDeleteHealthCheckResponse4Xx>> smartShieldDeleteHealthCheck({required SmartshieldIdentifier healthcheckId, required SmartshieldIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/smart_shield/healthchecks/${Uri.encodeComponent(healthcheckId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return SmartshieldSingleHcIdResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return SmartShieldDeleteHealthCheckResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
