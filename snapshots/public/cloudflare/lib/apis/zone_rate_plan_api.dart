// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/identifier.dart';import '../models/plan_response_collection.dart';import '../models/zone_rate_plan_available_plan_details_response.dart';import '../models/zone_rate_plan_list_available_plans_response.dart';/// ZoneRatePlanApi operations.
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
Future<ApiResult<ZoneRatePlanListAvailablePlansResponse, Never>> zoneRatePlanListAvailablePlans({required Identifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/available_plans',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZoneRatePlanListAvailablePlansResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Available Plan Details
///
/// Details of the available plan that the zone can subscribe to.
///
/// `GET /zones/{zone_id}/available_plans/{plan_identifier}`
Future<ApiResult<ZoneRatePlanAvailablePlanDetailsResponse, Never>> zoneRatePlanAvailablePlanDetails({required Identifier planIdentifier, required Identifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/available_plans/${Uri.encodeComponent(planIdentifier.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZoneRatePlanAvailablePlanDetailsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List Available Rate Plans
///
/// Lists all rate plans the zone can subscribe to.
///
/// `GET /zones/{zone_id}/available_rate_plans`
Future<ApiResult<PlanResponseCollection, Never>> zoneRatePlanListAvailableRatePlans({required Identifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/available_rate_plans',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PlanResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
