// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dlp_create_integration_body.dart';import '../models/dlp_update_integration_body.dart';import '../models/dlp_zt_risk_score_integration_create_response.dart';import '../models/dlp_zt_risk_score_integration_delete_response.dart';import '../models/dlp_zt_risk_score_integration_get_by_reference_id_response.dart';import '../models/dlp_zt_risk_score_integration_get_response.dart';import '../models/dlp_zt_risk_score_integration_list_response.dart';import '../models/dlp_zt_risk_score_integration_update_response.dart';/// ZeroTrustRiskScoringIntegrationsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZeroTrustRiskScoringIntegrationsApi with ApiExecutor {const ZeroTrustRiskScoringIntegrationsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List all risk score integrations for the account.
///
/// `GET /accounts/{account_id}/zt_risk_scoring/integrations`
Future<ApiResult<DlpZtRiskScoreIntegrationListResponse, Never>> dlpZtRiskScoreIntegrationList({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/zt_risk_scoring/integrations',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpZtRiskScoreIntegrationListResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create new risk score integration.
///
/// `POST /accounts/{account_id}/zt_risk_scoring/integrations`
Future<ApiResult<DlpZtRiskScoreIntegrationCreateResponse, Never>> dlpZtRiskScoreIntegrationCreate({required String accountId, required DlpCreateIntegrationBody body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/zt_risk_scoring/integrations',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpZtRiskScoreIntegrationCreateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get risk score integration by id.
///
/// `GET /accounts/{account_id}/zt_risk_scoring/integrations/{integration_id}`
Future<ApiResult<DlpZtRiskScoreIntegrationGetResponse, Never>> dlpZtRiskScoreIntegrationGet({required String accountId, required String integrationId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/zt_risk_scoring/integrations/${Uri.encodeComponent(integrationId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpZtRiskScoreIntegrationGetResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a risk score integration.
///
/// Overwrite the reference_id, tenant_url, and active values with the ones provided.
///
/// `PUT /accounts/{account_id}/zt_risk_scoring/integrations/{integration_id}`
Future<ApiResult<DlpZtRiskScoreIntegrationUpdateResponse, Never>> dlpZtRiskScoreIntegrationUpdate({required String accountId, required String integrationId, required DlpUpdateIntegrationBody body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/zt_risk_scoring/integrations/${Uri.encodeComponent(integrationId)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpZtRiskScoreIntegrationUpdateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a risk score integration.
///
/// `DELETE /accounts/{account_id}/zt_risk_scoring/integrations/{integration_id}`
Future<ApiResult<DlpZtRiskScoreIntegrationDeleteResponse, Never>> dlpZtRiskScoreIntegrationDelete({required String accountId, required String integrationId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/zt_risk_scoring/integrations/${Uri.encodeComponent(integrationId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpZtRiskScoreIntegrationDeleteResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get risk score integration by reference id.
///
/// `GET /accounts/{account_id}/zt_risk_scoring/integrations/reference_id/{reference_id}`
Future<ApiResult<DlpZtRiskScoreIntegrationGetByReferenceIdResponse, Never>> dlpZtRiskScoreIntegrationGetByReferenceId({required String accountId, required String referenceId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/zt_risk_scoring/integrations/reference_id/${Uri.encodeComponent(referenceId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpZtRiskScoreIntegrationGetByReferenceIdResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
