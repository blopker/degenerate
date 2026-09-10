// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposRedeliverWebhookDeliveryError {const ReposRedeliverWebhookDeliveryError();

/// Decodes the payload for its declared status and content type.
static ReposRedeliverWebhookDeliveryError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return ReposRedeliverWebhookDeliveryError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/scim+json')) {
final json = jsonDecode(response.body);
return ReposRedeliverWebhookDeliveryError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>));
}
final json = jsonDecode(response.body);
return ReposRedeliverWebhookDeliveryError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));

case 422:
final json = jsonDecode(response.body);
return ReposRedeliverWebhookDeliveryError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return ReposRedeliverWebhookDeliveryErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class ReposRedeliverWebhookDeliveryError400ApplicationJson extends ReposRedeliverWebhookDeliveryError {const ReposRedeliverWebhookDeliveryError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class ReposRedeliverWebhookDeliveryError400ApplicationScimJson extends ReposRedeliverWebhookDeliveryError {const ReposRedeliverWebhookDeliveryError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 422 (application/json).
final class ReposRedeliverWebhookDeliveryError422 extends ReposRedeliverWebhookDeliveryError {const ReposRedeliverWebhookDeliveryError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposRedeliverWebhookDeliveryErrorUnknown extends ReposRedeliverWebhookDeliveryError {const ReposRedeliverWebhookDeliveryErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
