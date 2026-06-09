// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_error_response.dart';/// Error responses of `PUT /accounts/{account_id}/realtime/kit/{app_id}/webhooks/{webhook_id}`.
sealed class ReplaceWebhookError {const ReplaceWebhookError();

/// Parse the variant matching the response status code.
factory ReplaceWebhookError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => ReplaceWebhookError400.parse(response),
  401 => ReplaceWebhookError401.parse(response),
  _ => ReplaceWebhookError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class ReplaceWebhookError400 extends ReplaceWebhookError {const ReplaceWebhookError400(this.data);

factory ReplaceWebhookError400.parse(ApiResponse response) { return ReplaceWebhookError400(RealtimekitErrorResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final RealtimekitErrorResponse data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReplaceWebhookError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReplaceWebhookError400($data)'; } 
 }
/// The `401` response.
@immutable final class ReplaceWebhookError401 extends ReplaceWebhookError {const ReplaceWebhookError401();

factory ReplaceWebhookError401.parse(ApiResponse _) { return const ReplaceWebhookError401(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ReplaceWebhookError401; } 
@override int get hashCode { return (ReplaceWebhookError401).hashCode; } 
@override String toString() { return 'ReplaceWebhookError401()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReplaceWebhookError$Unknown extends ReplaceWebhookError {const ReplaceWebhookError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReplaceWebhookError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReplaceWebhookError.unknown($statusCode)'; } 
 }
