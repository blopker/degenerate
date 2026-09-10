// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class OrgsRedeliverWebhookDeliveryError {const OrgsRedeliverWebhookDeliveryError();

/// Decodes the payload for its declared status and content type.
static OrgsRedeliverWebhookDeliveryError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return OrgsRedeliverWebhookDeliveryError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/scim+json')) {
final json = jsonDecode(response.body);
return OrgsRedeliverWebhookDeliveryError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>));
}
final json = jsonDecode(response.body);
return OrgsRedeliverWebhookDeliveryError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));

case 422:
final json = jsonDecode(response.body);
return OrgsRedeliverWebhookDeliveryError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return OrgsRedeliverWebhookDeliveryErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class OrgsRedeliverWebhookDeliveryError400ApplicationJson extends OrgsRedeliverWebhookDeliveryError {const OrgsRedeliverWebhookDeliveryError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 400 (application/scim+json).
final class OrgsRedeliverWebhookDeliveryError400ApplicationScimJson extends OrgsRedeliverWebhookDeliveryError {const OrgsRedeliverWebhookDeliveryError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

 }
/// Response for 422 (application/json).
final class OrgsRedeliverWebhookDeliveryError422 extends OrgsRedeliverWebhookDeliveryError {const OrgsRedeliverWebhookDeliveryError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class OrgsRedeliverWebhookDeliveryErrorUnknown extends OrgsRedeliverWebhookDeliveryError {const OrgsRedeliverWebhookDeliveryErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
