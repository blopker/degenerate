// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'update_portals_response400.dart';import 'update_portals_response404.dart';/// Error responses of `PUT /accounts/{account_id}/access/ai-controls/mcp/portals/{id}`.
sealed class UpdatePortalsError {const UpdatePortalsError();

/// Parse the variant matching the response status code.
factory UpdatePortalsError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => UpdatePortalsError400.parse(response),
  404 => UpdatePortalsError404.parse(response),
  _ => UpdatePortalsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class UpdatePortalsError400 extends UpdatePortalsError {const UpdatePortalsError400(this.data);

factory UpdatePortalsError400.parse(ApiResponse response) { return UpdatePortalsError400(UpdatePortalsResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final UpdatePortalsResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdatePortalsError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UpdatePortalsError400($data)'; } 
 }
/// The `404` response.
@immutable final class UpdatePortalsError404 extends UpdatePortalsError {const UpdatePortalsError404(this.data);

factory UpdatePortalsError404.parse(ApiResponse response) { return UpdatePortalsError404(UpdatePortalsResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final UpdatePortalsResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdatePortalsError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UpdatePortalsError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UpdatePortalsError$Unknown extends UpdatePortalsError {const UpdatePortalsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdatePortalsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UpdatePortalsError.unknown($statusCode)'; } 
 }
