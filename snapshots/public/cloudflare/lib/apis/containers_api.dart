// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/base_error_response.dart';import '../models/base_response.dart';/// ContainersApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ContainersApi with ApiExecutor {const ContainersApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List containers.
///
/// Lists all the container applications that are associated with your account.
///
/// `GET /accounts/{account_id}/containers`
Future<ApiResult<BaseResponse, BaseErrorResponse>> publicListApplications({required String accountId, String? name, String? image, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (name != null) {
  queryParameters['name'] = name;
}
if (image != null) {
  queryParameters['image'] = image;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/containers',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return BaseResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BaseErrorResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
