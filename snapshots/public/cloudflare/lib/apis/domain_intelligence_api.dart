// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/domain_intelligence_get_domain_details_response4xx.dart';import '../models/domain_intelligence_get_multiple_domain_details_response4xx.dart';import '../models/intel_collection_response_result.dart';import '../models/intel_domain.dart';import '../models/intel_identifier.dart';/// DomainIntelligenceApi operations.
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
Future<ApiResult<IntelDomain?, DomainIntelligenceGetDomainDetailsResponse4xx>> domainIntelligenceGetDomainDetails({required IntelIdentifier accountId, String? domain, RequestOptions? options, }) async {final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  json['result'] != null ? IntelDomain.fromJson(json['result'] as Map<String, dynamic>) : null;}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  DomainIntelligenceGetDomainDetailsResponse4xx.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Get Multiple Domain Details
///
/// Same as summary.
///
/// `GET /accounts/{account_id}/intel/domain/bulk`
Future<ApiResult<List<IntelCollectionResponseResult>, DomainIntelligenceGetMultipleDomainDetailsResponse4xx>> domainIntelligenceGetMultipleDomainDetails({required IntelIdentifier accountId, List<String>? domain, RequestOptions? options, }) async {final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (domain != null) {
for (final item in domain) {
  queryParametersList.add(ApiQueryParameter(name: 'domain', value: item));
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


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  (json['result'] as List<dynamic>).map((e) => IntelCollectionResponseResult.fromJson(e as Map<String, dynamic>)).toList();}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  DomainIntelligenceGetMultipleDomainDetailsResponse4xx.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
}
