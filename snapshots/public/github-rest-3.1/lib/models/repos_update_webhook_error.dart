// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PATCH /repos/{owner}/{repo}/hooks/{hook_id}`.
sealed class ReposUpdateWebhookError {const ReposUpdateWebhookError();

/// Parse the variant matching the response status code.
factory ReposUpdateWebhookError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ReposUpdateWebhookError404.parse(response),
  422 => ReposUpdateWebhookError422.parse(response),
  _ => ReposUpdateWebhookError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ReposUpdateWebhookError404 extends ReposUpdateWebhookError {const ReposUpdateWebhookError404(this.data);

factory ReposUpdateWebhookError404.parse(ApiResponse response) { return ReposUpdateWebhookError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposUpdateWebhookError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposUpdateWebhookError404($data)'; } 
 }
/// The `422` response.
@immutable final class ReposUpdateWebhookError422 extends ReposUpdateWebhookError {const ReposUpdateWebhookError422(this.data);

factory ReposUpdateWebhookError422.parse(ApiResponse response) { return ReposUpdateWebhookError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposUpdateWebhookError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposUpdateWebhookError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposUpdateWebhookError$Unknown extends ReposUpdateWebhookError {const ReposUpdateWebhookError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposUpdateWebhookError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposUpdateWebhookError.unknown($statusCode)'; } 
 }
