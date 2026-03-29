// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/fraud_fraud_settings.dart';import '../models/fraud_identifier.dart';import '../models/response_common32.dart';/// FraudDetectionApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class FraudDetectionApi with ApiExecutor {const FraudDetectionApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get Fraud Detection Settings
///
/// Retrieve Fraud Detection settings for a zone.
///
/// `GET /zones/{zone_id}/fraud_detection/settings`
Future<ApiResult<ResponseCommon32, Never>> fraudDetectionZoneGetSettings({required FraudIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/fraud_detection/settings',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon32.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update Fraud Detection Settings
///
/// Update Fraud Detection settings for a zone.
/// 
/// Notes on `username_expressions` behavior:
/// - If omitted or set to null, expressions are not modified.
/// - If provided as an empty array `[]`, all expressions will be cleared.
/// 
///
/// `PUT /zones/{zone_id}/fraud_detection/settings`
Future<ApiResult<ResponseCommon32, Never>> fraudDetectionZoneUpdateSettings({required FraudIdentifier zoneId, required FraudFraudSettings body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/fraud_detection/settings',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon32.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
