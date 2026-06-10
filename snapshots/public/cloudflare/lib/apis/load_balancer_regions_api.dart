// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/load_balancing_components_schemas_identifier.dart';import '../models/load_balancing_region_code.dart';import '../models/load_balancing_subdivision_code_a2.dart';import '../models/response_single30_result.dart';/// LoadBalancerRegionsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class LoadBalancerRegionsApi with ApiExecutor {const LoadBalancerRegionsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Regions
///
/// List all region mappings.
///
/// `GET /accounts/{account_id}/load_balancers/regions`
Future<ApiResult<ResponseSingle30Result, Never>> loadBalancerRegionsListRegions({required LoadBalancingComponentsSchemasIdentifier accountId, LoadBalancingSubdivisionCodeA2? subdivisionCode, LoadBalancingSubdivisionCodeA2? subdivisionCodeA2, String? countryCodeA2, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (subdivisionCode != null) {
  queryParameters['subdivision_code'] = subdivisionCode.toString();
}
if (subdivisionCodeA2 != null) {
  queryParameters['subdivision_code_a2'] = subdivisionCodeA2.toString();
}
if (countryCodeA2 != null) {
  queryParameters['country_code_a2'] = countryCodeA2;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/load_balancers/regions',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf2.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => v as String,);
  },
);
 } 
/// Get Region
///
/// Get a single region mapping.
///
/// `GET /accounts/{account_id}/load_balancers/regions/{region_id}`
Future<ApiResult<ResponseSingle30Result, Never>> loadBalancerRegionsGetRegion({required LoadBalancingRegionCode regionId, required LoadBalancingComponentsSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/load_balancers/regions/${Uri.encodeComponent(regionId.value)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf2.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => v as String,);
  },
);
 } 
 }
