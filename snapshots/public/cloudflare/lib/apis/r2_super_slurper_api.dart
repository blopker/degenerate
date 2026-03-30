// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/failure2.dart';import '../models/r2_slurper_connectivity_response.dart';import '../models/r2_slurper_create_job_request.dart';import '../models/r2_slurper_job_log_response.dart';import '../models/r2_slurper_job_progress_response.dart';import '../models/r2_slurper_job_response.dart';import '../models/r2_slurper_r2_target_schema.dart';import '../models/r2_slurper_source_job_schema.dart';import '../models/slurper_create_job_response_result.dart';/// R2SuperSlurperApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class R2SuperSlurperApi with ApiExecutor {const R2SuperSlurperApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List jobs
///
/// `GET /accounts/{account_id}/slurper/jobs`
Future<ApiResult<List<R2SlurperJobResponse>?, Never>> slurperListJobs({required String accountId, int? limit, int? offset, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (offset != null) {
  queryParameters['offset'] = offset.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/slurper/jobs',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => R2SlurperJobResponse.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create a job
///
/// `POST /accounts/{account_id}/slurper/jobs`
Future<ApiResult<SlurperCreateJobResponseResult?, Failure2>> slurperCreateJob({required String accountId, required R2SlurperCreateJobRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/slurper/jobs',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? SlurperCreateJobResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return Failure2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get job details
///
/// `GET /accounts/{account_id}/slurper/jobs/{job_id}`
Future<ApiResult<R2SlurperJobResponse?, Never>> slurperGetJob({required String accountId, required String jobId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/slurper/jobs/${Uri.encodeComponent(jobId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? R2SlurperJobResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Abort a job
///
/// `PUT /accounts/{account_id}/slurper/jobs/{job_id}/abort`
Future<ApiResult<String?, Never>> slurperAbortJob({required String accountId, required String jobId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/slurper/jobs/${Uri.encodeComponent(jobId)}/abort',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as String?;
  },
);
 } 
/// Get job logs
///
/// `GET /accounts/{account_id}/slurper/jobs/{job_id}/logs`
Future<ApiResult<List<R2SlurperJobLogResponse>?, Never>> slurperGetJobLogs({required String accountId, required String jobId, int? limit, int? offset, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (offset != null) {
  queryParameters['offset'] = offset.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/slurper/jobs/${Uri.encodeComponent(jobId)}/logs',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => R2SlurperJobLogResponse.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Pause a job
///
/// `PUT /accounts/{account_id}/slurper/jobs/{job_id}/pause`
Future<ApiResult<String?, Failure2>> slurperPauseJob({required String accountId, required String jobId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/slurper/jobs/${Uri.encodeComponent(jobId)}/pause',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as String?;
  },
  onError: (response) {
    return Failure2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get job progress
///
/// `GET /accounts/{account_id}/slurper/jobs/{job_id}/progress`
Future<ApiResult<R2SlurperJobProgressResponse?, Never>> slurperGetJobProgress({required String accountId, required String jobId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/slurper/jobs/${Uri.encodeComponent(jobId)}/progress',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? R2SlurperJobProgressResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Resume a job
///
/// `PUT /accounts/{account_id}/slurper/jobs/{job_id}/resume`
Future<ApiResult<String?, Never>> slurperResumeJob({required String accountId, required String jobId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/slurper/jobs/${Uri.encodeComponent(jobId)}/resume',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as String?;
  },
);
 } 
/// Abort all jobs
///
/// `PUT /accounts/{account_id}/slurper/jobs/abortAll`
Future<ApiResult<String?, Never>> slurperAbortAllJobs({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/slurper/jobs/abortAll',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as String?;
  },
);
 } 
/// Check source connectivity
///
/// Check whether tokens are valid against the source bucket
///
/// `PUT /accounts/{account_id}/slurper/source/connectivity-precheck`
Future<ApiResult<R2SlurperConnectivityResponse?, Never>> slurperCheckSourceConnectivity({required String accountId, required R2SlurperSourceJobSchema body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/slurper/source/connectivity-precheck',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? R2SlurperConnectivityResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Check target connectivity
///
/// Check whether tokens are valid against the target bucket
///
/// `PUT /accounts/{account_id}/slurper/target/connectivity-precheck`
Future<ApiResult<R2SlurperConnectivityResponse?, Never>> slurperCheckTargetConnectivity({required String accountId, required R2SlurperR2TargetSchema body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/slurper/target/connectivity-precheck',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? R2SlurperConnectivityResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
