// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/response_common66.dart';import '../models/stream_account_identifier.dart';import '../models/stream_webhook_request.dart';/// StreamWebhookApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class StreamWebhookApi with ApiExecutor {const StreamWebhookApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// View webhooks
///
/// Retrieves a list of webhooks.
///
/// `GET /accounts/{account_id}/stream/webhook`
Future<ApiResult<ResponseCommon66, Never>> streamWebhookViewWebhooks({required StreamAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/webhook',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon66.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create webhooks
///
/// Creates a webhook notification.
///
/// `PUT /accounts/{account_id}/stream/webhook`
Future<ApiResult<ResponseCommon66, Never>> streamWebhookCreateWebhooks({required StreamAccountIdentifier accountId, required StreamWebhookRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/webhook',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon66.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete webhooks
///
/// Deletes a webhook.
///
/// `DELETE /accounts/{account_id}/stream/webhook`
Future<ApiResult<ResponseCommon66, Never>> streamWebhookDeleteWebhooks({required StreamAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/webhook',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon66.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
