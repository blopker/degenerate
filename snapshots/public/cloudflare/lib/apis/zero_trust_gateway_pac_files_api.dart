// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/zero_trust_gateway_components_schemas_uuid.dart';import '../models/zero_trust_gateway_empty_response.dart';import '../models/zero_trust_gateway_pacfile.dart';import '../models/zero_trust_gateway_pacfiles_components_schemas_response_collection.dart';import '../models/zero_trust_gateway_pacfiles_components_schemas_response_collection_result.dart';import '../models/zero_trust_gateway_pacfiles_components_schemas_single_response.dart';import '../models/zero_trust_gateway_pacfiles_create_pacfile_request.dart';import '../models/zero_trust_gateway_pacfiles_update_request.dart';import '../models/zero_trust_gateway_schemas_identifier.dart';/// ZeroTrustGatewayPacFilesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZeroTrustGatewayPacFilesApi with ApiExecutor {const ZeroTrustGatewayPacFilesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List PAC files
///
/// List all Zero Trust Gateway PAC files for an account.
///
/// `GET /accounts/{account_id}/gateway/pacfiles`
Future<ApiResult<List<ZeroTrustGatewayPacfilesComponentsSchemasResponseCollectionResult>?, ZeroTrustGatewayPacfilesComponentsSchemasResponseCollection>> zeroTrustGatewayPacfilesList({required ZeroTrustGatewaySchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/pacfiles',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => ZeroTrustGatewayPacfilesComponentsSchemasResponseCollectionResult.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return ZeroTrustGatewayPacfilesComponentsSchemasResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a PAC file
///
/// Create a new Zero Trust Gateway PAC file.
///
/// `POST /accounts/{account_id}/gateway/pacfiles`
Future<ApiResult<ZeroTrustGatewayPacfile?, ZeroTrustGatewayPacfilesComponentsSchemasSingleResponse>> zeroTrustGatewayPacfilesCreatePacfile({required ZeroTrustGatewaySchemasIdentifier accountId, required ZeroTrustGatewayPacfilesCreatePacfileRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/pacfiles',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ZeroTrustGatewayPacfile.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ZeroTrustGatewayPacfilesComponentsSchemasSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a PAC file
///
/// Get a single Zero Trust Gateway PAC file.
///
/// `GET /accounts/{account_id}/gateway/pacfiles/{pacfile_id}`
Future<ApiResult<ZeroTrustGatewayPacfile?, ZeroTrustGatewayPacfilesComponentsSchemasSingleResponse>> zeroTrustGatewayPacfilesDetails({required ZeroTrustGatewayComponentsSchemasUuid pacfileId, required ZeroTrustGatewaySchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/pacfiles/${Uri.encodeComponent(pacfileId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ZeroTrustGatewayPacfile.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ZeroTrustGatewayPacfilesComponentsSchemasSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a Zero Trust Gateway PAC file
///
/// Update a configured Zero Trust Gateway PAC file.
///
/// `PUT /accounts/{account_id}/gateway/pacfiles/{pacfile_id}`
Future<ApiResult<ZeroTrustGatewayPacfile?, ZeroTrustGatewayPacfilesComponentsSchemasSingleResponse>> zeroTrustGatewayPacfilesUpdate({required ZeroTrustGatewayComponentsSchemasUuid pacfileId, required ZeroTrustGatewaySchemasIdentifier accountId, required ZeroTrustGatewayPacfilesUpdateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/pacfiles/${Uri.encodeComponent(pacfileId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ZeroTrustGatewayPacfile.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ZeroTrustGatewayPacfilesComponentsSchemasSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a PAC file
///
/// Delete a configured Zero Trust Gateway PAC file.
///
/// `DELETE /accounts/{account_id}/gateway/pacfiles/{pacfile_id}`
Future<ApiResult<Map<String, dynamic>?, ZeroTrustGatewayEmptyResponse>> zeroTrustGatewayPacfilesDelete({required ZeroTrustGatewayComponentsSchemasUuid pacfileId, required ZeroTrustGatewaySchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/pacfiles/${Uri.encodeComponent(pacfileId.toString())}',
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
    return ZeroTrustGatewayEmptyResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
