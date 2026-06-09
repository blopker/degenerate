// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'telemetry_keys_list_response401.dart';import 'telemetry_keys_list_response500.dart';/// Error responses of `POST /accounts/{account_id}/workers/observability/telemetry/keys`.
sealed class TelemetryKeysListError {const TelemetryKeysListError();

/// Parse the variant matching the response status code.
factory TelemetryKeysListError.parse(ApiResponse response) { return switch (response.statusCode) {
  401 => TelemetryKeysListError401.parse(response),
  500 => TelemetryKeysListError500.parse(response),
  _ => TelemetryKeysListError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `401` response.
@immutable final class TelemetryKeysListError401 extends TelemetryKeysListError {const TelemetryKeysListError401(this.data);

factory TelemetryKeysListError401.parse(ApiResponse response) { return TelemetryKeysListError401(TelemetryKeysListResponse401.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final TelemetryKeysListResponse401 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is TelemetryKeysListError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'TelemetryKeysListError401($data)'; } 
 }
/// The `500` response.
@immutable final class TelemetryKeysListError500 extends TelemetryKeysListError {const TelemetryKeysListError500(this.data);

factory TelemetryKeysListError500.parse(ApiResponse response) { return TelemetryKeysListError500(TelemetryKeysListResponse500.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final TelemetryKeysListResponse500 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is TelemetryKeysListError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'TelemetryKeysListError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class TelemetryKeysListError$Unknown extends TelemetryKeysListError {const TelemetryKeysListError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is TelemetryKeysListError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'TelemetryKeysListError.unknown($statusCode)'; } 
 }
