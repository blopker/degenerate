// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/add_webhook_error.dart';import '../models/delete_webhook_error.dart';import '../models/edit_webhook_error.dart';import '../models/get_webhook_error.dart';import '../models/realtimekit_account_identifier.dart';import '../models/realtimekit_app_id.dart';import '../models/realtimekit_patch_webhook_request.dart';import '../models/realtimekit_webhook_request.dart';import '../models/realtimekit_webhook_success_response.dart';import '../models/realtimekit_webhooks_list_success_response.dart';import '../models/replace_webhook_error.dart';/// WebhooksApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class WebhooksApi with ApiExecutor {const WebhooksApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Fetch all webhooks details
///
/// Returns details of all webhooks for an App.
///
/// `GET /accounts/{account_id}/realtime/kit/{app_id}/webhooks`
Future<ApiResult<RealtimekitWebhooksListSuccessResponse, Never>> getAllWebhooks({required RealtimekitAccountIdentifier accountId, required RealtimekitAppId appId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/realtime/kit/${Uri.encodeComponent(appId.toString())}/webhooks',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body);
return  RealtimekitWebhooksListSuccessResponse.fromJson(json as Map<String, dynamic>);}, );}
/// Add a webhook
///
/// Adds a new webhook to an App.
///
/// `POST /accounts/{account_id}/realtime/kit/{app_id}/webhooks`
Future<ApiResult<RealtimekitWebhookSuccessResponse, AddWebhookError>> addWebhook({required RealtimekitAccountIdentifier accountId, required RealtimekitAppId appId, required RealtimekitWebhookRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/realtime/kit/${Uri.encodeComponent(appId.toString())}/webhooks',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body);
return  RealtimekitWebhookSuccessResponse.fromJson(json as Map<String, dynamic>);}, onError: AddWebhookError.parse, );}
/// Fetch details of a webhook
///
/// Returns webhook details for the given webhook ID.
///
/// `GET /accounts/{account_id}/realtime/kit/{app_id}/webhooks/{webhook_id}`
Future<ApiResult<RealtimekitWebhookSuccessResponse, GetWebhookError>> getWebhook({required RealtimekitAccountIdentifier accountId, required RealtimekitAppId appId, required String webhookId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/realtime/kit/${Uri.encodeComponent(appId.toString())}/webhooks/${Uri.encodeComponent(webhookId)}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body);
return  RealtimekitWebhookSuccessResponse.fromJson(json as Map<String, dynamic>);}, onError: GetWebhookError.parse, );}
/// Replace a webhook
///
/// Replace all details for the given webhook ID.
///
/// `PUT /accounts/{account_id}/realtime/kit/{app_id}/webhooks/{webhook_id}`
Future<ApiResult<RealtimekitWebhookSuccessResponse, ReplaceWebhookError>> replaceWebhook({required RealtimekitAccountIdentifier accountId, required RealtimekitAppId appId, required String webhookId, required RealtimekitWebhookRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/realtime/kit/${Uri.encodeComponent(appId.toString())}/webhooks/${Uri.encodeComponent(webhookId)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body);
return  RealtimekitWebhookSuccessResponse.fromJson(json as Map<String, dynamic>);}, onError: ReplaceWebhookError.parse, );}
/// Edit a webhook
///
/// Edits the webhook details for the given webhook ID.
///
/// `PATCH /accounts/{account_id}/realtime/kit/{app_id}/webhooks/{webhook_id}`
Future<ApiResult<RealtimekitWebhookSuccessResponse, EditWebhookError>> editWebhook({required RealtimekitAccountIdentifier accountId, required RealtimekitAppId appId, required String webhookId, required RealtimekitPatchWebhookRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/realtime/kit/${Uri.encodeComponent(appId.toString())}/webhooks/${Uri.encodeComponent(webhookId)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body);
return  RealtimekitWebhookSuccessResponse.fromJson(json as Map<String, dynamic>);}, onError: EditWebhookError.parse, );}
/// Delete a webhook
///
/// Removes a webhook for the given webhook ID.
///
/// `DELETE /accounts/{account_id}/realtime/kit/{app_id}/webhooks/{webhook_id}`
Future<ApiResult<RealtimekitWebhookSuccessResponse, DeleteWebhookError>> deleteWebhook({required RealtimekitAccountIdentifier accountId, required RealtimekitAppId appId, required String webhookId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/realtime/kit/${Uri.encodeComponent(appId.toString())}/webhooks/${Uri.encodeComponent(webhookId)}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body);
return  RealtimekitWebhookSuccessResponse.fromJson(json as Map<String, dynamic>);}, onError: DeleteWebhookError.parse, );}
}
