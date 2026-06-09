// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PATCH /orgs/{org}/hooks/{hook_id}`.
sealed class OrgsUpdateWebhookError {const OrgsUpdateWebhookError();

/// Parse the variant matching the response status code.
factory OrgsUpdateWebhookError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => OrgsUpdateWebhookError404.parse(response),
  422 => OrgsUpdateWebhookError422.parse(response),
  _ => OrgsUpdateWebhookError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class OrgsUpdateWebhookError404 extends OrgsUpdateWebhookError {const OrgsUpdateWebhookError404(this.data);

factory OrgsUpdateWebhookError404.parse(ApiResponse response) { return OrgsUpdateWebhookError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsUpdateWebhookError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsUpdateWebhookError404($data)'; } 
 }
/// The `422` response.
@immutable final class OrgsUpdateWebhookError422 extends OrgsUpdateWebhookError {const OrgsUpdateWebhookError422(this.data);

factory OrgsUpdateWebhookError422.parse(ApiResponse response) { return OrgsUpdateWebhookError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsUpdateWebhookError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsUpdateWebhookError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class OrgsUpdateWebhookError$Unknown extends OrgsUpdateWebhookError {const OrgsUpdateWebhookError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsUpdateWebhookError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'OrgsUpdateWebhookError.unknown($statusCode)'; } 
 }
