// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/aaa_account_id.dart';import '../models/aaa_alerts_response_collection.dart';/// NotificationAlertTypesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class NotificationAlertTypesApi with ApiExecutor {const NotificationAlertTypesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get Alert Types
///
/// Gets a list of all alert types for which an account is eligible.
///
/// `GET /accounts/{account_id}/alerting/v3/available_alerts`
Future<ApiResult<AaaAlertsResponseCollection, Never>> notificationAlertTypesGetAlertTypes({required AaaAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/alerting/v3/available_alerts',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AaaAlertsResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
