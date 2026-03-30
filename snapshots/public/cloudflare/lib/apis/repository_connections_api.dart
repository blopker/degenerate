// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/builds_account_id.dart';import '../models/builds_error_response.dart';import '../models/builds_repo_connection_uuid.dart';import '../models/builds_upsert_repo_connection_request.dart';/// RepositoryConnectionsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class RepositoryConnectionsApi with ApiExecutor {const RepositoryConnectionsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Create or update repository connection
///
/// Upsert a repository connection for CI/CD integration
///
/// `PUT /accounts/{account_id}/builds/repos/connections`
Future<ApiResult<Map<String, dynamic>?, Never>> upsertRepoConnection({required BuildsAccountId accountId, required BuildsUpsertRepoConnectionRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/builds/repos/connections',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v));
  },
);
 } 
/// Delete repository connection
///
/// Remove a repository connection
///
/// `DELETE /accounts/{account_id}/builds/repos/connections/{repo_connection_uuid}`
Future<ApiResult<Map<String, dynamic>?, BuildsErrorResponse>> deleteRepoConnection({required BuildsAccountId accountId, required BuildsRepoConnectionUuid repoConnectionUuid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/builds/repos/connections/${Uri.encodeComponent(repoConnectionUuid.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v));
  },
  onError: (response) {
    return BuildsErrorResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
