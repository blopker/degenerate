// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/autorag_config_get_job_response404.dart';import '../models/autorag_config_get_job_response503.dart';import '../models/autorag_config_get_job_response_result.dart';import '../models/autorag_config_list_job_logs_response404.dart';import '../models/autorag_config_list_job_logs_response503.dart';import '../models/autorag_config_list_job_logs_response_result.dart';import '../models/autorag_config_list_jobs_response404.dart';import '../models/autorag_config_list_jobs_response503.dart';import '../models/autorag_config_list_jobs_response_result.dart';/// AutoRagJobsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AutoRagJobsApi with ApiExecutor {const AutoRagJobsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Jobs
///
/// `GET /accounts/{account_id}/autorag/rags/{id}/jobs`
Future<ApiResult<List<AutoragConfigListJobsResponseResult>, OneOf2<AutoragConfigListJobsResponse404, AutoragConfigListJobsResponse503>>> autoragConfigListJobs({required String id, required String accountId, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/accounts/${Uri.encodeComponent(accountId)}/autorag/rags/${Uri.encodeComponent(id)}/jobs',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => AutoragConfigListJobsResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return OneOf2<AutoragConfigListJobsResponse404, AutoragConfigListJobsResponse503>.a(AutoragConfigListJobsResponse404.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return OneOf2<AutoragConfigListJobsResponse404, AutoragConfigListJobsResponse503>.b(AutoragConfigListJobsResponse503.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Get a Job Details
///
/// `GET /accounts/{account_id}/autorag/rags/{id}/jobs/{job_id}`
Future<ApiResult<AutoragConfigGetJobResponseResult, OneOf2<AutoragConfigGetJobResponse404, AutoragConfigGetJobResponse503>>> autoragConfigGetJob({required String id, required String jobId, required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/autorag/rags/${Uri.encodeComponent(id)}/jobs/${Uri.encodeComponent(jobId)}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return AutoragConfigGetJobResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return OneOf2<AutoragConfigGetJobResponse404, AutoragConfigGetJobResponse503>.a(AutoragConfigGetJobResponse404.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return OneOf2<AutoragConfigGetJobResponse404, AutoragConfigGetJobResponse503>.b(AutoragConfigGetJobResponse503.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// List Job Logs
///
/// `GET /accounts/{account_id}/autorag/rags/{id}/jobs/{job_id}/logs`
Future<ApiResult<List<AutoragConfigListJobLogsResponseResult>, OneOf2<AutoragConfigListJobLogsResponse404, AutoragConfigListJobLogsResponse503>>> autoragConfigListJobLogs({required String id, required String jobId, required String accountId, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/accounts/${Uri.encodeComponent(accountId)}/autorag/rags/${Uri.encodeComponent(id)}/jobs/${Uri.encodeComponent(jobId)}/logs',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => AutoragConfigListJobLogsResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return OneOf2<AutoragConfigListJobLogsResponse404, AutoragConfigListJobLogsResponse503>.a(AutoragConfigListJobLogsResponse404.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return OneOf2<AutoragConfigListJobLogsResponse404, AutoragConfigListJobLogsResponse503>.b(AutoragConfigListJobLogsResponse503.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
 }
