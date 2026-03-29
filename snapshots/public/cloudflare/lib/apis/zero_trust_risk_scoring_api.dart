// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dlp_update_behaviors.dart';import '../models/response_common20.dart';/// ZeroTrustRiskScoringApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZeroTrustRiskScoringApi with ApiExecutor {const ZeroTrustRiskScoringApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get risk event/score information for a specific user
///
/// `GET /accounts/{account_id}/zt_risk_scoring/{user_id}`
Future<ApiResult<ResponseCommon20, Never>> dlpRiskScoreSummaryGetForUser({required String accountId, required String userId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/zt_risk_scoring/${Uri.encodeComponent(userId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon20.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Clear the risk score for a particular user
///
/// `POST /accounts/{account_id}/zt_risk_scoring/{user_id}/reset`
Future<ApiResult<ResponseCommon20, Never>> dlpRiskScoreResetPost({required String accountId, required String userId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/zt_risk_scoring/${Uri.encodeComponent(userId)}/reset',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon20.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get all behaviors and associated configuration
///
/// `GET /accounts/{account_id}/zt_risk_scoring/behaviors`
Future<ApiResult<ResponseCommon20, Never>> dlpRiskScoreBehaviorsGet({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/zt_risk_scoring/behaviors',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon20.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update configuration for risk behaviors
///
/// `PUT /accounts/{account_id}/zt_risk_scoring/behaviors`
Future<ApiResult<ResponseCommon20, Never>> dlpRiskScoreBehaviorsPut({required String accountId, required DlpUpdateBehaviors body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/zt_risk_scoring/behaviors',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon20.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get risk score info for all users in the account
///
/// `GET /accounts/{account_id}/zt_risk_scoring/summary`
Future<ApiResult<ResponseCommon20, Never>> dlpRiskScoreSummaryGet({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/zt_risk_scoring/summary',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon20.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
