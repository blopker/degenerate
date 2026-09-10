// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dnssec_delete_dnssec_records_response4_xx.dart';import '../models/dnssec_dnssec.dart';import '../models/dnssec_dnssec_details_response4_xx.dart';import '../models/dnssec_edit_dnssec_status_request.dart';import '../models/dnssec_edit_dnssec_status_response4_xx.dart';import '../models/dnssec_identifier.dart';/// DnssecApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DnssecApi with ApiExecutor {const DnssecApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// DNSSEC Details
///
/// Details about DNSSEC status and configuration.
///
/// `GET /zones/{zone_id}/dnssec`
Future<ApiResult<DnssecDnssec?, DnssecDnssecDetailsResponse4Xx>> dnssecDetails({required DnssecIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/dnssec',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? DnssecDnssec.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DnssecDnssecDetailsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Edit DNSSEC Status
///
/// Enable or disable DNSSEC.
///
/// `PATCH /zones/{zone_id}/dnssec`
Future<ApiResult<DnssecDnssec?, DnssecEditDnssecStatusResponse4Xx>> dnssecEditDnssecStatus({required DnssecIdentifier zoneId, required DnssecEditDnssecStatusRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/dnssec',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? DnssecDnssec.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DnssecEditDnssecStatusResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Delete DNSSEC records
///
/// Delete DNSSEC.
///
/// `DELETE /zones/{zone_id}/dnssec`
Future<ApiResult<String?, DnssecDeleteDnssecRecordsResponse4Xx>> dnssecDeleteDnssecRecords({required DnssecIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/dnssec',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] as String?;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DnssecDeleteDnssecRecordsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
