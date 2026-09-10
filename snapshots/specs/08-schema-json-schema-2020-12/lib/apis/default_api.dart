// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/shape_request.dart';import '../models/shape_response.dart';/// DefaultApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DefaultApi with ApiExecutor {const DefaultApi(this.apiConfig);

@override final ApiConfig apiConfig;

///
/// `POST /shapes`
Future<ApiResult<ShapeResponse?, Never>> createShape({required ShapeRequest? body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/shapes',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body);
return  json != null ? ShapeResponse.fromJson(json as dynamic) : null;}, );}
}
