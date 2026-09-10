// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposCreateWebhookError {const ReposCreateWebhookError();

/// Decodes the payload for its declared status and content type.
static ReposCreateWebhookError parse(ApiResponse response) { switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return ReposCreateWebhookError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return ReposCreateWebhookError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return ReposCreateWebhookError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return ReposCreateWebhookErrorUnknown(response);
}
 } 
 }
/// Response for 403 (application/json).
final class ReposCreateWebhookError403 extends ReposCreateWebhookError {const ReposCreateWebhookError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class ReposCreateWebhookError404 extends ReposCreateWebhookError {const ReposCreateWebhookError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class ReposCreateWebhookError422 extends ReposCreateWebhookError {const ReposCreateWebhookError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ReposCreateWebhookErrorUnknown extends ReposCreateWebhookError {const ReposCreateWebhookErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
