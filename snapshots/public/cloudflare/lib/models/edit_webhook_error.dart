// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_error_response.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class EditWebhookError {const EditWebhookError();

/// Decodes the payload for its declared status and content type.
static EditWebhookError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return EditWebhookError400(RealtimekitErrorResponse.fromJson(json as Map<String, dynamic>));
case 401:
return const EditWebhookError401();
default:
return EditWebhookErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class EditWebhookError400 extends EditWebhookError {const EditWebhookError400(this.data);

/// The decoded response payload.
final RealtimekitErrorResponse data;

}
/// Response for 401.
final class EditWebhookError401 extends EditWebhookError {const EditWebhookError401();

}
/// An undeclared status. The complete response is retained for manual handling.
final class EditWebhookErrorUnknown extends EditWebhookError {const EditWebhookErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
