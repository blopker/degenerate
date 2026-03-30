// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/aaa_account_id.dart';import '../models/aaa_id_response_result.dart';import '../models/aaa_policies.dart';import '../models/aaa_policy_id.dart';import '../models/notification_policies_create_a_notification_policy_request.dart';import '../models/notification_policies_update_a_notification_policy_request.dart';import '../models/response_collection.dart';/// NotificationPoliciesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class NotificationPoliciesApi with ApiExecutor {const NotificationPoliciesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Notification policies
///
/// Get a list of all Notification policies.
///
/// `GET /accounts/{account_id}/alerting/v3/policies`
Future<ApiResult<List<AaaPolicies>?, Never>> notificationPoliciesListNotificationPolicies({required AaaAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/alerting/v3/policies',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => AaaPolicies.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create a Notification policy
///
/// Creates a new Notification policy.
///
/// `POST /accounts/{account_id}/alerting/v3/policies`
Future<ApiResult<AaaIdResponseResult?, Never>> notificationPoliciesCreateANotificationPolicy({required AaaAccountId accountId, required NotificationPoliciesCreateANotificationPolicyRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/alerting/v3/policies',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AaaIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get a Notification policy
///
/// Get details for a single policy.
///
/// `GET /accounts/{account_id}/alerting/v3/policies/{policy_id}`
Future<ApiResult<AaaPolicies?, Never>> notificationPoliciesGetANotificationPolicy({required AaaAccountId accountId, required AaaPolicyId policyId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/alerting/v3/policies/${Uri.encodeComponent(policyId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AaaPolicies.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update a Notification policy
///
/// Update a Notification policy.
///
/// `PUT /accounts/{account_id}/alerting/v3/policies/{policy_id}`
Future<ApiResult<AaaIdResponseResult?, Never>> notificationPoliciesUpdateANotificationPolicy({required AaaAccountId accountId, required AaaPolicyId policyId, required NotificationPoliciesUpdateANotificationPolicyRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/alerting/v3/policies/${Uri.encodeComponent(policyId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AaaIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete a Notification policy
///
/// Delete a Notification policy.
///
/// `DELETE /accounts/{account_id}/alerting/v3/policies/{policy_id}`
Future<ApiResult<ResponseCollection, Never>> notificationPoliciesDeleteANotificationPolicy({required AaaAccountId accountId, required AaaPolicyId policyId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/alerting/v3/policies/${Uri.encodeComponent(policyId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
