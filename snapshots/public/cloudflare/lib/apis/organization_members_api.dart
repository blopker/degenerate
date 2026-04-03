// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/batch_create_members_request.dart';import '../models/create_member_request.dart';import '../models/member.dart';import '../models/member_id.dart';import '../models/members_delete_request.dart';import '../models/members_list_status.dart';import '../models/organization_id.dart';/// OrganizationMembersApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class OrganizationMembersApi with ApiExecutor {const OrganizationMembersApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List organization members
///
/// List memberships for an Organization. (Currently in Closed Beta - see https://developers.cloudflare.com/fundamentals/organizations/)
///
/// `GET /organizations/{organization_id}/members`
Future<ApiResult<List<Member>, Never>> membersList({required OrganizationId organizationId, List<MembersListStatus>? status, String? userEmail, String? userEmailContains, String? userEmailStartsWith, String? userEmailEndsWith, String? pageToken, int? pageSize, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (status != null) {
for (final item in status) {
  queryParametersList.add(ApiQueryParameter(name: 'status', value: item.toJson()));
}
}
if (userEmail != null) {
  queryParameters['user.email'] = userEmail;
}
if (userEmailContains != null) {
  queryParameters['user.email.contains'] = userEmailContains;
}
if (userEmailStartsWith != null) {
  queryParameters['user.email.startsWith'] = userEmailStartsWith;
}
if (userEmailEndsWith != null) {
  queryParameters['user.email.endsWith'] = userEmailEndsWith;
}
if (pageToken != null) {
  queryParameters['page_token'] = pageToken;
}
if (pageSize != null) {
  queryParameters['page_size'] = pageSize.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/organizations/${Uri.encodeComponent(organizationId.toString())}/members',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>).map((e) => Member.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create organization member
///
/// Create a membership that grants access to a specific Organization. (Currently in Closed Beta - see https://developers.cloudflare.com/fundamentals/organizations/)
///
/// `POST /organizations/{organization_id}/members`
Future<ApiResult<Member, Never>> membersCreate({required OrganizationId organizationId, required CreateMemberRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/organizations/${Uri.encodeComponent(organizationId.toString())}/members',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return Member.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// Get organization member
///
/// Retrieve a single membership from an Organization. (Currently in Closed Beta - see https://developers.cloudflare.com/fundamentals/organizations/)
///
/// `GET /organizations/{organization_id}/members/{member_id}`
Future<ApiResult<Member, Never>> membersRetrieve({required OrganizationId organizationId, required MemberId memberId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/organizations/${Uri.encodeComponent(organizationId.toString())}/members/${Uri.encodeComponent(memberId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return Member.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// Delete organization member
///
/// Delete a membership to a particular Organization. (Currently in Closed Beta - see https://developers.cloudflare.com/fundamentals/organizations/)
///
/// `DELETE /organizations/{organization_id}/members/{member_id}`
Future<ApiResult<void, Never>> membersDelete({required OrganizationId organizationId, required MemberId memberId, required MembersDeleteRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'DELETE',
  path: '/organizations/${Uri.encodeComponent(organizationId.toString())}/members/${Uri.encodeComponent(memberId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Batch create organization members
///
/// Batch create multiple memberships that grant access to a specific Organization.
///
/// `POST /organizations/{organization_id}/members:batchCreate`
Future<ApiResult<List<Member>, Never>> membersBatchCreate({required OrganizationId organizationId, required BatchCreateMembersRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/organizations/${Uri.encodeComponent(organizationId.toString())}/members:batchCreate',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>).map((e) => Member.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
 }
