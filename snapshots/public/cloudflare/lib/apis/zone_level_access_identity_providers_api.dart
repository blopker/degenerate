// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_id_response_result.dart';import '../models/access_identifier.dart';import '../models/access_identity_providers_components_schemas_response_collection_result.dart';import '../models/access_schemas_identity_provider.dart';import '../models/access_schemas_identity_providers.dart';import '../models/access_uuid.dart';/// ZoneLevelAccessIdentityProvidersApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZoneLevelAccessIdentityProvidersApi with ApiExecutor {const ZoneLevelAccessIdentityProvidersApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Access identity providers
///
/// Lists all configured identity providers.
///
/// `GET /zones/{zone_id}/access/identity_providers`
Future<ApiResult<List<AccessIdentityProvidersComponentsSchemasResponseCollectionResult>?, Never>> zoneLevelAccessIdentityProvidersListAccessIdentityProviders({required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/identity_providers',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => AccessIdentityProvidersComponentsSchemasResponseCollectionResult.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Add an Access identity provider
///
/// Adds a new identity provider to Access.
///
/// `POST /zones/{zone_id}/access/identity_providers`
Future<ApiResult<AccessSchemasIdentityProviders?, Never>> zoneLevelAccessIdentityProvidersAddAnAccessIdentityProvider({required AccessIdentifier zoneId, required AccessSchemasIdentityProviders body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/identity_providers',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? OneOf8.parse(json['result'], fromA: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>), fromB: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>), fromC: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>), fromD: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>), fromE: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>), fromF: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>), fromG: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>), fromH: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>),) : null;
  },
);
 } 
/// Get an Access identity provider
///
/// Fetches a configured identity provider.
///
/// `GET /zones/{zone_id}/access/identity_providers/{identity_provider_id}`
Future<ApiResult<AccessSchemasIdentityProviders?, Never>> zoneLevelAccessIdentityProvidersGetAnAccessIdentityProvider({required AccessUuid identityProviderId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/identity_providers/${Uri.encodeComponent(identityProviderId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? OneOf8.parse(json['result'], fromA: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>), fromB: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>), fromC: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>), fromD: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>), fromE: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>), fromF: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>), fromG: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>), fromH: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>),) : null;
  },
);
 } 
/// Update an Access identity provider
///
/// Updates a configured identity provider.
///
/// `PUT /zones/{zone_id}/access/identity_providers/{identity_provider_id}`
Future<ApiResult<AccessSchemasIdentityProviders?, Never>> zoneLevelAccessIdentityProvidersUpdateAnAccessIdentityProvider({required AccessUuid identityProviderId, required AccessIdentifier zoneId, required AccessSchemasIdentityProviders body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/identity_providers/${Uri.encodeComponent(identityProviderId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? OneOf8.parse(json['result'], fromA: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>), fromB: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>), fromC: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>), fromD: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>), fromE: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>), fromF: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>), fromG: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>), fromH: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>),) : null;
  },
);
 } 
/// Delete an Access identity provider
///
/// Deletes an identity provider from Access.
///
/// `DELETE /zones/{zone_id}/access/identity_providers/{identity_provider_id}`
Future<ApiResult<AccessIdResponseResult?, Never>> zoneLevelAccessIdentityProvidersDeleteAnAccessIdentityProvider({required AccessUuid identityProviderId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/identity_providers/${Uri.encodeComponent(identityProviderId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
