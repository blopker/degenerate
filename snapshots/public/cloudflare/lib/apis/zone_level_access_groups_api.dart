// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_groups_components_schemas_response_collection.dart';import '../models/access_groups_components_schemas_single_response2.dart';import '../models/access_id_response.dart';import '../models/access_identifier.dart';import '../models/access_uuid.dart';import '../models/zone_level_access_groups_create_an_access_group_request.dart';import '../models/zone_level_access_groups_update_an_access_group_request.dart';/// ZoneLevelAccessGroupsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZoneLevelAccessGroupsApi with ApiExecutor {const ZoneLevelAccessGroupsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Access groups
///
/// Lists all Access groups.
///
/// `GET /zones/{zone_id}/access/groups`
Future<ApiResult<AccessGroupsComponentsSchemasResponseCollection, Never>> zoneLevelAccessGroupsListAccessGroups({required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/groups',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessGroupsComponentsSchemasResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create an Access group
///
/// Creates a new Access group.
///
/// `POST /zones/{zone_id}/access/groups`
Future<ApiResult<AccessGroupsComponentsSchemasSingleResponse2, Never>> zoneLevelAccessGroupsCreateAnAccessGroup({required AccessIdentifier zoneId, required ZoneLevelAccessGroupsCreateAnAccessGroupRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/groups',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessGroupsComponentsSchemasSingleResponse2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get an Access group
///
/// Fetches a single Access group.
///
/// `GET /zones/{zone_id}/access/groups/{group_id}`
Future<ApiResult<AccessGroupsComponentsSchemasSingleResponse2, Never>> zoneLevelAccessGroupsGetAnAccessGroup({required AccessUuid groupId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/groups/${Uri.encodeComponent(groupId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessGroupsComponentsSchemasSingleResponse2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update an Access group
///
/// Updates a configured Access group.
///
/// `PUT /zones/{zone_id}/access/groups/{group_id}`
Future<ApiResult<AccessGroupsComponentsSchemasSingleResponse2, Never>> zoneLevelAccessGroupsUpdateAnAccessGroup({required AccessUuid groupId, required AccessIdentifier zoneId, required ZoneLevelAccessGroupsUpdateAnAccessGroupRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/groups/${Uri.encodeComponent(groupId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessGroupsComponentsSchemasSingleResponse2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete an Access group
///
/// Deletes an Access group.
///
/// `DELETE /zones/{zone_id}/access/groups/{group_id}`
Future<ApiResult<AccessIdResponse, Never>> zoneLevelAccessGroupsDeleteAnAccessGroup({required AccessUuid groupId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/groups/${Uri.encodeComponent(groupId.toString())}',
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
