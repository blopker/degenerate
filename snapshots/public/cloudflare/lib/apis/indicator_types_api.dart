// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/get_indicator_types_list_response.dart';import '../models/get_indicator_types_list_response400.dart';/// IndicatorTypesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class IndicatorTypesApi with ApiExecutor {const IndicatorTypesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Lists indicator types across multiple datasets
///
/// `GET /accounts/{account_id}/cloudforce-one/events/indicator-types`
Future<ApiResult<GetIndicatorTypesListResponse, GetIndicatorTypesListResponse400>> getIndicatorTypesList({required String accountId, List<String>? datasetIds, RequestOptions? options, }) async {final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (datasetIds != null) {
for (final item in datasetIds) {
  queryParametersList.add(ApiQueryParameter(name: 'datasetIds', value: item));
}
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/indicator-types',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body);
return  GetIndicatorTypesListResponse.fromJson(json as Map<String, dynamic>);}, onError: (response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  GetIndicatorTypesListResponse400.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
}
