// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'update_servers_response400.dart';import 'update_servers_response404.dart';/// Error responses of `PUT /accounts/{account_id}/access/ai-controls/mcp/servers/{id}`.
sealed class UpdateServersError {const UpdateServersError();

/// Parse the variant matching the response status code.
factory UpdateServersError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => UpdateServersError400.parse(response),
  404 => UpdateServersError404.parse(response),
  _ => UpdateServersError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class UpdateServersError400 extends UpdateServersError {const UpdateServersError400(this.data);

factory UpdateServersError400.parse(ApiResponse response) { return UpdateServersError400(UpdateServersResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final UpdateServersResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateServersError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UpdateServersError400($data)'; } 
 }
/// The `404` response.
@immutable final class UpdateServersError404 extends UpdateServersError {const UpdateServersError404(this.data);

factory UpdateServersError404.parse(ApiResponse response) { return UpdateServersError404(UpdateServersResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final UpdateServersResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateServersError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UpdateServersError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UpdateServersError$Unknown extends UpdateServersError {const UpdateServersError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateServersError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UpdateServersError.unknown($statusCode)'; } 
 }
