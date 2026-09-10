// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/fraud_detection_zone_get_settings_response4xx.dart';import '../models/fraud_detection_zone_update_settings_response4xx.dart';import '../models/fraud_fraud_settings.dart';import '../models/fraud_identifier.dart';/// FraudDetectionApi operations.
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
Future<ApiResult<FraudFraudSettings?, FraudDetectionZoneGetSettingsResponse4xx>> fraudDetectionZoneGetSettings({required FraudIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/fraud_detection/settings',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? FraudFraudSettings.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return FraudDetectionZoneGetSettingsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

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
Future<ApiResult<FraudFraudSettings?, FraudDetectionZoneUpdateSettingsResponse4xx>> fraudDetectionZoneUpdateSettings({required FraudIdentifier zoneId, required FraudFraudSettings body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/fraud_detection/settings',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? FraudFraudSettings.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return FraudDetectionZoneUpdateSettingsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
