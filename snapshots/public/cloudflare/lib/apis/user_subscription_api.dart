// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/schemas_identifier.dart';import '../models/subscription2.dart';import '../models/user_subscription_delete_user_subscription_response.dart';/// UserSubscriptionApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class UserSubscriptionApi with ApiExecutor {const UserSubscriptionApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get User Subscriptions
///
/// Lists all of a user's subscriptions.
///
/// `GET /user/subscriptions`
Future<ApiResult<List<Subscription2>?, Never>> userSubscriptionGetUserSubscriptions({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/user/subscriptions',
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
/// Update User Subscription
///
/// Updates a user's subscriptions.
///
/// `PUT /user/subscriptions/{identifier}`
Future<ApiResult<Map<String, dynamic>?, Never>> userSubscriptionUpdateUserSubscription({required SchemasIdentifier identifier, required Subscription2 body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/user/subscriptions/${Uri.encodeComponent(identifier.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>?;
  },
);
 } 
/// Delete User Subscription
///
/// Deletes a user's subscription.
///
/// `DELETE /user/subscriptions/{identifier}`
Future<ApiResult<UserSubscriptionDeleteUserSubscriptionResponse, Never>> userSubscriptionDeleteUserSubscription({required SchemasIdentifier identifier, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/user/subscriptions/${Uri.encodeComponent(identifier.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return UserSubscriptionDeleteUserSubscriptionResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
