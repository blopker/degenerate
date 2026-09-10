// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'destinations_delete_response401.dart';import 'destinations_delete_response404.dart';import 'destinations_delete_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class DestinationsDeleteError {const DestinationsDeleteError();

/// Decodes the payload for its declared status and content type.
static DestinationsDeleteError parse(ApiResponse response) {switch (response.statusCode) {
case 401:
final json = jsonDecode(response.body);
return DestinationsDeleteError401(DestinationsDeleteResponse401.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return DestinationsDeleteError404(DestinationsDeleteResponse404.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return DestinationsDeleteError500(DestinationsDeleteResponse500.fromJson(json as Map<String, dynamic>));
default:
return DestinationsDeleteErrorUnknown(response);
}
}
}
/// Response for 401 (application/json).
final class DestinationsDeleteError401 extends DestinationsDeleteError {const DestinationsDeleteError401(this.data);

/// The decoded response payload.
final DestinationsDeleteResponse401 data;

}
/// Response for 404 (application/json).
final class DestinationsDeleteError404 extends DestinationsDeleteError {const DestinationsDeleteError404(this.data);

/// The decoded response payload.
final DestinationsDeleteResponse404 data;

}
/// Response for 500 (application/json).
final class DestinationsDeleteError500 extends DestinationsDeleteError {const DestinationsDeleteError500(this.data);

/// The decoded response payload.
final DestinationsDeleteResponse500 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class DestinationsDeleteErrorUnknown extends DestinationsDeleteError {const DestinationsDeleteErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
