// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_error_response.dart';/// Error responses of `PATCH /accounts/{account_id}/realtime/kit/{app_id}/webhooks/{webhook_id}`.
sealed class EditWebhookError {const EditWebhookError();

/// Parse the variant matching the response status code.
factory EditWebhookError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => EditWebhookError400.parse(response),
  401 => EditWebhookError401.parse(response),
  _ => EditWebhookError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class EditWebhookError400 extends EditWebhookError {const EditWebhookError400(this.data);

factory EditWebhookError400.parse(ApiResponse response) { return EditWebhookError400(RealtimekitErrorResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final RealtimekitErrorResponse data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is EditWebhookError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'EditWebhookError400($data)'; } 
 }
/// The `401` response.
@immutable final class EditWebhookError401 extends EditWebhookError {const EditWebhookError401();

factory EditWebhookError401.parse(ApiResponse _) { return const EditWebhookError401(); }

@override bool operator ==(Object other) { return identical(this, other) || other is EditWebhookError401; } 
@override int get hashCode { return (EditWebhookError401).hashCode; } 
@override String toString() { return 'EditWebhookError401()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class EditWebhookError$Unknown extends EditWebhookError {const EditWebhookError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is EditWebhookError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'EditWebhookError.unknown($statusCode)'; } 
 }
