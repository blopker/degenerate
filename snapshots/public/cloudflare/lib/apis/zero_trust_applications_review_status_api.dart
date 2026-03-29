// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/response_common82.dart';import '../models/zero_trust_applications_review_status_update_request.dart';import '../models/zero_trust_gateway_components_schemas_identifier.dart';/// ZeroTrustApplicationsReviewStatusApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZeroTrustApplicationsReviewStatusApi with ApiExecutor {const ZeroTrustApplicationsReviewStatusApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List applications review statuses
///
/// Retrieve the statuses of your applications.
///
/// `GET /accounts/{account_id}/gateway/apps/review_status`
Future<ApiResult<ResponseCommon82, Never>> zeroTrustApplicationsReviewStatusList({required ZeroTrustGatewayComponentsSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/apps/review_status',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon82.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update applications review statuses
///
/// Update the statuses of your applications.
///
/// `PUT /accounts/{account_id}/gateway/apps/review_status`
Future<ApiResult<ResponseCommon82, Never>> zeroTrustApplicationsReviewStatusUpdate({required ZeroTrustGatewayComponentsSchemasIdentifier accountId, required ZeroTrustApplicationsReviewStatusUpdateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/apps/review_status',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon82.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
