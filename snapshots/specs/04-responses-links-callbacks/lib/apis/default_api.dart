// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/create_job_success.dart';import '../models/error_model.dart';import '../models/job.dart';import '../models/new_job.dart';/// DefaultApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DefaultApi with ApiExecutor {const DefaultApi(this.apiConfig);

@override final ApiConfig apiConfig;

///
/// `POST /jobs`
Future<ApiResult<CreateJobSuccess, ErrorModel>> createJob({NewJob? body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/jobs',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);


return   await execute(request, onSuccess: CreateJobSuccess.parse, onError: (response) {switch (response.statusCode) {
default:
final json = jsonDecode(response.body);
return  ErrorModel.fromJson(json as Map<String, dynamic>); }}, );}
///
/// `GET /jobs/{jobId}`
Future<ApiResult<Job, Never>> getJob({required String jobId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/jobs/${Uri.encodeComponent(jobId)}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body);
return  Job.fromJson(json as Map<String, dynamic>);}, );}
}
