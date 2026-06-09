// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /orgs/{org}/hooks/{hook_id}/deliveries/{delivery_id}/attempts`.
sealed class OrgsRedeliverWebhookDeliveryError {const OrgsRedeliverWebhookDeliveryError();

/// Parse the variant matching the response status code.
factory OrgsRedeliverWebhookDeliveryError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => OrgsRedeliverWebhookDeliveryError400.parse(response),
  422 => OrgsRedeliverWebhookDeliveryError422.parse(response),
  _ => OrgsRedeliverWebhookDeliveryError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class OrgsRedeliverWebhookDeliveryError400 extends OrgsRedeliverWebhookDeliveryError {const OrgsRedeliverWebhookDeliveryError400(this.data);

factory OrgsRedeliverWebhookDeliveryError400.parse(ApiResponse response) { return OrgsRedeliverWebhookDeliveryError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsRedeliverWebhookDeliveryError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsRedeliverWebhookDeliveryError400($data)'; } 
 }
/// The `422` response.
@immutable final class OrgsRedeliverWebhookDeliveryError422 extends OrgsRedeliverWebhookDeliveryError {const OrgsRedeliverWebhookDeliveryError422(this.data);

factory OrgsRedeliverWebhookDeliveryError422.parse(ApiResponse response) { return OrgsRedeliverWebhookDeliveryError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsRedeliverWebhookDeliveryError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsRedeliverWebhookDeliveryError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class OrgsRedeliverWebhookDeliveryError$Unknown extends OrgsRedeliverWebhookDeliveryError {const OrgsRedeliverWebhookDeliveryError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsRedeliverWebhookDeliveryError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'OrgsRedeliverWebhookDeliveryError.unknown($statusCode)'; } 
 }
