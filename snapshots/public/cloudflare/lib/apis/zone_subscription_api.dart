// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/identifier.dart';import '../models/subscription2.dart';import '../models/zone_subscription_response_single.dart';/// ZoneSubscriptionApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZoneSubscriptionApi with ApiExecutor {const ZoneSubscriptionApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Zone Subscription Details
///
/// Lists zone subscription details.
///
/// `GET /zones/{zone_id}/subscription`
Future<ApiResult<ZoneSubscriptionResponseSingle, Never>> zoneSubscriptionDetails({required Identifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/subscription',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZoneSubscriptionResponseSingle.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create Zone Subscription
///
/// Create a zone subscription, either plan or add-ons.
///
/// `POST /zones/{zone_id}/subscription`
Future<ApiResult<ZoneSubscriptionResponseSingle, Never>> zoneSubscriptionCreateZoneSubscription({required Identifier zoneId, required Subscription2 body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/subscription',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZoneSubscriptionResponseSingle.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update Zone Subscription
///
/// Updates zone subscriptions, either plan or add-ons.
///
/// `PUT /zones/{zone_id}/subscription`
Future<ApiResult<ZoneSubscriptionResponseSingle, Never>> zoneSubscriptionUpdateZoneSubscription({required Identifier zoneId, required Subscription2 body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/subscription',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZoneSubscriptionResponseSingle.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
