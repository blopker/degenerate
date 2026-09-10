// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_error_response.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GetWebhookError {const GetWebhookError();

/// Decodes the payload for its declared status and content type.
static GetWebhookError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  GetWebhookError400(RealtimekitErrorResponse.fromJson(json as Map<String, dynamic>));case 401:
return  const GetWebhookError401();default:
return  GetWebhookErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class GetWebhookError400 extends GetWebhookError {const GetWebhookError400(this.data);

/// The decoded response payload.
final RealtimekitErrorResponse data;

}
/// Response for 401.
final class GetWebhookError401 extends GetWebhookError {const GetWebhookError401();

}
/// An undeclared status. The complete response is retained for manual handling.
final class GetWebhookErrorUnknown extends GetWebhookError {const GetWebhookErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
