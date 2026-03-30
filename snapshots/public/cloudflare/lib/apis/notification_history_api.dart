// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/aaa_account_id.dart';import '../models/aaa_before.dart';import '../models/aaa_history.dart';import '../models/aaa_per_page.dart';/// NotificationHistoryApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class NotificationHistoryApi with ApiExecutor {const NotificationHistoryApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List History
///
/// Gets a list of history records for notifications sent to an account. The records are displayed for last `x` number of days based on the zone plan (free = 30, pro = 30, biz = 30, ent = 90).
///
/// `GET /accounts/{account_id}/alerting/v3/history`
Future<ApiResult<List<AaaHistory>?, Never>> notificationHistoryListHistory({required AaaAccountId accountId, AaaPerPage? perPage, AaaBefore? before, double? page, DateTime? since, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (before != null) {
  queryParameters['before'] = before.toString();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (since != null) {
  queryParameters['since'] = since.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/alerting/v3/history',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => AaaHistory.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
 }
