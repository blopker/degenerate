// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `GET /app/hook/deliveries`.
sealed class AppsListWebhookDeliveriesError {const AppsListWebhookDeliveriesError();

/// Parse the variant matching the response status code.
factory AppsListWebhookDeliveriesError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => AppsListWebhookDeliveriesError400.parse(response),
  422 => AppsListWebhookDeliveriesError422.parse(response),
  _ => AppsListWebhookDeliveriesError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class AppsListWebhookDeliveriesError400 extends AppsListWebhookDeliveriesError {const AppsListWebhookDeliveriesError400(this.data);

factory AppsListWebhookDeliveriesError400.parse(ApiResponse response) { return AppsListWebhookDeliveriesError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsListWebhookDeliveriesError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsListWebhookDeliveriesError400($data)'; } 
 }
/// The `422` response.
@immutable final class AppsListWebhookDeliveriesError422 extends AppsListWebhookDeliveriesError {const AppsListWebhookDeliveriesError422(this.data);

factory AppsListWebhookDeliveriesError422.parse(ApiResponse response) { return AppsListWebhookDeliveriesError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsListWebhookDeliveriesError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsListWebhookDeliveriesError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AppsListWebhookDeliveriesError$Unknown extends AppsListWebhookDeliveriesError {const AppsListWebhookDeliveriesError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsListWebhookDeliveriesError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AppsListWebhookDeliveriesError.unknown($statusCode)'; } 
 }
