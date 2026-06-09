// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'destination_create_response400.dart';import 'destination_create_response401.dart';import 'destination_create_response500.dart';/// Error responses of `POST /accounts/{account_id}/workers/observability/destinations`.
sealed class DestinationCreateError {const DestinationCreateError();

/// Parse the variant matching the response status code.
factory DestinationCreateError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => DestinationCreateError400.parse(response),
  401 => DestinationCreateError401.parse(response),
  500 => DestinationCreateError500.parse(response),
  _ => DestinationCreateError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class DestinationCreateError400 extends DestinationCreateError {const DestinationCreateError400(this.data);

factory DestinationCreateError400.parse(ApiResponse response) { return DestinationCreateError400(DestinationCreateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final DestinationCreateResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationCreateError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DestinationCreateError400($data)'; } 
 }
/// The `401` response.
@immutable final class DestinationCreateError401 extends DestinationCreateError {const DestinationCreateError401(this.data);

factory DestinationCreateError401.parse(ApiResponse response) { return DestinationCreateError401(DestinationCreateResponse401.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final DestinationCreateResponse401 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationCreateError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DestinationCreateError401($data)'; } 
 }
/// The `500` response.
@immutable final class DestinationCreateError500 extends DestinationCreateError {const DestinationCreateError500(this.data);

factory DestinationCreateError500.parse(ApiResponse response) { return DestinationCreateError500(DestinationCreateResponse500.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final DestinationCreateResponse500 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationCreateError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DestinationCreateError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class DestinationCreateError$Unknown extends DestinationCreateError {const DestinationCreateError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationCreateError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'DestinationCreateError.unknown($statusCode)'; } 
 }
