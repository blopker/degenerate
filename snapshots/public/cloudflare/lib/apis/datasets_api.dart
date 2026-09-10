// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/post_dataset_populate_response.dart';import '../models/post_dataset_populate_response400.dart';/// DatasetsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DatasetsApi with ApiExecutor {const DatasetsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Populate dataset-specific lookup tables from existing Events data with batch processing
///
/// `POST /accounts/{account_id}/cloudforce-one/events/datasets/populate`
Future<ApiResult<PostDatasetPopulateResponse, PostDatasetPopulateResponse400>> postDatasetPopulate({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/datasets/populate',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return PostDatasetPopulateResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return PostDatasetPopulateResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
