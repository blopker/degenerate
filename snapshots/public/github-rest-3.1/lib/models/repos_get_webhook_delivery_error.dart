// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposGetWebhookDeliveryError {const ReposGetWebhookDeliveryError();

/// Decodes the payload for its declared status and content type.
static ReposGetWebhookDeliveryError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json', )) {
final json = jsonDecode(response.body);
return  ReposGetWebhookDeliveryError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); } else if (responseMediaTypeMatches(contentType, 'application/scim+json', )) {
final json = jsonDecode(response.body);
return  ReposGetWebhookDeliveryError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>)); } else {
final json = jsonDecode(response.body);
return  ReposGetWebhookDeliveryError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); }case 422:
final json = jsonDecode(response.body);
return  ReposGetWebhookDeliveryError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  ReposGetWebhookDeliveryErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class ReposGetWebhookDeliveryError400ApplicationJson extends ReposGetWebhookDeliveryError {const ReposGetWebhookDeliveryError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class ReposGetWebhookDeliveryError400ApplicationScimJson extends ReposGetWebhookDeliveryError {const ReposGetWebhookDeliveryError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 422 (application/json).
final class ReposGetWebhookDeliveryError422 extends ReposGetWebhookDeliveryError {const ReposGetWebhookDeliveryError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposGetWebhookDeliveryErrorUnknown extends ReposGetWebhookDeliveryError {const ReposGetWebhookDeliveryErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
