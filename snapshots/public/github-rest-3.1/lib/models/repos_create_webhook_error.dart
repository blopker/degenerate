// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/hooks`.
sealed class ReposCreateWebhookError {const ReposCreateWebhookError();

/// Parse the variant matching the response status code.
factory ReposCreateWebhookError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => ReposCreateWebhookError403.parse(response),
  404 => ReposCreateWebhookError404.parse(response),
  422 => ReposCreateWebhookError422.parse(response),
  _ => ReposCreateWebhookError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class ReposCreateWebhookError403 extends ReposCreateWebhookError {const ReposCreateWebhookError403(this.data);

factory ReposCreateWebhookError403.parse(ApiResponse response) { return ReposCreateWebhookError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateWebhookError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateWebhookError403($data)'; } 
 }
/// The `404` response.
@immutable final class ReposCreateWebhookError404 extends ReposCreateWebhookError {const ReposCreateWebhookError404(this.data);

factory ReposCreateWebhookError404.parse(ApiResponse response) { return ReposCreateWebhookError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateWebhookError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateWebhookError404($data)'; } 
 }
/// The `422` response.
@immutable final class ReposCreateWebhookError422 extends ReposCreateWebhookError {const ReposCreateWebhookError422(this.data);

factory ReposCreateWebhookError422.parse(ApiResponse response) { return ReposCreateWebhookError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateWebhookError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateWebhookError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposCreateWebhookError$Unknown extends ReposCreateWebhookError {const ReposCreateWebhookError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateWebhookError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposCreateWebhookError.unknown($statusCode)'; } 
 }
