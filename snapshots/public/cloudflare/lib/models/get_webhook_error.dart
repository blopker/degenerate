// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_error_response.dart';/// Error responses of `GET /accounts/{account_id}/realtime/kit/{app_id}/webhooks/{webhook_id}`.
sealed class GetWebhookError {const GetWebhookError();

/// Parse the variant matching the response status code.
factory GetWebhookError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => GetWebhookError400.parse(response),
  401 => GetWebhookError401.parse(response),
  _ => GetWebhookError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class GetWebhookError400 extends GetWebhookError {const GetWebhookError400(this.data);

factory GetWebhookError400.parse(ApiResponse response) { return GetWebhookError400(RealtimekitErrorResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final RealtimekitErrorResponse data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetWebhookError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GetWebhookError400($data)'; } 
 }
/// The `401` response.
@immutable final class GetWebhookError401 extends GetWebhookError {const GetWebhookError401();

factory GetWebhookError401.parse(ApiResponse _) { return const GetWebhookError401(); }

@override bool operator ==(Object other) { return identical(this, other) || other is GetWebhookError401; } 
@override int get hashCode { return (GetWebhookError401).hashCode; } 
@override String toString() { return 'GetWebhookError401()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GetWebhookError$Unknown extends GetWebhookError {const GetWebhookError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetWebhookError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GetWebhookError.unknown($statusCode)'; } 
 }
