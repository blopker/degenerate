// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_ca_components_schemas_response_collection.dart';import '../models/access_ca_components_schemas_single_response.dart';import '../models/access_identifier.dart';import '../models/access_schemas_id_response.dart';import '../models/access_uuid.dart';/// AccessShortLivedCertificateCAsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AccessShortLivedCertificateCAsApi with ApiExecutor {const AccessShortLivedCertificateCAsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get a short-lived certificate CA
///
/// Fetches a short-lived certificate CA and its public key.
///
/// `GET /accounts/{account_id}/access/apps/{app_id}/ca`
Future<ApiResult<AccessCaComponentsSchemasSingleResponse, Never>> accessShortLivedCertificateCAsGetAShortLivedCertificateCa({required AccessUuid appId, required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/ca',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessCaComponentsSchemasSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a short-lived certificate CA
///
/// Generates a new short-lived certificate CA and public key.
///
/// `POST /accounts/{account_id}/access/apps/{app_id}/ca`
Future<ApiResult<AccessCaComponentsSchemasSingleResponse, Never>> accessShortLivedCertificateCAsCreateAShortLivedCertificateCa({required AccessUuid appId, required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/ca',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessCaComponentsSchemasSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a short-lived certificate CA
///
/// Deletes a short-lived certificate CA.
///
/// `DELETE /accounts/{account_id}/access/apps/{app_id}/ca`
Future<ApiResult<AccessSchemasIdResponse, Never>> accessShortLivedCertificateCAsDeleteAShortLivedCertificateCa({required AccessUuid appId, required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/ca',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessSchemasIdResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List short-lived certificate CAs
///
/// Lists short-lived certificate CAs and their public keys.
///
/// `GET /accounts/{account_id}/access/apps/ca`
Future<ApiResult<AccessCaComponentsSchemasResponseCollection, Never>> accessShortLivedCertificateCAsListShortLivedCertificateCAs({required AccessIdentifier accountId, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/apps/ca',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessCaComponentsSchemasResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
