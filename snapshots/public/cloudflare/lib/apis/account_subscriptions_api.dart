// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/identifier.dart';import '../models/response_common8.dart';import '../models/schemas_identifier.dart';import '../models/subscription2.dart';/// AccountSubscriptionsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AccountSubscriptionsApi with ApiExecutor {const AccountSubscriptionsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Subscriptions
///
/// Lists all of an account's subscriptions.
///
/// `GET /accounts/{account_id}/subscriptions`
Future<ApiResult<ResponseCommon8, Never>> accountSubscriptionsListSubscriptions({required Identifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/subscriptions',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon8.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create Subscription
///
/// Creates an account subscription.
///
/// `POST /accounts/{account_id}/subscriptions`
Future<ApiResult<ResponseCommon8, Never>> accountSubscriptionsCreateSubscription({required Identifier accountId, required Subscription2 body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/subscriptions',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon8.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update Subscription
///
/// Updates an account subscription.
///
/// `PUT /accounts/{account_id}/subscriptions/{subscription_identifier}`
Future<ApiResult<ResponseCommon8, Never>> accountSubscriptionsUpdateSubscription({required SchemasIdentifier subscriptionIdentifier, required Identifier accountId, required Subscription2 body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/subscriptions/${Uri.encodeComponent(subscriptionIdentifier.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon8.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Subscription
///
/// Deletes an account's subscription.
///
/// `DELETE /accounts/{account_id}/subscriptions/{subscription_identifier}`
Future<ApiResult<ResponseCommon8, Never>> accountSubscriptionsDeleteSubscription({required SchemasIdentifier subscriptionIdentifier, required Identifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/subscriptions/${Uri.encodeComponent(subscriptionIdentifier.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon8.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
