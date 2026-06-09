// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /orgs/{org}/hooks`.
sealed class OrgsCreateWebhookError {const OrgsCreateWebhookError();

/// Parse the variant matching the response status code.
factory OrgsCreateWebhookError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => OrgsCreateWebhookError404.parse(response),
  422 => OrgsCreateWebhookError422.parse(response),
  _ => OrgsCreateWebhookError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class OrgsCreateWebhookError404 extends OrgsCreateWebhookError {const OrgsCreateWebhookError404(this.data);

factory OrgsCreateWebhookError404.parse(ApiResponse response) { return OrgsCreateWebhookError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsCreateWebhookError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsCreateWebhookError404($data)'; } 
 }
/// The `422` response.
@immutable final class OrgsCreateWebhookError422 extends OrgsCreateWebhookError {const OrgsCreateWebhookError422(this.data);

factory OrgsCreateWebhookError422.parse(ApiResponse response) { return OrgsCreateWebhookError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsCreateWebhookError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsCreateWebhookError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class OrgsCreateWebhookError$Unknown extends OrgsCreateWebhookError {const OrgsCreateWebhookError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsCreateWebhookError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'OrgsCreateWebhookError.unknown($statusCode)'; } 
 }
