// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/delete_zones_zone_id_logpush_jobs_job_id_response_result.dart';import '../models/logpush_dataset.dart';import '../models/logpush_destination_exists_response_result.dart';import '../models/logpush_get_ownership_response_result.dart';import '../models/logpush_id.dart';import '../models/logpush_identifier.dart';import '../models/logpush_logpush_job.dart';import '../models/logpush_validate_ownership_response_result.dart';import '../models/logpush_validate_response_result.dart';import '../models/post_zones_zone_id_logpush_jobs_request.dart';import '../models/post_zones_zone_id_logpush_ownership_request.dart';import '../models/post_zones_zone_id_logpush_ownership_validate_request.dart';import '../models/post_zones_zone_id_logpush_validate_destination_exists_request.dart';import '../models/post_zones_zone_id_logpush_validate_destination_request.dart';import '../models/post_zones_zone_id_logpush_validate_origin_request.dart';import '../models/put_zones_zone_id_logpush_jobs_job_id_request.dart';/// LogpushJobsForAZoneApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class LogpushJobsForAZoneApi with ApiExecutor {const LogpushJobsForAZoneApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List fields
///
/// Lists all fields available for a dataset. The response result is. an object with key-value pairs, where keys are field names, and values are descriptions.
///
/// `GET /zones/{zone_id}/logpush/datasets/{dataset_id}/fields`
Future<ApiResult<Map<String, dynamic>?, Never>> getZonesZoneIdLogpushDatasetsDatasetIdFields({required LogpushDataset datasetId, required LogpushIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/logpush/datasets/${Uri.encodeComponent(datasetId.toString())}/fields',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v));
  },
);
 } 
/// List Logpush jobs for a dataset
///
/// Lists Logpush jobs for a zone for a dataset.
///
/// `GET /zones/{zone_id}/logpush/datasets/{dataset_id}/jobs`
Future<ApiResult<List<LogpushLogpushJob>?, Never>> getZonesZoneIdLogpushDatasetsDatasetIdJobs({required LogpushDataset datasetId, required LogpushIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/logpush/datasets/${Uri.encodeComponent(datasetId.toString())}/jobs',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => LogpushLogpushJob.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// List Logpush jobs
///
/// Lists Logpush jobs for a zone.
///
/// `GET /zones/{zone_id}/logpush/jobs`
Future<ApiResult<List<LogpushLogpushJob>?, Never>> getZonesZoneIdLogpushJobs({required LogpushIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/logpush/jobs',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => LogpushLogpushJob.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create Logpush job
///
/// Creates a new Logpush job for a zone.
///
/// `POST /zones/{zone_id}/logpush/jobs`
Future<ApiResult<LogpushLogpushJob?, Never>> postZonesZoneIdLogpushJobs({required LogpushIdentifier zoneId, required PostZonesZoneIdLogpushJobsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/logpush/jobs',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? LogpushLogpushJob.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get Logpush job details
///
/// Gets the details of a Logpush job.
///
/// `GET /zones/{zone_id}/logpush/jobs/{job_id}`
Future<ApiResult<LogpushLogpushJob?, Never>> getZonesZoneIdLogpushJobsJobId({required LogpushId jobId, required LogpushIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/logpush/jobs/${Uri.encodeComponent(jobId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? LogpushLogpushJob.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update Logpush job
///
/// Updates a Logpush job.
///
/// `PUT /zones/{zone_id}/logpush/jobs/{job_id}`
Future<ApiResult<LogpushLogpushJob?, Never>> putZonesZoneIdLogpushJobsJobId({required LogpushId jobId, required LogpushIdentifier zoneId, required PutZonesZoneIdLogpushJobsJobIdRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/logpush/jobs/${Uri.encodeComponent(jobId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? LogpushLogpushJob.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete Logpush job
///
/// Deletes a Logpush job.
///
/// `DELETE /zones/{zone_id}/logpush/jobs/{job_id}`
Future<ApiResult<DeleteZonesZoneIdLogpushJobsJobIdResponseResult?, Never>> deleteZonesZoneIdLogpushJobsJobId({required LogpushId jobId, required LogpushIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/logpush/jobs/${Uri.encodeComponent(jobId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DeleteZonesZoneIdLogpushJobsJobIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get ownership challenge
///
/// Gets a new ownership challenge sent to your destination.
///
/// `POST /zones/{zone_id}/logpush/ownership`
Future<ApiResult<LogpushGetOwnershipResponseResult?, Never>> postZonesZoneIdLogpushOwnership({required LogpushIdentifier zoneId, required PostZonesZoneIdLogpushOwnershipRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/logpush/ownership',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? LogpushGetOwnershipResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Validate ownership challenge
///
/// Validates ownership challenge of the destination.
///
/// `POST /zones/{zone_id}/logpush/ownership/validate`
Future<ApiResult<LogpushValidateOwnershipResponseResult?, Never>> postZonesZoneIdLogpushOwnershipValidate({required LogpushIdentifier zoneId, required PostZonesZoneIdLogpushOwnershipValidateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/logpush/ownership/validate',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? LogpushValidateOwnershipResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Validate destination
///
/// Validates destination.
///
/// `POST /zones/{zone_id}/logpush/validate/destination`
Future<ApiResult<LogpushValidateResponseResult?, Never>> postZonesZoneIdLogpushValidateDestination({required LogpushIdentifier zoneId, required PostZonesZoneIdLogpushValidateDestinationRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/logpush/validate/destination',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? LogpushValidateResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Check destination exists
///
/// Checks if there is an existing job with a destination.
///
/// `POST /zones/{zone_id}/logpush/validate/destination/exists`
Future<ApiResult<LogpushDestinationExistsResponseResult?, Never>> postZonesZoneIdLogpushValidateDestinationExists({required LogpushIdentifier zoneId, required PostZonesZoneIdLogpushValidateDestinationExistsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/logpush/validate/destination/exists',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? LogpushDestinationExistsResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Validate origin
///
/// Validates logpull origin with logpull_options.
///
/// `POST /zones/{zone_id}/logpush/validate/origin`
Future<ApiResult<LogpushValidateResponseResult?, Never>> postZonesZoneIdLogpushValidateOrigin({required LogpushIdentifier zoneId, required PostZonesZoneIdLogpushValidateOriginRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/logpush/validate/origin',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? LogpushValidateResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
