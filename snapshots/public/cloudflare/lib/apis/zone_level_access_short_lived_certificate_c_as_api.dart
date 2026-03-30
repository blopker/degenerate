// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_ca_components_schemas_id_response.dart';import '../models/access_ca_components_schemas_response_collection2.dart';import '../models/access_ca_components_schemas_single_response2.dart';import '../models/access_identifier.dart';import '../models/access_uuid.dart';/// ZoneLevelAccessShortLivedCertificateCAsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZoneLevelAccessShortLivedCertificateCAsApi with ApiExecutor {const ZoneLevelAccessShortLivedCertificateCAsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get a short-lived certificate CA
///
/// Fetches a short-lived certificate CA and its public key.
///
/// `GET /zones/{zone_id}/access/apps/{app_id}/ca`
Future<ApiResult<AccessCaComponentsSchemasSingleResponse2, Never>> zoneLevelAccessShortLivedCertificateCAsGetAShortLivedCertificateCa({required AccessUuid appId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/ca',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessCaComponentsSchemasSingleResponse2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a short-lived certificate CA
///
/// Generates a new short-lived certificate CA and public key.
///
/// `POST /zones/{zone_id}/access/apps/{app_id}/ca`
Future<ApiResult<AccessCaComponentsSchemasSingleResponse2, Never>> zoneLevelAccessShortLivedCertificateCAsCreateAShortLivedCertificateCa({required AccessUuid appId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/ca',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessCaComponentsSchemasSingleResponse2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a short-lived certificate CA
///
/// Deletes a short-lived certificate CA.
///
/// `DELETE /zones/{zone_id}/access/apps/{app_id}/ca`
Future<ApiResult<AccessCaComponentsSchemasIdResponse, Never>> zoneLevelAccessShortLivedCertificateCAsDeleteAShortLivedCertificateCa({required AccessUuid appId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/ca',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessCaComponentsSchemasIdResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List short-lived certificate CAs
///
/// Lists short-lived certificate CAs and their public keys.
///
/// `GET /zones/{zone_id}/access/apps/ca`
Future<ApiResult<AccessCaComponentsSchemasResponseCollection2, Never>> zoneLevelAccessShortLivedCertificateCAsListShortLivedCertificateCAs({required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/apps/ca',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessCaComponentsSchemasResponseCollection2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
