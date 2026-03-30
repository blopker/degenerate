// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_access_requests_components_schemas_response_collection.dart';import '../models/access_components_schemas_email.dart';import '../models/access_identifier.dart';import '../models/access_user_id.dart';/// AccessAuthenticationLogsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AccessAuthenticationLogsApi with ApiExecutor {const AccessAuthenticationLogsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get Access authentication logs
///
/// Gets a list of Access authentication audit logs for an account.
///
/// `GET /accounts/{account_id}/access/logs/access_requests`
Future<ApiResult<AccessAccessRequestsComponentsSchemasResponseCollection, Never>> accessAuthenticationLogsGetAccessAuthenticationLogs({required AccessIdentifier accountId, int? limit, dynamic direction, DateTime? since, DateTime? until, int? page, int? perPage, AccessComponentsSchemasEmail? email, bool? emailExact, AccessUserId? userId, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (direction != null) {
  queryParameters['direction'] = direction.toString();
}
if (since != null) {
  queryParameters['since'] = since.toString();
}
if (until != null) {
  queryParameters['until'] = until.toString();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (email != null) {
  queryParameters['email'] = email.toString();
}
if (emailExact != null) {
  queryParameters['email_exact'] = emailExact.toString();
}
if (userId != null) {
  queryParameters['user_id'] = userId.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/logs/access_requests',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessAccessRequestsComponentsSchemasResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
