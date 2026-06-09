// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'telemetry_query_response400.dart';import 'telemetry_query_response401.dart';import 'telemetry_query_response500.dart';/// Error responses of `POST /accounts/{account_id}/workers/observability/telemetry/query`.
sealed class TelemetryQueryError {const TelemetryQueryError();

/// Parse the variant matching the response status code.
factory TelemetryQueryError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => TelemetryQueryError400.parse(response),
  401 => TelemetryQueryError401.parse(response),
  500 => TelemetryQueryError500.parse(response),
  _ => TelemetryQueryError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class TelemetryQueryError400 extends TelemetryQueryError {const TelemetryQueryError400(this.data);

factory TelemetryQueryError400.parse(ApiResponse response) { return TelemetryQueryError400(TelemetryQueryResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final TelemetryQueryResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is TelemetryQueryError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'TelemetryQueryError400($data)'; } 
 }
/// The `401` response.
@immutable final class TelemetryQueryError401 extends TelemetryQueryError {const TelemetryQueryError401(this.data);

factory TelemetryQueryError401.parse(ApiResponse response) { return TelemetryQueryError401(TelemetryQueryResponse401.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final TelemetryQueryResponse401 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is TelemetryQueryError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'TelemetryQueryError401($data)'; } 
 }
/// The `500` response.
@immutable final class TelemetryQueryError500 extends TelemetryQueryError {const TelemetryQueryError500(this.data);

factory TelemetryQueryError500.parse(ApiResponse response) { return TelemetryQueryError500(TelemetryQueryResponse500.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final TelemetryQueryResponse500 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is TelemetryQueryError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'TelemetryQueryError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class TelemetryQueryError$Unknown extends TelemetryQueryError {const TelemetryQueryError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is TelemetryQueryError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'TelemetryQueryError.unknown($statusCode)'; } 
 }
