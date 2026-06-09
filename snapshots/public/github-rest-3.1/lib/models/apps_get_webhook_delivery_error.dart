// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `GET /app/hook/deliveries/{delivery_id}`.
sealed class AppsGetWebhookDeliveryError {const AppsGetWebhookDeliveryError();

/// Parse the variant matching the response status code.
factory AppsGetWebhookDeliveryError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => AppsGetWebhookDeliveryError400.parse(response),
  422 => AppsGetWebhookDeliveryError422.parse(response),
  _ => AppsGetWebhookDeliveryError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class AppsGetWebhookDeliveryError400 extends AppsGetWebhookDeliveryError {const AppsGetWebhookDeliveryError400(this.data);

factory AppsGetWebhookDeliveryError400.parse(ApiResponse response) { return AppsGetWebhookDeliveryError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsGetWebhookDeliveryError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsGetWebhookDeliveryError400($data)'; } 
 }
/// The `422` response.
@immutable final class AppsGetWebhookDeliveryError422 extends AppsGetWebhookDeliveryError {const AppsGetWebhookDeliveryError422(this.data);

factory AppsGetWebhookDeliveryError422.parse(ApiResponse response) { return AppsGetWebhookDeliveryError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsGetWebhookDeliveryError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsGetWebhookDeliveryError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AppsGetWebhookDeliveryError$Unknown extends AppsGetWebhookDeliveryError {const AppsGetWebhookDeliveryError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsGetWebhookDeliveryError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AppsGetWebhookDeliveryError.unknown($statusCode)'; } 
 }
