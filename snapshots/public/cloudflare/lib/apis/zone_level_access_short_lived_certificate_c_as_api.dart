// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_ca_components_schemas_id_response_result.dart';import '../models/access_identifier.dart';import '../models/access_schemas_ca.dart';import '../models/access_uuid.dart';/// ZoneLevelAccessShortLivedCertificateCAsApi operations.
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
Future<ApiResult<AccessSchemasCa?, Never>> zoneLevelAccessShortLivedCertificateCAsGetAShortLivedCertificateCa({required AccessUuid appId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/ca',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessSchemasCa.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Create a short-lived certificate CA
///
/// Generates a new short-lived certificate CA and public key.
///
/// `POST /zones/{zone_id}/access/apps/{app_id}/ca`
Future<ApiResult<AccessSchemasCa?, Never>> zoneLevelAccessShortLivedCertificateCAsCreateAShortLivedCertificateCa({required AccessUuid appId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/ca',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessSchemasCa.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete a short-lived certificate CA
///
/// Deletes a short-lived certificate CA.
///
/// `DELETE /zones/{zone_id}/access/apps/{app_id}/ca`
Future<ApiResult<AccessCaComponentsSchemasIdResponseResult?, Never>> zoneLevelAccessShortLivedCertificateCAsDeleteAShortLivedCertificateCa({required AccessUuid appId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/ca',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessCaComponentsSchemasIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// List short-lived certificate CAs
///
/// Lists short-lived certificate CAs and their public keys.
///
/// `GET /zones/{zone_id}/access/apps/ca`
Future<ApiResult<List<AccessSchemasCa>?, Never>> zoneLevelAccessShortLivedCertificateCAsListShortLivedCertificateCAs({required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/apps/ca',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => AccessSchemasCa.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
 }
