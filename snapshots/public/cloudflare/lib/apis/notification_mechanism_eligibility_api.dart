// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/aaa_account_id.dart';import '../models/aaa_schemas_response_collection.dart';/// NotificationMechanismEligibilityApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class NotificationMechanismEligibilityApi with ApiExecutor {const NotificationMechanismEligibilityApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get delivery mechanism eligibility
///
/// Get a list of all delivery mechanism types for which an account is eligible.
///
/// `GET /accounts/{account_id}/alerting/v3/destinations/eligible`
Future<ApiResult<AaaSchemasResponseCollection, Never>> notificationMechanismEligibilityGetDeliveryMechanismEligibility({required AaaAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/alerting/v3/destinations/eligible',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AaaSchemasResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
