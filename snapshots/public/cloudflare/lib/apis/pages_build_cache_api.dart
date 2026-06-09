// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/pages_identifier.dart';import '../models/pages_project_name.dart';import '../models/response_common_failure53.dart';/// PagesBuildCacheApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class PagesBuildCacheApi with ApiExecutor {const PagesBuildCacheApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Purge build cache
///
/// Purge all cached build artifacts for a Pages project
///
/// `POST /accounts/{account_id}/pages/projects/{project_name}/purge_build_cache`
Future<ApiResult<Map<String, dynamic>?, ResponseCommonFailure53>> pagesPurgeBuildCache({required PagesProjectName projectName, required PagesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/pages/projects/${Uri.encodeComponent(projectName.toString())}/purge_build_cache',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>?;
  },
  onError: (response) {
    return ResponseCommonFailure53.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
