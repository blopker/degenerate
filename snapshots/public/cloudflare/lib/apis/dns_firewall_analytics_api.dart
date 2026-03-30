// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dns_analytics_dimensions.dart';import '../models/dns_analytics_filters.dart';import '../models/dns_analytics_identifier.dart';import '../models/dns_analytics_limit.dart';import '../models/dns_analytics_metrics.dart';import '../models/dns_analytics_since.dart';import '../models/dns_analytics_sort.dart';import '../models/dns_analytics_time_delta.dart';import '../models/dns_analytics_until.dart';import '../models/dns_firewall_analytics_by_time_response.dart';import '../models/dns_firewall_analytics_table_response.dart';/// DnsFirewallAnalyticsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DnsFirewallAnalyticsApi with ApiExecutor {const DnsFirewallAnalyticsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Table
///
/// Retrieves a list of summarised aggregate metrics over a given time period.
/// 
/// See [Analytics API properties](https://developers.cloudflare.com/dns/reference/analytics-api-properties/) for detailed information about the available query parameters.
///
/// `GET /accounts/{account_id}/dns_firewall/{dns_firewall_id}/dns_analytics/report`
Future<ApiResult<DnsFirewallAnalyticsTableResponse, Never>> dnsFirewallAnalyticsTable({required DnsAnalyticsIdentifier dnsFirewallId, required DnsAnalyticsIdentifier accountId, DnsAnalyticsMetrics? metrics, DnsAnalyticsDimensions? dimensions, DnsAnalyticsSince? since, DnsAnalyticsUntil? until, DnsAnalyticsLimit? limit, DnsAnalyticsSort? sort, DnsAnalyticsFilters? filters, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (metrics != null) {
  queryParameters['metrics'] = metrics.toString();
}
if (dimensions != null) {
  queryParameters['dimensions'] = dimensions.toString();
}
if (since != null) {
  queryParameters['since'] = since.toString();
}
if (until != null) {
  queryParameters['until'] = until.toString();
}
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (sort != null) {
  queryParameters['sort'] = sort.toString();
}
if (filters != null) {
  queryParameters['filters'] = filters.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dns_firewall/${Uri.encodeComponent(dnsFirewallId.toString())}/dns_analytics/report',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DnsFirewallAnalyticsTableResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// By Time
///
/// Retrieves a list of aggregate metrics grouped by time interval.
/// 
/// See [Analytics API properties](https://developers.cloudflare.com/dns/reference/analytics-api-properties/) for detailed information about the available query parameters.
///
/// `GET /accounts/{account_id}/dns_firewall/{dns_firewall_id}/dns_analytics/report/bytime`
Future<ApiResult<DnsFirewallAnalyticsByTimeResponse, Never>> dnsFirewallAnalyticsByTime({required DnsAnalyticsIdentifier dnsFirewallId, required DnsAnalyticsIdentifier accountId, DnsAnalyticsMetrics? metrics, DnsAnalyticsDimensions? dimensions, DnsAnalyticsSince? since, DnsAnalyticsUntil? until, DnsAnalyticsLimit? limit, DnsAnalyticsSort? sort, DnsAnalyticsFilters? filters, DnsAnalyticsTimeDelta? timeDelta, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (metrics != null) {
  queryParameters['metrics'] = metrics.toString();
}
if (dimensions != null) {
  queryParameters['dimensions'] = dimensions.toString();
}
if (since != null) {
  queryParameters['since'] = since.toString();
}
if (until != null) {
  queryParameters['until'] = until.toString();
}
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (sort != null) {
  queryParameters['sort'] = sort.toString();
}
if (filters != null) {
  queryParameters['filters'] = filters.toString();
}
if (timeDelta != null) {
  queryParameters['time_delta'] = timeDelta.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dns_firewall/${Uri.encodeComponent(dnsFirewallId.toString())}/dns_analytics/report/bytime',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DnsFirewallAnalyticsByTimeResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
