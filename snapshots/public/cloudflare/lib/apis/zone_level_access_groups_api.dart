// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_components_schemas_groups.dart';import '../models/access_id_response_result.dart';import '../models/access_identifier.dart';import '../models/access_uuid.dart';import '../models/zone_level_access_groups_create_an_access_group_request.dart';import '../models/zone_level_access_groups_update_an_access_group_request.dart';/// ZoneLevelAccessGroupsApi operations.
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
Future<ApiResult<List<AccessComponentsSchemasGroups>?, Never>> zoneLevelAccessGroupsListAccessGroups({required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/groups',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => AccessComponentsSchemasGroups.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create an Access group
///
/// Creates a new Access group.
///
/// `POST /zones/{zone_id}/access/groups`
Future<ApiResult<AccessComponentsSchemasGroups?, Never>> zoneLevelAccessGroupsCreateAnAccessGroup({required AccessIdentifier zoneId, required ZoneLevelAccessGroupsCreateAnAccessGroupRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessComponentsSchemasGroups.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get an Access group
///
/// Fetches a single Access group.
///
/// `GET /zones/{zone_id}/access/groups/{group_id}`
Future<ApiResult<AccessComponentsSchemasGroups?, Never>> zoneLevelAccessGroupsGetAnAccessGroup({required AccessUuid groupId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/groups/${Uri.encodeComponent(groupId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessComponentsSchemasGroups.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update an Access group
///
/// Updates a configured Access group.
///
/// `PUT /zones/{zone_id}/access/groups/{group_id}`
Future<ApiResult<AccessComponentsSchemasGroups?, Never>> zoneLevelAccessGroupsUpdateAnAccessGroup({required AccessUuid groupId, required AccessIdentifier zoneId, required ZoneLevelAccessGroupsUpdateAnAccessGroupRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessComponentsSchemasGroups.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete an Access group
///
/// Deletes an Access group.
///
/// `DELETE /zones/{zone_id}/access/groups/{group_id}`
Future<ApiResult<AccessIdResponseResult?, Never>> zoneLevelAccessGroupsDeleteAnAccessGroup({required AccessUuid groupId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/groups/${Uri.encodeComponent(groupId.toString())}',
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
