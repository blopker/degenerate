// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/pages_identifier.dart';import '../models/pages_project_create_project_request.dart';import '../models/pages_project_name.dart';import '../models/pages_project_update_project_request.dart';import '../models/response_common51.dart';/// PagesProjectApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class PagesProjectApi with ApiExecutor {const PagesProjectApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get projects
///
/// Fetch a list of all user projects.
///
/// `GET /accounts/{account_id}/pages/projects`
Future<ApiResult<ResponseCommon51, Never>> pagesProjectGetProjects({required PagesIdentifier accountId, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/pages/projects',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon51.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create project
///
/// Create a new project.
///
/// `POST /accounts/{account_id}/pages/projects`
Future<ApiResult<ResponseCommon51, Never>> pagesProjectCreateProject({required PagesIdentifier accountId, required PagesProjectCreateProjectRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/pages/projects',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon51.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get project
///
/// Fetch a project by name.
///
/// `GET /accounts/{account_id}/pages/projects/{project_name}`
Future<ApiResult<ResponseCommon51, Never>> pagesProjectGetProject({required PagesProjectName projectName, required PagesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/pages/projects/${Uri.encodeComponent(projectName.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon51.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update project
///
/// Set new attributes for an existing project. Modify environment variables. To delete an environment variable, set the key to null.
///
/// `PATCH /accounts/{account_id}/pages/projects/{project_name}`
Future<ApiResult<ResponseCommon51, Never>> pagesProjectUpdateProject({required PagesProjectName projectName, required PagesIdentifier accountId, required PagesProjectUpdateProjectRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/pages/projects/${Uri.encodeComponent(projectName.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon51.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete project
///
/// Delete a project by name.
///
/// `DELETE /accounts/{account_id}/pages/projects/{project_name}`
Future<ApiResult<ResponseCommon51, Never>> pagesProjectDeleteProject({required PagesProjectName projectName, required PagesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/pages/projects/${Uri.encodeComponent(projectName.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon51.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
