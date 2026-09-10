// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/zero_trust_gateway_components_schemas_uuid.dart';import '../models/zero_trust_gateway_proxy_endpoints.dart';import '../models/zero_trust_gateway_proxy_endpoints_create_proxy_endpoint_request.dart';import '../models/zero_trust_gateway_proxy_endpoints_create_proxy_endpoint_response4_xx.dart';import '../models/zero_trust_gateway_proxy_endpoints_delete_proxy_endpoint_response4_xx.dart';import '../models/zero_trust_gateway_proxy_endpoints_list_proxy_endpoints_response4_xx.dart';import '../models/zero_trust_gateway_proxy_endpoints_proxy_endpoint_details_response4_xx.dart';import '../models/zero_trust_gateway_proxy_endpoints_update_proxy_endpoint_request.dart';import '../models/zero_trust_gateway_proxy_endpoints_update_proxy_endpoint_response4_xx.dart';import '../models/zero_trust_gateway_schemas_identifier.dart';/// ZeroTrustGatewayProxyEndpointsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZeroTrustGatewayProxyEndpointsApi with ApiExecutor {const ZeroTrustGatewayProxyEndpointsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List proxy endpoints
///
/// List all Zero Trust Gateway proxy endpoints for an account.
///
/// `GET /accounts/{account_id}/gateway/proxy_endpoints`
Future<ApiResult<List<ZeroTrustGatewayProxyEndpoints>?, ZeroTrustGatewayProxyEndpointsListProxyEndpointsResponse4Xx>> zeroTrustGatewayProxyEndpointsListProxyEndpoints({required ZeroTrustGatewaySchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/proxy_endpoints',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>?)?.map((e) => ZeroTrustGatewayProxyEndpoints.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustGatewayProxyEndpointsListProxyEndpointsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Create a proxy endpoint
///
/// Create a new Zero Trust Gateway proxy endpoint.
///
/// `POST /accounts/{account_id}/gateway/proxy_endpoints`
Future<ApiResult<ZeroTrustGatewayProxyEndpoints?, ZeroTrustGatewayProxyEndpointsCreateProxyEndpointResponse4Xx>> zeroTrustGatewayProxyEndpointsCreateProxyEndpoint({required ZeroTrustGatewaySchemasIdentifier accountId, required ZeroTrustGatewayProxyEndpointsCreateProxyEndpointRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/proxy_endpoints',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? ZeroTrustGatewayProxyEndpoints.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustGatewayProxyEndpointsCreateProxyEndpointResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get a proxy endpoint
///
/// Get a single Zero Trust Gateway proxy endpoint.
///
/// `GET /accounts/{account_id}/gateway/proxy_endpoints/{proxy_endpoint_id}`
Future<ApiResult<ZeroTrustGatewayProxyEndpoints?, ZeroTrustGatewayProxyEndpointsProxyEndpointDetailsResponse4Xx>> zeroTrustGatewayProxyEndpointsProxyEndpointDetails({required ZeroTrustGatewayComponentsSchemasUuid proxyEndpointId, required ZeroTrustGatewaySchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/proxy_endpoints/${Uri.encodeComponent(proxyEndpointId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? ZeroTrustGatewayProxyEndpoints.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustGatewayProxyEndpointsProxyEndpointDetailsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update a proxy endpoint
///
/// Update a configured Zero Trust Gateway proxy endpoint.
///
/// `PATCH /accounts/{account_id}/gateway/proxy_endpoints/{proxy_endpoint_id}`
Future<ApiResult<ZeroTrustGatewayProxyEndpoints?, ZeroTrustGatewayProxyEndpointsUpdateProxyEndpointResponse4Xx>> zeroTrustGatewayProxyEndpointsUpdateProxyEndpoint({required ZeroTrustGatewayComponentsSchemasUuid proxyEndpointId, required ZeroTrustGatewaySchemasIdentifier accountId, required ZeroTrustGatewayProxyEndpointsUpdateProxyEndpointRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/proxy_endpoints/${Uri.encodeComponent(proxyEndpointId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? ZeroTrustGatewayProxyEndpoints.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustGatewayProxyEndpointsUpdateProxyEndpointResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Delete a proxy endpoint
///
/// Delete a configured Zero Trust Gateway proxy endpoint.
///
/// `DELETE /accounts/{account_id}/gateway/proxy_endpoints/{proxy_endpoint_id}`
Future<ApiResult<Map<String, dynamic>?, ZeroTrustGatewayProxyEndpointsDeleteProxyEndpointResponse4Xx>> zeroTrustGatewayProxyEndpointsDeleteProxyEndpoint({required ZeroTrustGatewayComponentsSchemasUuid proxyEndpointId, required ZeroTrustGatewaySchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/proxy_endpoints/${Uri.encodeComponent(proxyEndpointId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] as Map<String, dynamic>?;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustGatewayProxyEndpointsDeleteProxyEndpointResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
