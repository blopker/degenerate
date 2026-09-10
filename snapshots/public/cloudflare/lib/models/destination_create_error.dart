// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'destination_create_response400.dart';import 'destination_create_response401.dart';import 'destination_create_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class DestinationCreateError {const DestinationCreateError();

/// Decodes the payload for its declared status and content type.
static DestinationCreateError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  DestinationCreateError400(DestinationCreateResponse400.fromJson(json as Map<String, dynamic>));case 401:
final json = jsonDecode(response.body);
return  DestinationCreateError401(DestinationCreateResponse401.fromJson(json as Map<String, dynamic>));case 500:
final json = jsonDecode(response.body);
return  DestinationCreateError500(DestinationCreateResponse500.fromJson(json as Map<String, dynamic>));default:
return  DestinationCreateErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class DestinationCreateError400 extends DestinationCreateError {const DestinationCreateError400(this.data);

/// The decoded response payload.
final DestinationCreateResponse400 data;

}
/// Response for 401 (application/json).
final class DestinationCreateError401 extends DestinationCreateError {const DestinationCreateError401(this.data);

/// The decoded response payload.
final DestinationCreateResponse401 data;

}
/// Response for 500 (application/json).
final class DestinationCreateError500 extends DestinationCreateError {const DestinationCreateError500(this.data);

/// The decoded response payload.
final DestinationCreateResponse500 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class DestinationCreateErrorUnknown extends DestinationCreateError {const DestinationCreateErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
