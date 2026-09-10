// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/list_usage_record_yesterday_response.dart';/// Api20100401YesterdayApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class Api20100401YesterdayApi with ApiExecutor {const Api20100401YesterdayApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// 
///
/// `GET /2010-04-01/Accounts/{AccountSid}/Usage/Records/Yesterday.json`
Future<ApiResult<ListUsageRecordYesterdayResponse, Never>> listUsageRecordYesterday({required String accountSid, String? category, String? startDate, String? endDate, bool? includeSubaccounts, int? pageSize, int? page, String? pageToken, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (category != null) {
  queryParameters['Category'] = category;
}
if (startDate != null) {
  queryParameters['StartDate'] = startDate;
}
if (endDate != null) {
  queryParameters['EndDate'] = endDate;
}
if (includeSubaccounts != null) {
  queryParameters['IncludeSubaccounts'] = includeSubaccounts.toString();
}
if (pageSize != null) {
  queryParameters['PageSize'] = pageSize.toString();
}
if (page != null) {
  queryParameters['Page'] = page.toString();
}
if (pageToken != null) {
  queryParameters['PageToken'] = pageToken;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Usage/Records/Yesterday.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return ListUsageRecordYesterdayResponse.fromJson(json as Map<String, dynamic>);
  },
);
 } 
 }
