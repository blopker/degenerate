// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dos_asn.dart';import '../models/dos_identifier.dart';import '../models/dos_timestamp.dart';import '../models/response_common28.dart';/// BotnetThreatFeedApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class BotnetThreatFeedApi with ApiExecutor {const BotnetThreatFeedApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get daily report
///
/// Gets all the data the botnet tracking database has for a given ASN registered to user account for given date. If no date is given, it will return results for the previous day.
///
/// `GET /accounts/{account_id}/botnet_feed/asn/{asn_id}/day_report`
Future<ApiResult<ResponseCommon28, Never>> botnetThreatFeedGetDayReport({required DosIdentifier accountId, required DosAsn asnId, DosTimestamp? date, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (date != null) queryParameters['date'] = date.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/botnet_feed/asn/${Uri.encodeComponent(asnId.toString())}/day_report',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon28.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get full report
///
/// Gets all the data the botnet threat feed tracking database has for a given ASN registered to user account.
///
/// `GET /accounts/{account_id}/botnet_feed/asn/{asn_id}/full_report`
Future<ApiResult<ResponseCommon28, Never>> botnetThreatFeedGetFullReport({required DosIdentifier accountId, required DosAsn asnId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/botnet_feed/asn/${Uri.encodeComponent(asnId.toString())}/full_report',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon28.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get list of ASNs
///
/// Gets a list of all ASNs registered for a user for the DDoS Botnet Feed API.
///
/// `GET /accounts/{account_id}/botnet_feed/configs/asn`
Future<ApiResult<ResponseCommon28, Never>> botnetThreatFeedListAsn({required DosIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/botnet_feed/configs/asn',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon28.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete an ASN
///
/// Delete an ASN from botnet threat feed for a given user.
///
/// `DELETE /accounts/{account_id}/botnet_feed/configs/asn/{asn_id}`
Future<ApiResult<ResponseCommon28, Never>> botnetThreatFeedDeleteAsn({required DosIdentifier accountId, required DosAsn asnId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/botnet_feed/configs/asn/${Uri.encodeComponent(asnId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon28.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
