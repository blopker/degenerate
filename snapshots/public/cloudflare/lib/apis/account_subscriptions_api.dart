// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/account_subscriptions_delete_subscription_response_result.dart';import '../models/identifier.dart';import '../models/schemas_identifier.dart';import '../models/subscription2.dart';/// AccountSubscriptionsApi operations.
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
Future<ApiResult<List<Subscription2>?, Never>> accountSubscriptionsListSubscriptions({required Identifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/subscriptions',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => Subscription2.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create Subscription
///
/// Creates an account subscription.
///
/// `POST /accounts/{account_id}/subscriptions`
Future<ApiResult<Subscription2?, Never>> accountSubscriptionsCreateSubscription({required Identifier accountId, required Subscription2 body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? Subscription2.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update Subscription
///
/// Updates an account subscription.
///
/// `PUT /accounts/{account_id}/subscriptions/{subscription_identifier}`
Future<ApiResult<Subscription2?, Never>> accountSubscriptionsUpdateSubscription({required SchemasIdentifier subscriptionIdentifier, required Identifier accountId, required Subscription2 body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? Subscription2.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete Subscription
///
/// Deletes an account's subscription.
///
/// `DELETE /accounts/{account_id}/subscriptions/{subscription_identifier}`
Future<ApiResult<AccountSubscriptionsDeleteSubscriptionResponseResult?, Never>> accountSubscriptionsDeleteSubscription({required SchemasIdentifier subscriptionIdentifier, required Identifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/subscriptions/${Uri.encodeComponent(subscriptionIdentifier.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccountSubscriptionsDeleteSubscriptionResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
