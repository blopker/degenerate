// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/basic_error.dart';import '../models/enterprise_team_memberships_bulk_add_request.dart';import '../models/enterprise_team_memberships_bulk_remove_request.dart';import '../models/simple_user.dart';/// EnterpriseTeamMembershipsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class EnterpriseTeamMembershipsApi with ApiExecutor {const EnterpriseTeamMembershipsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List members in an enterprise team
///
/// Lists all team members in an enterprise team.
///
/// `GET /enterprises/{enterprise}/teams/{enterprise-team}/memberships`
Future<ApiResult<List<SimpleUser>, Never>> enterpriseTeamMembershipsList({required String enterprise, required String enterpriseTeam, int? perPage, int? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/enterprises/${Uri.encodeComponent(enterprise)}/teams/${Uri.encodeComponent(enterpriseTeam)}/memberships',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => SimpleUser.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Bulk add team members
///
/// Add multiple team members to an enterprise team.
///
/// `POST /enterprises/{enterprise}/teams/{enterprise-team}/memberships/add`
Future<ApiResult<List<SimpleUser>, Never>> enterpriseTeamMembershipsBulkAdd({required String enterprise, required String enterpriseTeam, required EnterpriseTeamMembershipsBulkAddRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/enterprises/${Uri.encodeComponent(enterprise)}/teams/${Uri.encodeComponent(enterpriseTeam)}/memberships/add',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => SimpleUser.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Bulk remove team members
///
/// Remove multiple team members from an enterprise team.
///
/// `POST /enterprises/{enterprise}/teams/{enterprise-team}/memberships/remove`
Future<ApiResult<List<SimpleUser>, Never>> enterpriseTeamMembershipsBulkRemove({required String enterprise, required String enterpriseTeam, required EnterpriseTeamMembershipsBulkRemoveRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/enterprises/${Uri.encodeComponent(enterprise)}/teams/${Uri.encodeComponent(enterpriseTeam)}/memberships/remove',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => SimpleUser.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Get enterprise team membership
///
/// Returns whether the user is a member of the enterprise team.
///
/// `GET /enterprises/{enterprise}/teams/{enterprise-team}/memberships/{username}`
Future<ApiResult<SimpleUser, Never>> enterpriseTeamMembershipsGet({required String enterprise, required String enterpriseTeam, required String username, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/enterprises/${Uri.encodeComponent(enterprise)}/teams/${Uri.encodeComponent(enterpriseTeam)}/memberships/${Uri.encodeComponent(username)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return SimpleUser.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Add team member
///
/// Add a team member to an enterprise team.
///
/// `PUT /enterprises/{enterprise}/teams/{enterprise-team}/memberships/{username}`
Future<ApiResult<SimpleUser, Never>> enterpriseTeamMembershipsAdd({required String enterprise, required String enterpriseTeam, required String username, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PUT',
  path: '/enterprises/${Uri.encodeComponent(enterprise)}/teams/${Uri.encodeComponent(enterpriseTeam)}/memberships/${Uri.encodeComponent(username)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return SimpleUser.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Remove team membership
///
/// Remove membership of a specific user from a particular team in an enterprise.
///
/// `DELETE /enterprises/{enterprise}/teams/{enterprise-team}/memberships/{username}`
Future<ApiResult<void, BasicError>> enterpriseTeamMembershipsRemove({required String enterprise, required String enterpriseTeam, required String username, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/enterprises/${Uri.encodeComponent(enterprise)}/teams/${Uri.encodeComponent(enterpriseTeam)}/memberships/${Uri.encodeComponent(username)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
