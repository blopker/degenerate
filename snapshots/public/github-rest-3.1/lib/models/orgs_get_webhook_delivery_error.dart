// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `GET /orgs/{org}/hooks/{hook_id}/deliveries/{delivery_id}`.
sealed class OrgsGetWebhookDeliveryError {const OrgsGetWebhookDeliveryError();

/// Parse the variant matching the response status code.
factory OrgsGetWebhookDeliveryError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => OrgsGetWebhookDeliveryError400.parse(response),
  422 => OrgsGetWebhookDeliveryError422.parse(response),
  _ => OrgsGetWebhookDeliveryError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class OrgsGetWebhookDeliveryError400 extends OrgsGetWebhookDeliveryError {const OrgsGetWebhookDeliveryError400(this.data);

factory OrgsGetWebhookDeliveryError400.parse(ApiResponse response) { return OrgsGetWebhookDeliveryError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsGetWebhookDeliveryError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsGetWebhookDeliveryError400($data)'; } 
 }
/// The `422` response.
@immutable final class OrgsGetWebhookDeliveryError422 extends OrgsGetWebhookDeliveryError {const OrgsGetWebhookDeliveryError422(this.data);

factory OrgsGetWebhookDeliveryError422.parse(ApiResponse response) { return OrgsGetWebhookDeliveryError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsGetWebhookDeliveryError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsGetWebhookDeliveryError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class OrgsGetWebhookDeliveryError$Unknown extends OrgsGetWebhookDeliveryError {const OrgsGetWebhookDeliveryError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsGetWebhookDeliveryError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'OrgsGetWebhookDeliveryError.unknown($statusCode)'; } 
 }
