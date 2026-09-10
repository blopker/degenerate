// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AppsGetWebhookDeliveryError {const AppsGetWebhookDeliveryError();

/// Decodes the payload for its declared status and content type.
static AppsGetWebhookDeliveryError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return AppsGetWebhookDeliveryError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/scim+json')) {
final json = jsonDecode(response.body);
return AppsGetWebhookDeliveryError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>));
}
final json = jsonDecode(response.body);
return AppsGetWebhookDeliveryError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));

case 422:
final json = jsonDecode(response.body);
return AppsGetWebhookDeliveryError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return AppsGetWebhookDeliveryErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class AppsGetWebhookDeliveryError400ApplicationJson extends AppsGetWebhookDeliveryError {const AppsGetWebhookDeliveryError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class AppsGetWebhookDeliveryError400ApplicationScimJson extends AppsGetWebhookDeliveryError {const AppsGetWebhookDeliveryError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 422 (application/json).
final class AppsGetWebhookDeliveryError422 extends AppsGetWebhookDeliveryError {const AppsGetWebhookDeliveryError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class AppsGetWebhookDeliveryErrorUnknown extends AppsGetWebhookDeliveryError {const AppsGetWebhookDeliveryErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
