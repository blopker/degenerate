// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/create_group_body.dart';import '../models/group_deleted_resource.dart';import '../models/group_list_resource.dart';import '../models/group_resource_with_success.dart';import '../models/group_response.dart';import '../models/list_groups_order.dart';import '../models/update_group_body.dart';/// GroupsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class GroupsApi with ApiExecutor {const GroupsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Lists all groups in the organization.
///
/// `GET /organization/groups`
Future<ApiResult<GroupListResource, Never>> listGroups({int? limit, String? after, ListGroupsOrder? order, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) queryParameters['limit'] = limit.toString();
if (after != null) queryParameters['after'] = after;
if (order != null) queryParameters['order'] = order.toJson();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/organization/groups',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GroupListResource.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Creates a new group in the organization.
///
/// `POST /organization/groups`
Future<ApiResult<GroupResponse, Never>> createGroup({required CreateGroupBody body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/organization/groups',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GroupResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Updates a group's information.
///
/// `POST /organization/groups/{group_id}`
Future<ApiResult<GroupResourceWithSuccess, Never>> updateGroup({required String groupId, required UpdateGroupBody body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/organization/groups/${Uri.encodeComponent(groupId)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GroupResourceWithSuccess.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Deletes a group from the organization.
///
/// `DELETE /organization/groups/{group_id}`
Future<ApiResult<GroupDeletedResource, Never>> deleteGroup({required String groupId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/organization/groups/${Uri.encodeComponent(groupId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GroupDeletedResource.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
