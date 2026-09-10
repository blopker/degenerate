// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/available_rate_plan.dart';import '../models/identifier.dart';import '../models/rate_plan.dart';import '../models/response_common_failure10.dart';import '../models/zone_rate_plan_list_available_rate_plans_response4xx.dart';/// ZoneRatePlanApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZoneRatePlanApi with ApiExecutor {const ZoneRatePlanApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Available Plans
///
/// Lists available plans the zone can subscribe to.
///
/// `GET /zones/{zone_id}/available_plans`
Future<ApiResult<List<AvailableRatePlan>, ResponseCommonFailure10>> zoneRatePlanListAvailablePlans({required Identifier zoneId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/available_plans',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  (json['result'] as List<dynamic>).map((e) => AvailableRatePlan.fromJson(e as Map<String, dynamic>)).toList();}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure10.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Available Plan Details
///
/// Details of the available plan that the zone can subscribe to.
///
/// `GET /zones/{zone_id}/available_plans/{plan_identifier}`
Future<ApiResult<AvailableRatePlan, ResponseCommonFailure10>> zoneRatePlanAvailablePlanDetails({required Identifier planIdentifier, required Identifier zoneId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/available_plans/${Uri.encodeComponent(planIdentifier.toString())}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  AvailableRatePlan.fromJson(json['result'] as Map<String, dynamic>);}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure10.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// List Available Rate Plans
///
/// Lists all rate plans the zone can subscribe to.
///
/// `GET /zones/{zone_id}/available_rate_plans`
Future<ApiResult<List<RatePlan>, ZoneRatePlanListAvailableRatePlansResponse4xx>> zoneRatePlanListAvailableRatePlans({required Identifier zoneId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/available_rate_plans',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  (json['result'] as List<dynamic>).map((e) => RatePlan.fromJson(e as Map<String, dynamic>)).toList();}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ZoneRatePlanListAvailableRatePlansResponse4xx.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
}
