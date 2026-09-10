// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_error_response.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class DeleteWebhookError {const DeleteWebhookError();

/// Decodes the payload for its declared status and content type.
static DeleteWebhookError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  DeleteWebhookError400(RealtimekitErrorResponse.fromJson(json as Map<String, dynamic>));case 401:
return  const DeleteWebhookError401();default:
return  DeleteWebhookErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class DeleteWebhookError400 extends DeleteWebhookError {const DeleteWebhookError400(this.data);

/// The decoded response payload.
final RealtimekitErrorResponse data;

}
/// Response for 401.
final class DeleteWebhookError401 extends DeleteWebhookError {const DeleteWebhookError401();

}
/// An undeclared status. The complete response is retained for manual handling.
final class DeleteWebhookErrorUnknown extends DeleteWebhookError {const DeleteWebhookErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
