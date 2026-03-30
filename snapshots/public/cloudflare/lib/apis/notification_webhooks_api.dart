// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/aaa_account_id.dart';import '../models/aaa_id_response_result.dart';import '../models/aaa_webhook_id.dart';import '../models/aaa_webhooks.dart';import '../models/notification_webhooks_create_a_webhook_request.dart';import '../models/notification_webhooks_update_a_webhook_request.dart';import '../models/response_common2.dart';/// NotificationWebhooksApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class NotificationWebhooksApi with ApiExecutor {const NotificationWebhooksApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List webhooks
///
/// Gets a list of all configured webhook destinations.
///
/// `GET /accounts/{account_id}/alerting/v3/destinations/webhooks`
Future<ApiResult<List<AaaWebhooks>?, Never>> notificationWebhooksListWebhooks({required AaaAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/alerting/v3/destinations/webhooks',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => AaaWebhooks.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create a webhook
///
/// Creates a new webhook destination.
///
/// `POST /accounts/{account_id}/alerting/v3/destinations/webhooks`
Future<ApiResult<AaaIdResponseResult?, Never>> notificationWebhooksCreateAWebhook({required AaaAccountId accountId, required NotificationWebhooksCreateAWebhookRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/alerting/v3/destinations/webhooks',
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
/// Get a webhook
///
/// Get details for a single webhooks destination.
///
/// `GET /accounts/{account_id}/alerting/v3/destinations/webhooks/{webhook_id}`
Future<ApiResult<AaaWebhooks?, Never>> notificationWebhooksGetAWebhook({required AaaAccountId accountId, required AaaWebhookId webhookId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/alerting/v3/destinations/webhooks/${Uri.encodeComponent(webhookId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AaaWebhooks.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update a webhook
///
/// Update a webhook destination.
///
/// `PUT /accounts/{account_id}/alerting/v3/destinations/webhooks/{webhook_id}`
Future<ApiResult<AaaIdResponseResult?, Never>> notificationWebhooksUpdateAWebhook({required AaaWebhookId webhookId, required AaaAccountId accountId, required NotificationWebhooksUpdateAWebhookRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/alerting/v3/destinations/webhooks/${Uri.encodeComponent(webhookId.toString())}',
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
/// Delete a webhook
///
/// Delete a configured webhook destination.
///
/// `DELETE /accounts/{account_id}/alerting/v3/destinations/webhooks/{webhook_id}`
Future<ApiResult<ResponseCommon2, Never>> notificationWebhooksDeleteAWebhook({required AaaWebhookId webhookId, required AaaAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/alerting/v3/destinations/webhooks/${Uri.encodeComponent(webhookId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
