// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_gateway_ca_components_schemas_response_collection.dart';import '../models/access_gateway_ca_components_schemas_single_response.dart';import '../models/access_id_response.dart';import '../models/access_identifier.dart';import '../models/access_uuid.dart';/// GatewayCaApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class GatewayCaApi with ApiExecutor {const GatewayCaApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List SSH Certificate Authorities (CA)
///
/// Lists SSH Certificate Authorities (CA).
///
/// `GET /accounts/{account_id}/access/gateway_ca`
Future<ApiResult<AccessGatewayCaComponentsSchemasResponseCollection, Never>> accessGatewayCaListSshCa({required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/gateway_ca',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessGatewayCaComponentsSchemasResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Add a new SSH Certificate Authority (CA)
///
/// Adds a new SSH Certificate Authority (CA).
///
/// `POST /accounts/{account_id}/access/gateway_ca`
Future<ApiResult<AccessGatewayCaComponentsSchemasSingleResponse, Never>> accessGatewayCaAddAnSshCa({required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/gateway_ca',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessGatewayCaComponentsSchemasSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete an SSH Certificate Authority (CA)
///
/// Deletes an SSH Certificate Authority.
///
/// `DELETE /accounts/{account_id}/access/gateway_ca/{certificate_id}`
Future<ApiResult<AccessIdResponse, Never>> accessGatewayCaDeleteAnSshCa({required AccessUuid certificateId, required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/gateway_ca/${Uri.encodeComponent(certificateId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessIdResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
