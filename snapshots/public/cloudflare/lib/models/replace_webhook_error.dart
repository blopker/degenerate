// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_error_response.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReplaceWebhookError {const ReplaceWebhookError();

/// Decodes the payload for its declared status and content type.
static ReplaceWebhookError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return ReplaceWebhookError400(RealtimekitErrorResponse.fromJson(json as Map<String, dynamic>));
case 401:
return const ReplaceWebhookError401();
default:
return ReplaceWebhookErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class ReplaceWebhookError400 extends ReplaceWebhookError {const ReplaceWebhookError400(this.data);

/// The decoded response payload.
final RealtimekitErrorResponse data;

}
/// Response for 401.
final class ReplaceWebhookError401 extends ReplaceWebhookError {const ReplaceWebhookError401();

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReplaceWebhookErrorUnknown extends ReplaceWebhookError {const ReplaceWebhookErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
