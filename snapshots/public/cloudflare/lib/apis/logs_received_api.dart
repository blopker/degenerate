// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/logcontrol_identifier.dart';import '../models/logcontrol_retention_flag.dart';import '../models/logshare_count.dart';import '../models/logshare_end.dart';import '../models/logshare_fields.dart';import '../models/logshare_fields_response.dart';import '../models/logshare_identifier.dart';import '../models/logshare_logs_response_json_lines.dart';import '../models/logshare_ray_identifier.dart';import '../models/logshare_sample.dart';import '../models/logshare_start.dart';import '../models/logshare_timestamps.dart';/// LogsReceivedApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class LogsReceivedApi with ApiExecutor {const LogsReceivedApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get log retention flag
///
/// Gets log retention flag for Logpull API.
///
/// `GET /zones/{zone_id}/logs/control/retention/flag`
Future<ApiResult<LogcontrolRetentionFlag?, Never>> getZonesZoneIdLogsControlRetentionFlag({required LogcontrolIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/logs/control/retention/flag',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? LogcontrolRetentionFlag.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update log retention flag
///
/// Updates log retention flag for Logpull API.
///
/// `POST /zones/{zone_id}/logs/control/retention/flag`
Future<ApiResult<LogcontrolRetentionFlag?, Never>> postZonesZoneIdLogsControlRetentionFlag({required LogcontrolIdentifier zoneId, required LogcontrolRetentionFlag body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/logs/control/retention/flag',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? LogcontrolRetentionFlag.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get logs RayIDs
///
/// The `/rayids` api route allows lookups by specific rayid. The rayids route will return zero, one, or more records (ray ids are not unique).
///
/// `GET /zones/{zone_id}/logs/rayids/{ray_id}`
Future<ApiResult<LogshareLogsResponseJsonLines, Never>> getZonesZoneIdLogsRayidsRayId({required LogshareIdentifier zoneId, required LogshareRayIdentifier rayId, LogshareFields? fields, LogshareTimestamps? timestamps, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}
if (timestamps != null) {
  queryParameters['timestamps'] = timestamps.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/logs/rayids/${Uri.encodeComponent(rayId.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return OneOf2.parse(jsonDecode(response.body), fromA: (v) => v as String, fromB: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),);
  },
);
 } 
/// Get logs received
///
/// The `/received` api route allows customers to retrieve their edge HTTP logs. The basic access pattern is "give me all the logs for zone Z for minute M", where the minute M refers to the time records were received at Cloudflare's central data center. `start` is inclusive, and `end` is exclusive. Because of that, to get all data, at minutely cadence, starting at 10AM, the proper values are: `start=2018-05-20T10:00:00Z&end=2018-05-20T10:01:00Z`, then `start=2018-05-20T10:01:00Z&end=2018-05-20T10:02:00Z` and so on; the overlap will be handled properly.
///
/// `GET /zones/{zone_id}/logs/received`
Future<ApiResult<LogshareLogsResponseJsonLines, Never>> getZonesZoneIdLogsReceived({required LogshareIdentifier zoneId, LogshareStart? start, required LogshareEnd end, LogshareFields? fields, LogshareSample? sample, LogshareCount? count, LogshareTimestamps? timestamps, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (start != null) {
queryParametersList.add(ApiQueryParameter(name: 'start', value: start.toString(), allowReserved: false));
}
queryParametersList.add(ApiQueryParameter(name: 'end', value: end.toString(), allowReserved: false));
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}
if (sample != null) {
  queryParameters['sample'] = sample.toString();
}
if (count != null) {
  queryParameters['count'] = count.toString();
}
if (timestamps != null) {
  queryParameters['timestamps'] = timestamps.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/logs/received',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return OneOf2.parse(jsonDecode(response.body), fromA: (v) => v as String, fromB: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),);
  },
);
 } 
/// List fields
///
/// Lists all fields available. The response is json object with key-value pairs, where keys are field names, and values are descriptions.
///
/// `GET /zones/{zone_id}/logs/received/fields`
Future<ApiResult<LogshareFieldsResponse, Never>> getZonesZoneIdLogsReceivedFields({required LogshareIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/logs/received/fields',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return LogshareFieldsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
