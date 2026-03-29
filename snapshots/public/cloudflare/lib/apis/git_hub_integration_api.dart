// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/builds_account_id.dart';import '../models/builds_branch.dart';import '../models/builds_provider_account_id.dart';import '../models/builds_repo_id.dart';import '../models/builds_root_directory.dart';import '../models/builds_scm_provider_type.dart';import '../models/response.dart';/// GitHubIntegrationApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class GitHubIntegrationApi with ApiExecutor {const GitHubIntegrationApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get repository configuration autofill
///
/// Analyze repository for automatic configuration detection
///
/// `GET /accounts/{account_id}/builds/repos/{provider_type}/{provider_account_id}/{repo_id}/config_autofill`
Future<ApiResult<Response, Never>> getWorkerConfigAutofill({required BuildsAccountId accountId, required BuildsScmProviderType providerType, required BuildsProviderAccountId providerAccountId, required BuildsRepoId repoId, required BuildsBranch branch, BuildsRootDirectory? rootDirectory, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['branch'] = branch.toString();
if (rootDirectory != null) {
  queryParameters['root_directory'] = rootDirectory.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/builds/repos/${Uri.encodeComponent(providerType.toString())}/${Uri.encodeComponent(providerAccountId.toString())}/${Uri.encodeComponent(repoId.toString())}/config_autofill',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
