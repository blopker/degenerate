// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'destination_update_response400.dart';import 'destination_update_response401.dart';import 'destination_update_response404.dart';import 'destination_update_response500.dart';/// Error responses of `PATCH /accounts/{account_id}/workers/observability/destinations/{slug}`.
sealed class DestinationUpdateError {const DestinationUpdateError();

/// Parse the variant matching the response status code.
factory DestinationUpdateError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => DestinationUpdateError400.parse(response),
  401 => DestinationUpdateError401.parse(response),
  404 => DestinationUpdateError404.parse(response),
  500 => DestinationUpdateError500.parse(response),
  _ => DestinationUpdateError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class DestinationUpdateError400 extends DestinationUpdateError {const DestinationUpdateError400(this.data);

factory DestinationUpdateError400.parse(ApiResponse response) { return DestinationUpdateError400(DestinationUpdateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final DestinationUpdateResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationUpdateError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DestinationUpdateError400($data)'; } 
 }
/// The `401` response.
@immutable final class DestinationUpdateError401 extends DestinationUpdateError {const DestinationUpdateError401(this.data);

factory DestinationUpdateError401.parse(ApiResponse response) { return DestinationUpdateError401(DestinationUpdateResponse401.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final DestinationUpdateResponse401 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationUpdateError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DestinationUpdateError401($data)'; } 
 }
/// The `404` response.
@immutable final class DestinationUpdateError404 extends DestinationUpdateError {const DestinationUpdateError404(this.data);

factory DestinationUpdateError404.parse(ApiResponse response) { return DestinationUpdateError404(DestinationUpdateResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final DestinationUpdateResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationUpdateError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DestinationUpdateError404($data)'; } 
 }
/// The `500` response.
@immutable final class DestinationUpdateError500 extends DestinationUpdateError {const DestinationUpdateError500(this.data);

factory DestinationUpdateError500.parse(ApiResponse response) { return DestinationUpdateError500(DestinationUpdateResponse500.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final DestinationUpdateResponse500 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationUpdateError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DestinationUpdateError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class DestinationUpdateError$Unknown extends DestinationUpdateError {const DestinationUpdateError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationUpdateError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'DestinationUpdateError.unknown($statusCode)'; } 
 }
