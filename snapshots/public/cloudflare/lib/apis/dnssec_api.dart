// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dnssec_delete_dnssec_response_single.dart';import '../models/dnssec_dnssec_response_single.dart';import '../models/dnssec_edit_dnssec_status_request.dart';import '../models/dnssec_identifier.dart';/// DnssecApi operations.
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
Future<ApiResult<DnssecDnssecResponseSingle, Never>> dnssecDetails({required DnssecIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/dnssec',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DnssecDnssecResponseSingle.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Edit DNSSEC Status
///
/// Enable or disable DNSSEC.
///
/// `PATCH /zones/{zone_id}/dnssec`
Future<ApiResult<DnssecDnssecResponseSingle, Never>> dnssecEditDnssecStatus({required DnssecIdentifier zoneId, required DnssecEditDnssecStatusRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/dnssec',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DnssecDnssecResponseSingle.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete DNSSEC records
///
/// Delete DNSSEC.
///
/// `DELETE /zones/{zone_id}/dnssec`
Future<ApiResult<DnssecDeleteDnssecResponseSingle, Never>> dnssecDeleteDnssecRecords({required DnssecIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/dnssec',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DnssecDeleteDnssecResponseSingle.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
