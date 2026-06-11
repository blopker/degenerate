// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/identifier.dart';import '../models/response_common8_result.dart';/// ZoneRatePlanApi operations.
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
Future<ApiResult<List<dynamic>?, Never>> zoneRatePlanListAvailablePlans({required Identifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/available_plans',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => e).toList();
  },
);
 } 
/// Available Plan Details
///
/// Details of the available plan that the zone can subscribe to.
///
/// `GET /zones/{zone_id}/available_plans/{plan_identifier}`
Future<ApiResult<ResponseCommon8Result, Never>> zoneRatePlanAvailablePlanDetails({required Identifier planIdentifier, required Identifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/available_plans/${Uri.encodeComponent(planIdentifier.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// List Available Rate Plans
///
/// Lists all rate plans the zone can subscribe to.
///
/// `GET /zones/{zone_id}/available_rate_plans`
Future<ApiResult<List<dynamic>?, Never>> zoneRatePlanListAvailableRatePlans({required Identifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/available_rate_plans',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => e).toList();
  },
);
 } 
 }
