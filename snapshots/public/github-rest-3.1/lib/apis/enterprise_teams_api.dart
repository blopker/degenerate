// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/basic_error.dart';import '../models/enterprise_team.dart';import '../models/enterprise_teams_create_request.dart';import '../models/enterprise_teams_update_request.dart';/// EnterpriseTeamsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class EnterpriseTeamsApi with ApiExecutor {const EnterpriseTeamsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List enterprise teams
///
/// List all teams in the enterprise for the authenticated user
///
/// `GET /enterprises/{enterprise}/teams`
Future<ApiResult<List<EnterpriseTeam>, BasicError>> enterpriseTeamsList({required String enterprise, int? perPage, int? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (perPage != null) queryParameters['per_page'] = perPage.toString();
if (page != null) queryParameters['page'] = page.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/enterprises/${Uri.encodeComponent(enterprise)}/teams',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => EnterpriseTeam.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create an enterprise team
///
/// To create an enterprise team, the authenticated user must be an owner of the enterprise.
///
/// `POST /enterprises/{enterprise}/teams`
Future<ApiResult<EnterpriseTeam, Never>> enterpriseTeamsCreate({required String enterprise, required EnterpriseTeamsCreateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/enterprises/${Uri.encodeComponent(enterprise)}/teams',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EnterpriseTeam.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get an enterprise team
///
/// Gets a team using the team's slug. To create the slug, GitHub replaces special characters in the name string, changes all words to lowercase, and replaces spaces with a `-` separator and adds the "ent:" prefix. For example, "My TEam Näme" would become `ent:my-team-name`.
///
/// `GET /enterprises/{enterprise}/teams/{team_slug}`
Future<ApiResult<EnterpriseTeam, BasicError>> enterpriseTeamsGet({required String enterprise, required String teamSlug, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/enterprises/${Uri.encodeComponent(enterprise)}/teams/${Uri.encodeComponent(teamSlug)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EnterpriseTeam.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update an enterprise team
///
/// To edit a team, the authenticated user must be an enterprise owner.
///
/// `PATCH /enterprises/{enterprise}/teams/{team_slug}`
Future<ApiResult<EnterpriseTeam, BasicError>> enterpriseTeamsUpdate({required String enterprise, required String teamSlug, required EnterpriseTeamsUpdateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/enterprises/${Uri.encodeComponent(enterprise)}/teams/${Uri.encodeComponent(teamSlug)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EnterpriseTeam.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete an enterprise team
///
/// To delete an enterprise team, the authenticated user must be an enterprise owner.
/// 
/// If you are an enterprise owner, deleting an enterprise team will delete all of its IdP mappings as well.
///
/// `DELETE /enterprises/{enterprise}/teams/{team_slug}`
Future<ApiResult<void, BasicError>> enterpriseTeamsDelete({required String enterprise, required String teamSlug, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/enterprises/${Uri.encodeComponent(enterprise)}/teams/${Uri.encodeComponent(teamSlug)}',
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
