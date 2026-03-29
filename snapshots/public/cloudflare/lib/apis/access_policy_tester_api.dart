// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_identifier.dart';import '../models/access_policy_init_req.dart';import '../models/access_policy_test_id.dart';import '../models/access_policy_tests_get_a_user_page_status.dart';import '../models/response_common3.dart';import '../models/response_common_failure4.dart';/// AccessPolicyTesterApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AccessPolicyTesterApi with ApiExecutor {const AccessPolicyTesterApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Start Access policy test
///
/// Starts an Access policy test.
///
/// `POST /accounts/{account_id}/access/policy-tests`
Future<ApiResult<ResponseCommon3, ResponseCommonFailure4>> accessPolicyTests({required AccessIdentifier accountId, required AccessPolicyInitReq body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/policy-tests',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon3.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ResponseCommonFailure4.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get the current status of a given Access policy test
///
/// Fetches the current status of a given Access policy test.
///
/// `GET /accounts/{account_id}/access/policy-tests/{policy_test_id}`
Future<ApiResult<ResponseCommon3, ResponseCommonFailure4>> accessPolicyTestsGetAnUpdate({required AccessIdentifier accountId, required AccessPolicyTestId policyTestId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/policy-tests/${Uri.encodeComponent(policyTestId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon3.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ResponseCommonFailure4.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get an Access policy test users page
///
/// Fetches a single page of user results from an Access policy test.
///
/// `GET /accounts/{account_id}/access/policy-tests/{policy_test_id}/users`
Future<ApiResult<ResponseCommon3, ResponseCommonFailure4>> accessPolicyTestsGetAUserPage({required AccessIdentifier accountId, required AccessPolicyTestId policyTestId, int? page, int? perPage, AccessPolicyTestsGetAUserPageStatus? status, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (status != null) {
  queryParameters['status'] = status.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/policy-tests/${Uri.encodeComponent(policyTestId.toString())}/users',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon3.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ResponseCommonFailure4.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
