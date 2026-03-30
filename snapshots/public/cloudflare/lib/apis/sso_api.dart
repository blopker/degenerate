// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/iam_common_components_schemas_identifier.dart';import '../models/iam_sso_connector.dart';import '../models/init_new_sso_connector_request.dart';import '../models/response_common35.dart';import '../models/response_single_id4_result.dart';import '../models/update_sso_connector_state_request.dart';/// SsoApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class SsoApi with ApiExecutor {const SsoApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get all SSO connectors
///
/// `GET /accounts/{account_id}/sso_connectors`
Future<ApiResult<List<IamSsoConnector>?, Never>> getAllSsoConnectors({required IamCommonComponentsSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/sso_connectors',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => IamSsoConnector.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Initialize new SSO connector
///
/// `POST /accounts/{account_id}/sso_connectors`
Future<ApiResult<IamSsoConnector?, Never>> initNewSsoConnector({required IamCommonComponentsSchemasIdentifier accountId, InitNewSsoConnectorRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/sso_connectors',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? IamSsoConnector.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get single SSO connector
///
/// `GET /accounts/{account_id}/sso_connectors/{sso_connector_id}`
Future<ApiResult<IamSsoConnector?, Never>> getSsoConnector({required IamCommonComponentsSchemasIdentifier accountId, required IamCommonComponentsSchemasIdentifier ssoConnectorId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/sso_connectors/${Uri.encodeComponent(ssoConnectorId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? IamSsoConnector.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update SSO connector state
///
/// `PATCH /accounts/{account_id}/sso_connectors/{sso_connector_id}`
Future<ApiResult<IamSsoConnector?, Never>> updateSsoConnectorState({required IamCommonComponentsSchemasIdentifier accountId, required IamCommonComponentsSchemasIdentifier ssoConnectorId, UpdateSsoConnectorStateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/sso_connectors/${Uri.encodeComponent(ssoConnectorId.toString())}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? IamSsoConnector.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete SSO connector
///
/// `DELETE /accounts/{account_id}/sso_connectors/{sso_connector_id}`
Future<ApiResult<ResponseSingleId4Result?, Never>> deleteSsoConnector({required IamCommonComponentsSchemasIdentifier accountId, required IamCommonComponentsSchemasIdentifier ssoConnectorId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/sso_connectors/${Uri.encodeComponent(ssoConnectorId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ResponseSingleId4Result.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Begin SSO connector verification
///
/// `POST /accounts/{account_id}/sso_connectors/{sso_connector_id}/begin_verification`
Future<ApiResult<ResponseCommon35, Never>> beginSsoConnectorVerification({required IamCommonComponentsSchemasIdentifier accountId, required IamCommonComponentsSchemasIdentifier ssoConnectorId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/sso_connectors/${Uri.encodeComponent(ssoConnectorId.toString())}/begin_verification',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon35.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
