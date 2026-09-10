// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'telemetry_query_response400.dart';import 'telemetry_query_response401.dart';import 'telemetry_query_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class TelemetryQueryError {const TelemetryQueryError();

/// Decodes the payload for its declared status and content type.
static TelemetryQueryError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return TelemetryQueryError400(TelemetryQueryResponse400.fromJson(json as Map<String, dynamic>));
case 401:
final json = jsonDecode(response.body);
return TelemetryQueryError401(TelemetryQueryResponse401.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return TelemetryQueryError500(TelemetryQueryResponse500.fromJson(json as Map<String, dynamic>));
default:
return TelemetryQueryErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class TelemetryQueryError400 extends TelemetryQueryError {const TelemetryQueryError400(this.data);

/// The decoded response payload.
final TelemetryQueryResponse400 data;

}
/// Response for 401 (application/json).
final class TelemetryQueryError401 extends TelemetryQueryError {const TelemetryQueryError401(this.data);

/// The decoded response payload.
final TelemetryQueryResponse401 data;

}
/// Response for 500 (application/json).
final class TelemetryQueryError500 extends TelemetryQueryError {const TelemetryQueryError500(this.data);

/// The decoded response payload.
final TelemetryQueryResponse500 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class TelemetryQueryErrorUnknown extends TelemetryQueryError {const TelemetryQueryErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
