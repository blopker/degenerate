// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/get_zones_zone_id_logpush_edge_jobs_response4_xx.dart';import '../models/logpush_identifier.dart';import '../models/logpush_instant_logs_job.dart';import '../models/post_zones_zone_id_logpush_edge_jobs_request.dart';import '../models/post_zones_zone_id_logpush_edge_jobs_response4_xx.dart';/// InstantLogsJobsForAZoneApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class InstantLogsJobsForAZoneApi with ApiExecutor {const InstantLogsJobsForAZoneApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Instant Logs jobs
///
/// Lists Instant Logs jobs for a zone.
///
/// `GET /zones/{zone_id}/logpush/edge/jobs`
Future<ApiResult<List<LogpushInstantLogsJob?>?, GetZonesZoneIdLogpushEdgeJobsResponse4Xx>> getZonesZoneIdLogpushEdgeJobs({required LogpushIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/logpush/edge/jobs',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>?)?.map((e) => e == null ? null : LogpushInstantLogsJob.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return GetZonesZoneIdLogpushEdgeJobsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Create Instant Logs job
///
/// Creates a new Instant Logs job for a zone.
///
/// `POST /zones/{zone_id}/logpush/edge/jobs`
Future<ApiResult<LogpushInstantLogsJob?, PostZonesZoneIdLogpushEdgeJobsResponse4Xx>> postZonesZoneIdLogpushEdgeJobs({required LogpushIdentifier zoneId, required PostZonesZoneIdLogpushEdgeJobsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/logpush/edge/jobs',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? LogpushInstantLogsJob.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return PostZonesZoneIdLogpushEdgeJobsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
