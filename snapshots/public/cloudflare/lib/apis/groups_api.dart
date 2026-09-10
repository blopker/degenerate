// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/delete_group_delete_response.dart';import '../models/delete_group_delete_response400.dart';import '../models/delete_group_member_delete_response.dart';import '../models/delete_group_member_delete_response400.dart';import '../models/get_group_list_response.dart';import '../models/get_group_list_response400.dart';import '../models/get_group_member_list_response.dart';import '../models/get_group_member_list_response400.dart';import '../models/get_group_read_response.dart';import '../models/get_group_read_response400.dart';import '../models/post_group_create_request.dart';import '../models/post_group_create_response.dart';import '../models/post_group_create_response400.dart';import '../models/post_group_member_create_request.dart';import '../models/post_group_member_create_response.dart';import '../models/post_group_member_create_response400.dart';import '../models/put_group_update_request.dart';import '../models/put_group_update_response.dart';import '../models/put_group_update_response400.dart';/// GroupsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class GroupsApi with ApiExecutor {const GroupsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List groups for an account
///
/// `GET /accounts/{account_id}/cloudforce-one/events/dataset/-/groups`
Future<ApiResult<List<GetGroupListResponse>, GetGroupListResponse400>> getGroupList({required String accountId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/-/groups',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return (json as List<dynamic>).map((e) => GetGroupListResponse.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return GetGroupListResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Create a group
///
/// `POST /accounts/{account_id}/cloudforce-one/events/dataset/-/groups`
Future<ApiResult<PostGroupCreateResponse, PostGroupCreateResponse400>> postGroupCreate({required String accountId, PostGroupCreateRequest? body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/-/groups',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return PostGroupCreateResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return PostGroupCreateResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Read a group for an account
///
/// `GET /accounts/{account_id}/cloudforce-one/events/dataset/-/groups/{group_id}`
Future<ApiResult<GetGroupReadResponse, GetGroupReadResponse400>> getGroupRead({required String accountId, required String groupId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/-/groups/${Uri.encodeComponent(groupId)}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return GetGroupReadResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return GetGroupReadResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Update a group
///
/// `PUT /accounts/{account_id}/cloudforce-one/events/dataset/-/groups/{group_id}`
Future<ApiResult<PutGroupUpdateResponse, PutGroupUpdateResponse400>> putGroupUpdate({required String accountId, required String groupId, PutGroupUpdateRequest? body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/-/groups/${Uri.encodeComponent(groupId)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return PutGroupUpdateResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return PutGroupUpdateResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Delete a group for an account
///
/// `DELETE /accounts/{account_id}/cloudforce-one/events/dataset/-/groups/{group_id}`
Future<ApiResult<DeleteGroupDeleteResponse, DeleteGroupDeleteResponse400>> deleteGroupDelete({required String accountId, required String groupId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/-/groups/${Uri.encodeComponent(groupId)}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return DeleteGroupDeleteResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return DeleteGroupDeleteResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// List group members
///
/// `GET /accounts/{account_id}/cloudforce-one/events/dataset/-/groups/{group_id}/members`
Future<ApiResult<List<GetGroupMemberListResponse>, GetGroupMemberListResponse400>> getGroupMemberList({required String accountId, required String groupId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/-/groups/${Uri.encodeComponent(groupId)}/members',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return (json as List<dynamic>).map((e) => GetGroupMemberListResponse.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return GetGroupMemberListResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Create a group member
///
/// `POST /accounts/{account_id}/cloudforce-one/events/dataset/-/groups/{group_id}/members`
Future<ApiResult<PostGroupMemberCreateResponse, PostGroupMemberCreateResponse400>> postGroupMemberCreate({required String accountId, required String groupId, PostGroupMemberCreateRequest? body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/-/groups/${Uri.encodeComponent(groupId)}/members',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return PostGroupMemberCreateResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return PostGroupMemberCreateResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Delete a group member
///
/// `DELETE /accounts/{account_id}/cloudforce-one/events/dataset/-/groups/{group_id}/members/{member_id}`
Future<ApiResult<DeleteGroupMemberDeleteResponse, DeleteGroupMemberDeleteResponse400>> deleteGroupMemberDelete({required String accountId, required String groupId, required String memberId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/-/groups/${Uri.encodeComponent(groupId)}/members/${Uri.encodeComponent(memberId)}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return DeleteGroupMemberDeleteResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return DeleteGroupMemberDeleteResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
}
