// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/test_endpoint_response_default.dart';/// DefaultApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DefaultApi with ApiExecutor {const DefaultApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Just a test
///
/// `GET /test`
Future<ApiResult<TestEndpointResponseDefault, TestEndpointResponseDefault>> testEndpoint({RequestOptions? options}) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/test',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body);
return  TestEndpointResponseDefault.fromJson(json as Map<String, dynamic>);}, onError: (response) {switch (response.statusCode) {
default:
final json = jsonDecode(response.body);
return  TestEndpointResponseDefault.fromJson(json as Map<String, dynamic>); }}, );}
}
