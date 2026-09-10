// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/create_completion_request.dart';import '../models/create_completion_response.dart';/// CompletionsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class CompletionsApi with ApiExecutor {const CompletionsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Creates a completion for the provided prompt and parameters.
/// 
/// Returns a completion object, or a sequence of completion objects if the request is streamed.
/// 
///
/// `POST /completions`
Future<ApiResult<CreateCompletionResponse, Never>> createCompletion({required CreateCompletionRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/completions',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body);
return  CreateCompletionResponse.fromJson(json as Map<String, dynamic>);}, );}
}
