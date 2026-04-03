// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/get_target_industry_list_by_dataset_response.dart';import '../models/get_target_industry_list_by_dataset_response400.dart';import '../models/get_target_industry_list_complete_response.dart';import '../models/get_target_industry_list_complete_response400.dart';import '../models/get_target_industry_list_response.dart';import '../models/get_target_industry_list_response400.dart';/// TargetIndustryApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class TargetIndustryApi with ApiExecutor {const TargetIndustryApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Lists all target industries for a specific dataset
///
/// `GET /accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/targetIndustries`
Future<ApiResult<GetTargetIndustryListByDatasetResponse, GetTargetIndustryListByDatasetResponse400>> getTargetIndustryListByDataset({required String accountId, required String datasetId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/${Uri.encodeComponent(datasetId)}/targetIndustries',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GetTargetIndustryListByDatasetResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return GetTargetIndustryListByDatasetResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Lists target industries across multiple datasets
///
/// `GET /accounts/{account_id}/cloudforce-one/events/targetIndustries`
Future<ApiResult<GetTargetIndustryListResponse, GetTargetIndustryListResponse400>> getTargetIndustryList({required String accountId, List<String>? datasetIds, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (datasetIds != null) {
for (final item in datasetIds) {
  queryParametersList.add(ApiQueryParameter(name: 'datasetIds', value: item));
}
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/targetIndustries',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GetTargetIndustryListResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return GetTargetIndustryListResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Lists all target industries from industry map catalog
///
/// `GET /accounts/{account_id}/cloudforce-one/events/targetIndustries/catalog`
Future<ApiResult<GetTargetIndustryListCompleteResponse, GetTargetIndustryListCompleteResponse400>> getTargetIndustryListComplete({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/targetIndustries/catalog',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GetTargetIndustryListCompleteResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return GetTargetIndustryListCompleteResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
