// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'telemetry_values_list_response401.dart';import 'telemetry_values_list_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class TelemetryValuesListError {const TelemetryValuesListError();

/// Decodes the payload for its declared status and content type.
static TelemetryValuesListError parse(ApiResponse response) { switch (response.statusCode) {
case 401:
final json = jsonDecode(response.body);
return TelemetryValuesListError401(TelemetryValuesListResponse401.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return TelemetryValuesListError500(TelemetryValuesListResponse500.fromJson(json as Map<String, dynamic>));
default:
return TelemetryValuesListErrorUnknown(response);
}
 } 
 }
/// Response for 401 (application/json).
final class TelemetryValuesListError401 extends TelemetryValuesListError {const TelemetryValuesListError401(this.data);

/// The decoded response payload.
final TelemetryValuesListResponse401 data;

 }
/// Response for 500 (application/json).
final class TelemetryValuesListError500 extends TelemetryValuesListError {const TelemetryValuesListError500(this.data);

/// The decoded response payload.
final TelemetryValuesListResponse500 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class TelemetryValuesListErrorUnknown extends TelemetryValuesListError {const TelemetryValuesListErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
