// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/identifier.dart';import '../models/request2.dart';import '../models/subscription_response.dart';import '../models/zone_subscription_create_zone_subscription_response4xx.dart';import '../models/zone_subscription_update_zone_subscription_response4xx.dart';import '../models/zone_subscription_zone_subscription_details_response4xx.dart';/// ZoneSubscriptionApi operations.
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
Future<ApiResult<SubscriptionResponse, ZoneSubscriptionZoneSubscriptionDetailsResponse4xx>> zoneSubscriptionDetails({required Identifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/subscription',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return SubscriptionResponse.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZoneSubscriptionZoneSubscriptionDetailsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Create Zone Subscription
///
/// Create a zone subscription, either plan or add-ons.
///
/// `POST /zones/{zone_id}/subscription`
Future<ApiResult<SubscriptionResponse, ZoneSubscriptionCreateZoneSubscriptionResponse4xx>> zoneSubscriptionCreateZoneSubscription({required Identifier zoneId, required Request2 body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/subscription',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return SubscriptionResponse.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZoneSubscriptionCreateZoneSubscriptionResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update Zone Subscription
///
/// Updates zone subscriptions, either plan or add-ons.
///
/// `PUT /zones/{zone_id}/subscription`
Future<ApiResult<SubscriptionResponse, ZoneSubscriptionUpdateZoneSubscriptionResponse4xx>> zoneSubscriptionUpdateZoneSubscription({required Identifier zoneId, required Request2 body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/subscription',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return SubscriptionResponse.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZoneSubscriptionUpdateZoneSubscriptionResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
