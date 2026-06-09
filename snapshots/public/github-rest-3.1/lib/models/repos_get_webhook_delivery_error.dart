// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `GET /repos/{owner}/{repo}/hooks/{hook_id}/deliveries/{delivery_id}`.
sealed class ReposGetWebhookDeliveryError {const ReposGetWebhookDeliveryError();

/// Parse the variant matching the response status code.
factory ReposGetWebhookDeliveryError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => ReposGetWebhookDeliveryError400.parse(response),
  422 => ReposGetWebhookDeliveryError422.parse(response),
  _ => ReposGetWebhookDeliveryError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class ReposGetWebhookDeliveryError400 extends ReposGetWebhookDeliveryError {const ReposGetWebhookDeliveryError400(this.data);

factory ReposGetWebhookDeliveryError400.parse(ApiResponse response) { return ReposGetWebhookDeliveryError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetWebhookDeliveryError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposGetWebhookDeliveryError400($data)'; } 
 }
/// The `422` response.
@immutable final class ReposGetWebhookDeliveryError422 extends ReposGetWebhookDeliveryError {const ReposGetWebhookDeliveryError422(this.data);

factory ReposGetWebhookDeliveryError422.parse(ApiResponse response) { return ReposGetWebhookDeliveryError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetWebhookDeliveryError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposGetWebhookDeliveryError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposGetWebhookDeliveryError$Unknown extends ReposGetWebhookDeliveryError {const ReposGetWebhookDeliveryError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetWebhookDeliveryError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposGetWebhookDeliveryError.unknown($statusCode)'; } 
 }
