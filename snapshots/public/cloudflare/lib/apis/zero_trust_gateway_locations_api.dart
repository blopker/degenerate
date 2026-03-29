// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/response_common82.dart';import '../models/zero_trust_gateway_components_schemas_uuid.dart';import '../models/zero_trust_gateway_locations_create_zero_trust_gateway_location_request.dart';import '../models/zero_trust_gateway_locations_update_zero_trust_gateway_location_request.dart';import '../models/zero_trust_gateway_schemas_identifier.dart';/// ZeroTrustGatewayLocationsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZeroTrustGatewayLocationsApi with ApiExecutor {const ZeroTrustGatewayLocationsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Zero Trust Gateway locations
///
/// List Zero Trust Gateway locations for an account.
///
/// `GET /accounts/{account_id}/gateway/locations`
Future<ApiResult<ResponseCommon82, Never>> zeroTrustGatewayLocationsListZeroTrustGatewayLocations({required ZeroTrustGatewaySchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/locations',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon82.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a Zero Trust Gateway location
///
/// Create a new Zero Trust Gateway location.
///
/// `POST /accounts/{account_id}/gateway/locations`
Future<ApiResult<ResponseCommon82, Never>> zeroTrustGatewayLocationsCreateZeroTrustGatewayLocation({required ZeroTrustGatewaySchemasIdentifier accountId, required ZeroTrustGatewayLocationsCreateZeroTrustGatewayLocationRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/locations',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon82.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Zero Trust Gateway location details
///
/// Get a single Zero Trust Gateway location.
///
/// `GET /accounts/{account_id}/gateway/locations/{location_id}`
Future<ApiResult<ResponseCommon82, Never>> zeroTrustGatewayLocationsZeroTrustGatewayLocationDetails({required ZeroTrustGatewayComponentsSchemasUuid locationId, required ZeroTrustGatewaySchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/locations/${Uri.encodeComponent(locationId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon82.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a Zero Trust Gateway location
///
/// Update a configured Zero Trust Gateway location.
///
/// `PUT /accounts/{account_id}/gateway/locations/{location_id}`
Future<ApiResult<ResponseCommon82, Never>> zeroTrustGatewayLocationsUpdateZeroTrustGatewayLocation({required ZeroTrustGatewayComponentsSchemasUuid locationId, required ZeroTrustGatewaySchemasIdentifier accountId, required ZeroTrustGatewayLocationsUpdateZeroTrustGatewayLocationRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/locations/${Uri.encodeComponent(locationId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon82.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a Zero Trust Gateway location
///
/// Delete a configured Zero Trust Gateway location.
///
/// `DELETE /accounts/{account_id}/gateway/locations/{location_id}`
Future<ApiResult<ResponseCommon82, Never>> zeroTrustGatewayLocationsDeleteZeroTrustGatewayLocation({required ZeroTrustGatewayComponentsSchemasUuid locationId, required ZeroTrustGatewaySchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/locations/${Uri.encodeComponent(locationId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon82.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
