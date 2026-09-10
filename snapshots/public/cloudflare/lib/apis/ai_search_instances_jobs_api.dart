// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/ai_search_instance_change_job_status_request.dart';import '../models/ai_search_instance_change_job_status_response400.dart';import '../models/ai_search_instance_change_job_status_response500.dart';import '../models/ai_search_instance_change_job_status_response_result.dart';import '../models/ai_search_instance_create_job_request.dart';import '../models/ai_search_instance_create_job_response400.dart';import '../models/ai_search_instance_create_job_response500.dart';import '../models/ai_search_instance_create_job_response_result.dart';import '../models/ai_search_instance_get_job_response400.dart';import '../models/ai_search_instance_get_job_response500.dart';import '../models/ai_search_instance_get_job_response_result.dart';import '../models/ai_search_instance_list_job_logs_response400.dart';import '../models/ai_search_instance_list_job_logs_response500.dart';import '../models/ai_search_instance_list_job_logs_response_result.dart';import '../models/ai_search_instance_list_jobs_response400.dart';import '../models/ai_search_instance_list_jobs_response500.dart';import '../models/ai_search_instance_list_jobs_response_result.dart';/// AiSearchInstancesJobsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AiSearchInstancesJobsApi with ApiExecutor {const AiSearchInstancesJobsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Jobs
///
/// Lists indexing jobs for an AI Search instance.
///
/// `GET /accounts/{account_id}/ai-search/instances/{id}/jobs`
Future<ApiResult<List<AiSearchInstanceListJobsResponseResult>, OneOf2<AiSearchInstanceListJobsResponse400, AiSearchInstanceListJobsResponse500>>> aiSearchInstanceListJobs({required String id, required String accountId, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-search/instances/${Uri.encodeComponent(id)}/jobs',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => AiSearchInstanceListJobsResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf2<AiSearchInstanceListJobsResponse400, AiSearchInstanceListJobsResponse500>.a(AiSearchInstanceListJobsResponse400.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OneOf2<AiSearchInstanceListJobsResponse400, AiSearchInstanceListJobsResponse500>.b(AiSearchInstanceListJobsResponse500.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Create new job
///
/// Creates a new indexing job for an AI Search instance.
///
/// `POST /accounts/{account_id}/ai-search/instances/{id}/jobs`
Future<ApiResult<AiSearchInstanceCreateJobResponseResult, OneOf2<AiSearchInstanceCreateJobResponse400, AiSearchInstanceCreateJobResponse500>>> aiSearchInstanceCreateJob({required String id, required String accountId, AiSearchInstanceCreateJobRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-search/instances/${Uri.encodeComponent(id)}/jobs',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return AiSearchInstanceCreateJobResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf2<AiSearchInstanceCreateJobResponse400, AiSearchInstanceCreateJobResponse500>.a(AiSearchInstanceCreateJobResponse400.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OneOf2<AiSearchInstanceCreateJobResponse400, AiSearchInstanceCreateJobResponse500>.b(AiSearchInstanceCreateJobResponse500.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Get a Job Details
///
/// Retrieves details for a specific AI Search indexing job.
///
/// `GET /accounts/{account_id}/ai-search/instances/{id}/jobs/{job_id}`
Future<ApiResult<AiSearchInstanceGetJobResponseResult, OneOf2<AiSearchInstanceGetJobResponse400, AiSearchInstanceGetJobResponse500>>> aiSearchInstanceGetJob({required String id, required String jobId, required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-search/instances/${Uri.encodeComponent(id)}/jobs/${Uri.encodeComponent(jobId)}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return AiSearchInstanceGetJobResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf2<AiSearchInstanceGetJobResponse400, AiSearchInstanceGetJobResponse500>.a(AiSearchInstanceGetJobResponse400.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OneOf2<AiSearchInstanceGetJobResponse400, AiSearchInstanceGetJobResponse500>.b(AiSearchInstanceGetJobResponse500.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Change Job Status
///
/// Updates the status of an AI Search indexing job.
///
/// `PATCH /accounts/{account_id}/ai-search/instances/{id}/jobs/{job_id}`
Future<ApiResult<AiSearchInstanceChangeJobStatusResponseResult, OneOf2<AiSearchInstanceChangeJobStatusResponse400, AiSearchInstanceChangeJobStatusResponse500>>> aiSearchInstanceChangeJobStatus({required String id, required String jobId, required String accountId, AiSearchInstanceChangeJobStatusRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-search/instances/${Uri.encodeComponent(id)}/jobs/${Uri.encodeComponent(jobId)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return AiSearchInstanceChangeJobStatusResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf2<AiSearchInstanceChangeJobStatusResponse400, AiSearchInstanceChangeJobStatusResponse500>.a(AiSearchInstanceChangeJobStatusResponse400.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OneOf2<AiSearchInstanceChangeJobStatusResponse400, AiSearchInstanceChangeJobStatusResponse500>.b(AiSearchInstanceChangeJobStatusResponse500.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// List Job Logs
///
/// Lists log entries for an AI Search indexing job.
///
/// `GET /accounts/{account_id}/ai-search/instances/{id}/jobs/{job_id}/logs`
Future<ApiResult<List<AiSearchInstanceListJobLogsResponseResult>, OneOf2<AiSearchInstanceListJobLogsResponse400, AiSearchInstanceListJobLogsResponse500>>> aiSearchInstanceListJobLogs({required String id, required String jobId, required String accountId, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-search/instances/${Uri.encodeComponent(id)}/jobs/${Uri.encodeComponent(jobId)}/logs',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => AiSearchInstanceListJobLogsResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf2<AiSearchInstanceListJobLogsResponse400, AiSearchInstanceListJobLogsResponse500>.a(AiSearchInstanceListJobLogsResponse400.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OneOf2<AiSearchInstanceListJobLogsResponse400, AiSearchInstanceListJobLogsResponse500>.b(AiSearchInstanceListJobLogsResponse500.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
 }
