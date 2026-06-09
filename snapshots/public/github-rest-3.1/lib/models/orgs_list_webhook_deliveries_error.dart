// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `GET /orgs/{org}/hooks/{hook_id}/deliveries`.
sealed class OrgsListWebhookDeliveriesError {const OrgsListWebhookDeliveriesError();

/// Parse the variant matching the response status code.
factory OrgsListWebhookDeliveriesError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => OrgsListWebhookDeliveriesError400.parse(response),
  422 => OrgsListWebhookDeliveriesError422.parse(response),
  _ => OrgsListWebhookDeliveriesError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class OrgsListWebhookDeliveriesError400 extends OrgsListWebhookDeliveriesError {const OrgsListWebhookDeliveriesError400(this.data);

factory OrgsListWebhookDeliveriesError400.parse(ApiResponse response) { return OrgsListWebhookDeliveriesError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsListWebhookDeliveriesError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsListWebhookDeliveriesError400($data)'; } 
 }
/// The `422` response.
@immutable final class OrgsListWebhookDeliveriesError422 extends OrgsListWebhookDeliveriesError {const OrgsListWebhookDeliveriesError422(this.data);

factory OrgsListWebhookDeliveriesError422.parse(ApiResponse response) { return OrgsListWebhookDeliveriesError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsListWebhookDeliveriesError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsListWebhookDeliveriesError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class OrgsListWebhookDeliveriesError$Unknown extends OrgsListWebhookDeliveriesError {const OrgsListWebhookDeliveriesError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsListWebhookDeliveriesError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'OrgsListWebhookDeliveriesError.unknown($statusCode)'; } 
 }
