// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/account_members_add_member_request.dart';import '../models/account_members_list_members_direction.dart';import '../models/account_members_list_members_status.dart';import '../models/account_members_update_member_request.dart';import '../models/iam_common_components_schemas_identifier.dart';import '../models/iam_member_with_policies.dart';import '../models/iam_membership_components_schemas_identifier.dart';import '../models/response_single_id4_result.dart';/// AccountMembersApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AccountMembersApi with ApiExecutor {const AccountMembersApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Members
///
/// List all members of an account.
///
/// `GET /accounts/{account_id}/members`
Future<ApiResult<List<IamMemberWithPolicies>?, Never>> accountMembersListMembers({required IamCommonComponentsSchemasIdentifier accountId, dynamic order, AccountMembersListMembersStatus? status, double? page, double? perPage, AccountMembersListMembersDirection? direction, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (order != null) {
  queryParameters['order'] = order.toString();
}
if (status != null) {
  queryParameters['status'] = status.toJson();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (direction != null) {
  queryParameters['direction'] = direction.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/members',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => IamMemberWithPolicies.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Add Member
///
/// Add a user to the list of members for this account.
///
/// `POST /accounts/{account_id}/members`
Future<ApiResult<IamMemberWithPolicies?, Never>> accountMembersAddMember({required IamCommonComponentsSchemasIdentifier accountId, required AccountMembersAddMemberRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/members',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? IamMemberWithPolicies.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Member Details
///
/// Get information about a specific member of an account.
///
/// `GET /accounts/{account_id}/members/{member_id}`
Future<ApiResult<IamMemberWithPolicies?, Never>> accountMembersMemberDetails({required IamMembershipComponentsSchemasIdentifier memberId, required IamCommonComponentsSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/members/${Uri.encodeComponent(memberId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? IamMemberWithPolicies.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update Member
///
/// Modify an account member.
///
/// `PUT /accounts/{account_id}/members/{member_id}`
Future<ApiResult<IamMemberWithPolicies?, Never>> accountMembersUpdateMember({required IamMembershipComponentsSchemasIdentifier memberId, required IamCommonComponentsSchemasIdentifier accountId, required AccountMembersUpdateMemberRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/members/${Uri.encodeComponent(memberId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? IamMemberWithPolicies.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Remove Member
///
/// Remove a member from an account.
///
/// `DELETE /accounts/{account_id}/members/{member_id}`
Future<ApiResult<ResponseSingleId4Result?, Never>> accountMembersRemoveMember({required IamMembershipComponentsSchemasIdentifier memberId, required IamCommonComponentsSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/members/${Uri.encodeComponent(memberId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ResponseSingleId4Result.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
