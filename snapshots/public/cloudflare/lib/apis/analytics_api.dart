// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/get_org_analytics_response.dart';import '../models/realtimekit_account_identifier.dart';import '../models/realtimekit_app_id.dart';/// AnalyticsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AnalyticsApi with ApiExecutor {const AnalyticsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Fetch day-wise session and recording analytics data for an App
///
/// Returns day-wise session and recording analytics data of an App for the specified time range start_date to end_date. If start_date and end_date are not provided, the default time range is set from 30 days ago to the current date.
///
/// `GET /accounts/{account_id}/realtime/kit/{app_id}/analytics/daywise`
Future<ApiResult<GetOrgAnalyticsResponse, Never>> getOrgAnalytics({required RealtimekitAccountIdentifier accountId, required RealtimekitAppId appId, String? startDate, String? endDate, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (startDate != null) queryParameters['start_date'] = startDate;
if (endDate != null) queryParameters['end_date'] = endDate;

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/realtime/kit/${Uri.encodeComponent(appId.toString())}/analytics/daywise',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GetOrgAnalyticsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
