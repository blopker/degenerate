// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/intel_collection_response.dart';import '../models/intel_identifier.dart';import '../models/intel_single_response.dart';/// DomainIntelligenceApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DomainIntelligenceApi with ApiExecutor {const DomainIntelligenceApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get Domain Details
///
/// Gets security details and statistics about a domain.
///
/// `GET /accounts/{account_id}/intel/domain`
Future<ApiResult<IntelSingleResponse, Never>> domainIntelligenceGetDomainDetails({required IntelIdentifier accountId, String? domain, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (domain != null) {
  queryParameters['domain'] = domain;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/intel/domain',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return IntelSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Multiple Domain Details
///
/// Same as summary.
///
/// `GET /accounts/{account_id}/intel/domain/bulk`
Future<ApiResult<IntelCollectionResponse, Never>> domainIntelligenceGetMultipleDomainDetails({required IntelIdentifier accountId, List<String>? domain, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (domain != null) {
for (final item in domain) {
  queryParametersList.add(ApiQueryParameter(name: 'domain', value: item, allowReserved: false));
}
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/intel/domain/bulk',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return IntelCollectionResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
