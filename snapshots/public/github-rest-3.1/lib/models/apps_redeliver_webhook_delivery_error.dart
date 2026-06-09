// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /app/hook/deliveries/{delivery_id}/attempts`.
sealed class AppsRedeliverWebhookDeliveryError {const AppsRedeliverWebhookDeliveryError();

/// Parse the variant matching the response status code.
factory AppsRedeliverWebhookDeliveryError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => AppsRedeliverWebhookDeliveryError400.parse(response),
  422 => AppsRedeliverWebhookDeliveryError422.parse(response),
  _ => AppsRedeliverWebhookDeliveryError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class AppsRedeliverWebhookDeliveryError400 extends AppsRedeliverWebhookDeliveryError {const AppsRedeliverWebhookDeliveryError400(this.data);

factory AppsRedeliverWebhookDeliveryError400.parse(ApiResponse response) { return AppsRedeliverWebhookDeliveryError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsRedeliverWebhookDeliveryError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsRedeliverWebhookDeliveryError400($data)'; } 
 }
/// The `422` response.
@immutable final class AppsRedeliverWebhookDeliveryError422 extends AppsRedeliverWebhookDeliveryError {const AppsRedeliverWebhookDeliveryError422(this.data);

factory AppsRedeliverWebhookDeliveryError422.parse(ApiResponse response) { return AppsRedeliverWebhookDeliveryError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsRedeliverWebhookDeliveryError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsRedeliverWebhookDeliveryError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AppsRedeliverWebhookDeliveryError$Unknown extends AppsRedeliverWebhookDeliveryError {const AppsRedeliverWebhookDeliveryError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsRedeliverWebhookDeliveryError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AppsRedeliverWebhookDeliveryError.unknown($statusCode)'; } 
 }
