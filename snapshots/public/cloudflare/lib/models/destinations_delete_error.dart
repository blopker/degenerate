// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'destinations_delete_response401.dart';import 'destinations_delete_response404.dart';import 'destinations_delete_response500.dart';/// Error responses of `DELETE /accounts/{account_id}/workers/observability/destinations/{slug}`.
sealed class DestinationsDeleteError {const DestinationsDeleteError();

/// Parse the variant matching the response status code.
factory DestinationsDeleteError.parse(ApiResponse response) { return switch (response.statusCode) {
  401 => DestinationsDeleteError401.parse(response),
  404 => DestinationsDeleteError404.parse(response),
  500 => DestinationsDeleteError500.parse(response),
  _ => DestinationsDeleteError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `401` response.
@immutable final class DestinationsDeleteError401 extends DestinationsDeleteError {const DestinationsDeleteError401(this.data);

factory DestinationsDeleteError401.parse(ApiResponse response) { return DestinationsDeleteError401(DestinationsDeleteResponse401.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final DestinationsDeleteResponse401 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationsDeleteError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DestinationsDeleteError401($data)'; } 
 }
/// The `404` response.
@immutable final class DestinationsDeleteError404 extends DestinationsDeleteError {const DestinationsDeleteError404(this.data);

factory DestinationsDeleteError404.parse(ApiResponse response) { return DestinationsDeleteError404(DestinationsDeleteResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final DestinationsDeleteResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationsDeleteError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DestinationsDeleteError404($data)'; } 
 }
/// The `500` response.
@immutable final class DestinationsDeleteError500 extends DestinationsDeleteError {const DestinationsDeleteError500(this.data);

factory DestinationsDeleteError500.parse(ApiResponse response) { return DestinationsDeleteError500(DestinationsDeleteResponse500.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final DestinationsDeleteResponse500 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationsDeleteError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DestinationsDeleteError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class DestinationsDeleteError$Unknown extends DestinationsDeleteError {const DestinationsDeleteError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationsDeleteError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'DestinationsDeleteError.unknown($statusCode)'; } 
 }
