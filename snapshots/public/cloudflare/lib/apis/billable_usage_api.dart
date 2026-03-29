// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/identifier2.dart';import '../models/usage_response.dart';/// BillableUsageApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class BillableUsageApi with ApiExecutor {const BillableUsageApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get PayGo Account Billable Usage (Beta)
///
/// Returns billable usage data for PayGo (self-serve) accounts.
/// When no query parameters are provided, returns usage for the current
/// billing period.
/// 
/// Supports two mutually exclusive query modes:
/// 
/// **Billing period mode:** Use `last_year_period_start` and
/// `last_month_period_start` to query a specific billing period.
/// 
/// **Date range mode:** Use `from` and `to` to query a custom date range
/// (maximum 62 days).
/// 
/// This endpoint is currently in beta and access is restricted to select
/// accounts.
/// 
///
/// `GET /accounts/{account_id}/billing/usage/paygo`
Future<ApiResult<UsageResponse, Never>> billableUsageGetPaygoAccountUsage({required Identifier2 accountId, String? from, String? to, int? lastYearPeriodStart, int? lastMonthPeriodStart, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (from != null) {
  queryParameters['from'] = from;
}
if (to != null) {
  queryParameters['to'] = to;
}
if (lastYearPeriodStart != null) {
  queryParameters['last_year_period_start'] = lastYearPeriodStart.toString();
}
if (lastMonthPeriodStart != null) {
  queryParameters['last_month_period_start'] = lastMonthPeriodStart.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/billing/usage/paygo',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return UsageResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
