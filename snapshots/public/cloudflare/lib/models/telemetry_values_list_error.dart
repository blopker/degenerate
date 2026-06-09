// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'telemetry_values_list_response401.dart';import 'telemetry_values_list_response500.dart';/// Error responses of `POST /accounts/{account_id}/workers/observability/telemetry/values`.
sealed class TelemetryValuesListError {const TelemetryValuesListError();

/// Parse the variant matching the response status code.
factory TelemetryValuesListError.parse(ApiResponse response) { return switch (response.statusCode) {
  401 => TelemetryValuesListError401.parse(response),
  500 => TelemetryValuesListError500.parse(response),
  _ => TelemetryValuesListError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `401` response.
@immutable final class TelemetryValuesListError401 extends TelemetryValuesListError {const TelemetryValuesListError401(this.data);

factory TelemetryValuesListError401.parse(ApiResponse response) { return TelemetryValuesListError401(TelemetryValuesListResponse401.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final TelemetryValuesListResponse401 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is TelemetryValuesListError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'TelemetryValuesListError401($data)'; } 
 }
/// The `500` response.
@immutable final class TelemetryValuesListError500 extends TelemetryValuesListError {const TelemetryValuesListError500(this.data);

factory TelemetryValuesListError500.parse(ApiResponse response) { return TelemetryValuesListError500(TelemetryValuesListResponse500.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final TelemetryValuesListResponse500 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is TelemetryValuesListError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'TelemetryValuesListError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class TelemetryValuesListError$Unknown extends TelemetryValuesListError {const TelemetryValuesListError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is TelemetryValuesListError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'TelemetryValuesListError.unknown($statusCode)'; } 
 }
