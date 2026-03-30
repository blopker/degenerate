// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/intel_identifier.dart';import '../models/intel_response.dart';/// DomainHistoryApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DomainHistoryApi with ApiExecutor {const DomainHistoryApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get Domain History
///
/// Gets historical security threat and content categories currently and previously assigned to a domain.
///
/// `GET /accounts/{account_id}/intel/domain-history`
Future<ApiResult<IntelResponse, Never>> domainHistoryGetDomainHistory({required IntelIdentifier accountId, String? domain, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (domain != null) {
  queryParameters['domain'] = domain;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/intel/domain-history',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return IntelResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
