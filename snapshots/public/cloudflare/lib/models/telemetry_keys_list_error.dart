// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'telemetry_keys_list_response401.dart';import 'telemetry_keys_list_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class TelemetryKeysListError {const TelemetryKeysListError();

/// Decodes the payload for its declared status and content type.
static TelemetryKeysListError parse(ApiResponse response) {switch (response.statusCode) {
case 401:
final json = jsonDecode(response.body);
return TelemetryKeysListError401(TelemetryKeysListResponse401.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return TelemetryKeysListError500(TelemetryKeysListResponse500.fromJson(json as Map<String, dynamic>));
default:
return TelemetryKeysListErrorUnknown(response);
}
}
}
/// Response for 401 (application/json).
final class TelemetryKeysListError401 extends TelemetryKeysListError {const TelemetryKeysListError401(this.data);

/// The decoded response payload.
final TelemetryKeysListResponse401 data;

}
/// Response for 500 (application/json).
final class TelemetryKeysListError500 extends TelemetryKeysListError {const TelemetryKeysListError500(this.data);

/// The decoded response payload.
final TelemetryKeysListResponse500 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class TelemetryKeysListErrorUnknown extends TelemetryKeysListError {const TelemetryKeysListErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
