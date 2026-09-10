// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class OrgsListWebhookDeliveriesError {const OrgsListWebhookDeliveriesError();

/// Decodes the payload for its declared status and content type.
static OrgsListWebhookDeliveriesError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json', )) {
final json = jsonDecode(response.body);
return  OrgsListWebhookDeliveriesError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); } else if (responseMediaTypeMatches(contentType, 'application/scim+json', )) {
final json = jsonDecode(response.body);
return  OrgsListWebhookDeliveriesError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>)); } else {
final json = jsonDecode(response.body);
return  OrgsListWebhookDeliveriesError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); }case 422:
final json = jsonDecode(response.body);
return  OrgsListWebhookDeliveriesError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  OrgsListWebhookDeliveriesErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class OrgsListWebhookDeliveriesError400ApplicationJson extends OrgsListWebhookDeliveriesError {const OrgsListWebhookDeliveriesError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class OrgsListWebhookDeliveriesError400ApplicationScimJson extends OrgsListWebhookDeliveriesError {const OrgsListWebhookDeliveriesError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 422 (application/json).
final class OrgsListWebhookDeliveriesError422 extends OrgsListWebhookDeliveriesError {const OrgsListWebhookDeliveriesError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class OrgsListWebhookDeliveriesErrorUnknown extends OrgsListWebhookDeliveriesError {const OrgsListWebhookDeliveriesErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
