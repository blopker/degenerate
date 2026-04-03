// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/response_common6.dart';import '../models/schemas_feature.dart';import '../models/shield_basic_operation.dart';import '../models/shield_endpoint_management_retrieve_information_about_all_operations_on_a_zone_direction.dart';import '../models/shield_endpoint_management_retrieve_information_about_all_operations_on_a_zone_feature.dart';import '../models/shield_endpoint_management_retrieve_information_about_all_operations_on_a_zone_order.dart';import '../models/shield_endpoint_management_retrieve_information_about_an_operation_feature.dart';import '../models/shield_identifier.dart';import '../models/shield_object_with_operation_id.dart';import '../models/shield_operation.dart';import '../models/shield_schema_response_with_thresholds_result.dart';import '../models/shield_uuid.dart';/// ShieldEndpointManagementApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ShieldEndpointManagementApi with ApiExecutor {const ShieldEndpointManagementApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Retrieve information about all operations on a zone
///
/// Lists all API operations tracked by API Shield for a zone with pagination. Returns operation details including method, path, and feature configurations.
///
/// `GET /zones/{zone_id}/api_gateway/operations`
Future<ApiResult<List<ShieldOperation>, Never>> apiShieldEndpointManagementRetrieveInformationAboutAllOperationsOnAZone({required ShieldIdentifier zoneId, int? page, int? perPage, ShieldEndpointManagementRetrieveInformationAboutAllOperationsOnAZoneOrder? order, ShieldEndpointManagementRetrieveInformationAboutAllOperationsOnAZoneDirection? direction, List<String>? host, List<String>? method, String? endpoint, List<ShieldEndpointManagementRetrieveInformationAboutAllOperationsOnAZoneFeature>? feature, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (order != null) {
  queryParameters['order'] = order.toJson();
}
if (direction != null) {
  queryParameters['direction'] = direction.toJson();
}
if (host != null) {
for (final item in host) {
  queryParametersList.add(ApiQueryParameter(name: 'host', value: item));
}
}
if (method != null) {
for (final item in method) {
  queryParametersList.add(ApiQueryParameter(name: 'method', value: item));
}
}
if (endpoint != null) {
  queryParameters['endpoint'] = endpoint;
}
if (feature != null) {
for (final item in feature) {
  queryParametersList.add(ApiQueryParameter(name: 'feature', value: item.toJson()));
}
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/api_gateway/operations',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>).map((e) => ShieldOperation.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Add operations to a zone
///
/// Add one or more operations to a zone. Endpoints can contain path variables. Host, method, endpoint will be normalized to a canoncial form when creating an operation and must be unique on the zone. Inserting an operation that matches an existing one will return the record of the already existing operation and update its last_updated date.
///
/// `POST /zones/{zone_id}/api_gateway/operations`
Future<ApiResult<List<ShieldOperation>, Never>> apiShieldEndpointManagementAddOperationsToAZone({required ShieldIdentifier zoneId, required List<ShieldBasicOperation> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/api_gateway/operations',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>).map((e) => ShieldOperation.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Delete multiple operations
///
/// Bulk removes multiple API operations from API Shield endpoint management in a single request. Efficient for cleaning up unused endpoints.
///
/// `DELETE /zones/{zone_id}/api_gateway/operations`
Future<ApiResult<ResponseCommon6, Never>> apiShieldEndpointManagementDeleteMultipleOperations({required ShieldIdentifier zoneId, required List<ShieldObjectWithOperationId> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/api_gateway/operations',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon6.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Retrieve information about an operation
///
/// Gets detailed information about a specific API operation in API Shield, including its schema validation settings and traffic statistics.
///
/// `GET /zones/{zone_id}/api_gateway/operations/{operation_id}`
Future<ApiResult<ShieldOperation, Never>> apiShieldEndpointManagementRetrieveInformationAboutAnOperation({required ShieldIdentifier zoneId, required ShieldUuid operationId, List<ShieldEndpointManagementRetrieveInformationAboutAnOperationFeature>? feature, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (feature != null) {
for (final item in feature) {
  queryParametersList.add(ApiQueryParameter(name: 'feature', value: item.toJson()));
}
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/api_gateway/operations/${Uri.encodeComponent(operationId.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return ShieldOperation.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// Delete an operation
///
/// Removes a single API operation from API Shield endpoint management. The operation will no longer be tracked or protected by API Shield rules.
///
/// `DELETE /zones/{zone_id}/api_gateway/operations/{operation_id}`
Future<ApiResult<ResponseCommon6, Never>> apiShieldEndpointManagementDeleteAnOperation({required ShieldIdentifier zoneId, required ShieldUuid operationId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/api_gateway/operations/${Uri.encodeComponent(operationId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon6.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Add one operation to a zone
///
/// Add one operation to a zone. Endpoints can contain path variables. Host, method, endpoint will be normalized to a canoncial form when creating an operation and must be unique on the zone. Inserting an operation that matches an existing one will return the record of the already existing operation and update its last_updated date.
///
/// `POST /zones/{zone_id}/api_gateway/operations/item`
Future<ApiResult<ShieldOperation, Never>> apiShieldEndpointManagementAddOperationToAZone({required ShieldIdentifier zoneId, required ShieldBasicOperation body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/api_gateway/operations/item',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return ShieldOperation.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// Retrieve operations and features as OpenAPI schemas
///
/// `GET /zones/{zone_id}/api_gateway/schemas`
Future<ApiResult<ShieldSchemaResponseWithThresholdsResult, Never>> apiShieldEndpointManagementRetrieveOperationsAndFeaturesAsOpenApiSchemas({required ShieldIdentifier zoneId, List<String>? host, List<SchemasFeature>? feature, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (host != null) {
for (final item in host) {
  queryParametersList.add(ApiQueryParameter(name: 'host', value: item));
}
}
if (feature != null) {
for (final item in feature) {
  queryParametersList.add(ApiQueryParameter(name: 'feature', value: item.toJson()));
}
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/api_gateway/schemas',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return ShieldSchemaResponseWithThresholdsResult.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
 }
