// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'patch_event_query_update_response400.dart';import 'patch_event_query_update_response404.dart';/// Error responses of `PATCH /accounts/{account_id}/cloudforce-one/events/queries/{query_id}`.
sealed class PatchEventQueryUpdateError {const PatchEventQueryUpdateError();

/// Parse the variant matching the response status code.
factory PatchEventQueryUpdateError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => PatchEventQueryUpdateError400.parse(response),
  404 => PatchEventQueryUpdateError404.parse(response),
  _ => PatchEventQueryUpdateError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class PatchEventQueryUpdateError400 extends PatchEventQueryUpdateError {const PatchEventQueryUpdateError400(this.data);

factory PatchEventQueryUpdateError400.parse(ApiResponse response) { return PatchEventQueryUpdateError400(PatchEventQueryUpdateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PatchEventQueryUpdateResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PatchEventQueryUpdateError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PatchEventQueryUpdateError400($data)'; } 
 }
/// The `404` response.
@immutable final class PatchEventQueryUpdateError404 extends PatchEventQueryUpdateError {const PatchEventQueryUpdateError404(this.data);

factory PatchEventQueryUpdateError404.parse(ApiResponse response) { return PatchEventQueryUpdateError404(PatchEventQueryUpdateResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PatchEventQueryUpdateResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PatchEventQueryUpdateError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PatchEventQueryUpdateError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class PatchEventQueryUpdateError$Unknown extends PatchEventQueryUpdateError {const PatchEventQueryUpdateError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PatchEventQueryUpdateError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'PatchEventQueryUpdateError.unknown($statusCode)'; } 
 }
