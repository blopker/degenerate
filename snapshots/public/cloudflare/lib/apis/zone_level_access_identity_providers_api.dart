// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_id_response_result.dart';import '../models/access_identifier.dart';import '../models/access_identity_providers_components_schemas_response_collection_response_result.dart';import '../models/access_schemas_identity_providers_request.dart';import '../models/access_schemas_identity_providers_response.dart';import '../models/access_uuid.dart';import '../models/response_common_failure4.dart';/// ZoneLevelAccessIdentityProvidersApi operations.
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
Future<ApiResult<List<AccessIdentityProvidersComponentsSchemasResponseCollectionResponseResult>?, ResponseCommonFailure4>> zoneLevelAccessIdentityProvidersListAccessIdentityProviders({required AccessIdentifier zoneId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/identity_providers',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  (json['result'] as List<dynamic>?)?.map(AccessIdentityProvidersComponentsSchemasResponseCollectionResponseResult.fromJson).toList();}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure4.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Add an Access identity provider
///
/// Adds a new identity provider to Access.
///
/// `POST /zones/{zone_id}/access/identity_providers`
Future<ApiResult<AccessSchemasIdentityProvidersResponse?, ResponseCommonFailure4>> zoneLevelAccessIdentityProvidersAddAnAccessIdentityProvider({required AccessIdentifier zoneId, required AccessSchemasIdentityProvidersRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/identity_providers',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  json['result'] != null ? AccessSchemasIdentityProvidersResponse.fromJson(json['result']) : null;}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure4.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Get an Access identity provider
///
/// Fetches a configured identity provider.
///
/// `GET /zones/{zone_id}/access/identity_providers/{identity_provider_id}`
Future<ApiResult<AccessSchemasIdentityProvidersResponse?, ResponseCommonFailure4>> zoneLevelAccessIdentityProvidersGetAnAccessIdentityProvider({required AccessUuid identityProviderId, required AccessIdentifier zoneId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/identity_providers/${Uri.encodeComponent(identityProviderId.toString())}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  json['result'] != null ? AccessSchemasIdentityProvidersResponse.fromJson(json['result']) : null;}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure4.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Update an Access identity provider
///
/// Updates a configured identity provider.
///
/// `PUT /zones/{zone_id}/access/identity_providers/{identity_provider_id}`
Future<ApiResult<AccessSchemasIdentityProvidersResponse?, ResponseCommonFailure4>> zoneLevelAccessIdentityProvidersUpdateAnAccessIdentityProvider({required AccessUuid identityProviderId, required AccessIdentifier zoneId, required AccessSchemasIdentityProvidersRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/identity_providers/${Uri.encodeComponent(identityProviderId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  json['result'] != null ? AccessSchemasIdentityProvidersResponse.fromJson(json['result']) : null;}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure4.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Delete an Access identity provider
///
/// Deletes an identity provider from Access.
///
/// `DELETE /zones/{zone_id}/access/identity_providers/{identity_provider_id}`
Future<ApiResult<AccessIdResponseResult?, ResponseCommonFailure4>> zoneLevelAccessIdentityProvidersDeleteAnAccessIdentityProvider({required AccessUuid identityProviderId, required AccessIdentifier zoneId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/identity_providers/${Uri.encodeComponent(identityProviderId.toString())}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  json['result'] != null ? AccessIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure4.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
}
