// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposUpdateWebhookError {const ReposUpdateWebhookError();

/// Decodes the payload for its declared status and content type.
static ReposUpdateWebhookError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return  ReposUpdateWebhookError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  ReposUpdateWebhookError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  ReposUpdateWebhookErrorUnknown(response); }}
}
/// Response for 404 (application/json).
final class ReposUpdateWebhookError404 extends ReposUpdateWebhookError {const ReposUpdateWebhookError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ReposUpdateWebhookError422 extends ReposUpdateWebhookError {const ReposUpdateWebhookError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposUpdateWebhookErrorUnknown extends ReposUpdateWebhookError {const ReposUpdateWebhookErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
