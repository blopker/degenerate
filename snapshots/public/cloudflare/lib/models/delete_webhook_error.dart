// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_error_response.dart';/// Error responses of `DELETE /accounts/{account_id}/realtime/kit/{app_id}/webhooks/{webhook_id}`.
sealed class DeleteWebhookError {const DeleteWebhookError();

/// Parse the variant matching the response status code.
factory DeleteWebhookError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => DeleteWebhookError400.parse(response),
  401 => DeleteWebhookError401.parse(response),
  _ => DeleteWebhookError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class DeleteWebhookError400 extends DeleteWebhookError {const DeleteWebhookError400(this.data);

factory DeleteWebhookError400.parse(ApiResponse response) { return DeleteWebhookError400(RealtimekitErrorResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final RealtimekitErrorResponse data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeleteWebhookError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DeleteWebhookError400($data)'; } 
 }
/// The `401` response.
@immutable final class DeleteWebhookError401 extends DeleteWebhookError {const DeleteWebhookError401();

factory DeleteWebhookError401.parse(ApiResponse _) { return const DeleteWebhookError401(); }

@override bool operator ==(Object other) { return identical(this, other) || other is DeleteWebhookError401; } 
@override int get hashCode { return (DeleteWebhookError401).hashCode; } 
@override String toString() { return 'DeleteWebhookError401()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class DeleteWebhookError$Unknown extends DeleteWebhookError {const DeleteWebhookError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeleteWebhookError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'DeleteWebhookError.unknown($statusCode)'; } 
 }
