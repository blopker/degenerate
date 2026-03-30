// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/aaa_account_id.dart';import '../models/aaa_components_schemas_response_collection.dart';import '../models/aaa_id_response.dart';import '../models/aaa_integration_token.dart';import '../models/aaa_sensitive_id_response.dart';import '../models/response_common2.dart';/// NotificationDestinationsWithPagerDutyApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class NotificationDestinationsWithPagerDutyApi with ApiExecutor {const NotificationDestinationsWithPagerDutyApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List PagerDuty services
///
/// Get a list of all configured PagerDuty services.
///
/// `GET /accounts/{account_id}/alerting/v3/destinations/pagerduty`
Future<ApiResult<AaaComponentsSchemasResponseCollection, Never>> notificationDestinationsWithPagerDutyListPagerDutyServices({required AaaAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/alerting/v3/destinations/pagerduty',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AaaComponentsSchemasResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete PagerDuty Services
///
/// Deletes all the PagerDuty Services connected to the account.
///
/// `DELETE /accounts/{account_id}/alerting/v3/destinations/pagerduty`
Future<ApiResult<ResponseCommon2, Never>> notificationDestinationsWithPagerDutyDeletePagerDutyServices({required AaaAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/alerting/v3/destinations/pagerduty',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create PagerDuty integration token
///
/// Creates a new token for integrating with PagerDuty.
///
/// `POST /accounts/{account_id}/alerting/v3/destinations/pagerduty/connect`
Future<ApiResult<AaaSensitiveIdResponse, Never>> notificationDestinationsWithPagerDutyConnectPagerDuty({required AaaAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/alerting/v3/destinations/pagerduty/connect',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AaaSensitiveIdResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Connect PagerDuty
///
/// Links PagerDuty with the account using the integration token.
///
/// `GET /accounts/{account_id}/alerting/v3/destinations/pagerduty/connect/{token_id}`
Future<ApiResult<AaaIdResponse, Never>> notificationDestinationsWithPagerDutyConnectPagerDutyToken({required AaaAccountId accountId, required AaaIntegrationToken tokenId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/alerting/v3/destinations/pagerduty/connect/${Uri.encodeComponent(tokenId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AaaIdResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
