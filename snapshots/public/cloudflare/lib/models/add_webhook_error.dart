// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_error_response.dart';/// Error responses of `POST /accounts/{account_id}/realtime/kit/{app_id}/webhooks`.
sealed class AddWebhookError {const AddWebhookError();

/// Parse the variant matching the response status code.
factory AddWebhookError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => AddWebhookError400.parse(response),
  401 => AddWebhookError401.parse(response),
  _ => AddWebhookError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class AddWebhookError400 extends AddWebhookError {const AddWebhookError400(this.data);

factory AddWebhookError400.parse(ApiResponse response) { return AddWebhookError400(RealtimekitErrorResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final RealtimekitErrorResponse data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AddWebhookError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AddWebhookError400($data)'; } 
 }
/// The `401` response.
@immutable final class AddWebhookError401 extends AddWebhookError {const AddWebhookError401();

factory AddWebhookError401.parse(ApiResponse _) { return const AddWebhookError401(); }

@override bool operator ==(Object other) { return identical(this, other) || other is AddWebhookError401; } 
@override int get hashCode { return (AddWebhookError401).hashCode; } 
@override String toString() { return 'AddWebhookError401()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AddWebhookError$Unknown extends AddWebhookError {const AddWebhookError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AddWebhookError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AddWebhookError.unknown($statusCode)'; } 
 }
