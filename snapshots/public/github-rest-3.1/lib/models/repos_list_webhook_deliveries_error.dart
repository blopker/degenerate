// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `GET /repos/{owner}/{repo}/hooks/{hook_id}/deliveries`.
sealed class ReposListWebhookDeliveriesError {const ReposListWebhookDeliveriesError();

/// Parse the variant matching the response status code.
factory ReposListWebhookDeliveriesError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => ReposListWebhookDeliveriesError400.parse(response),
  422 => ReposListWebhookDeliveriesError422.parse(response),
  _ => ReposListWebhookDeliveriesError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class ReposListWebhookDeliveriesError400 extends ReposListWebhookDeliveriesError {const ReposListWebhookDeliveriesError400(this.data);

factory ReposListWebhookDeliveriesError400.parse(ApiResponse response) { return ReposListWebhookDeliveriesError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposListWebhookDeliveriesError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposListWebhookDeliveriesError400($data)'; } 
 }
/// The `422` response.
@immutable final class ReposListWebhookDeliveriesError422 extends ReposListWebhookDeliveriesError {const ReposListWebhookDeliveriesError422(this.data);

factory ReposListWebhookDeliveriesError422.parse(ApiResponse response) { return ReposListWebhookDeliveriesError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposListWebhookDeliveriesError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposListWebhookDeliveriesError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposListWebhookDeliveriesError$Unknown extends ReposListWebhookDeliveriesError {const ReposListWebhookDeliveriesError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposListWebhookDeliveriesError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposListWebhookDeliveriesError.unknown($statusCode)'; } 
 }
