// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'destination_list_response401.dart';import 'destination_list_response404.dart';import 'destination_list_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class DestinationListError {const DestinationListError();

/// Decodes the payload for its declared status and content type.
static DestinationListError parse(ApiResponse response) { switch (response.statusCode) {
case 401:
final json = jsonDecode(response.body);
return DestinationListError401(DestinationListResponse401.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return DestinationListError404(DestinationListResponse404.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return DestinationListError500(DestinationListResponse500.fromJson(json as Map<String, dynamic>));
default:
return DestinationListErrorUnknown(response);
}
 } 
 }
/// Response for 401 (application/json).
final class DestinationListError401 extends DestinationListError {const DestinationListError401(this.data);

/// The decoded response payload.
final DestinationListResponse401 data;

 }
/// Response for 404 (application/json).
final class DestinationListError404 extends DestinationListError {const DestinationListError404(this.data);

/// The decoded response payload.
final DestinationListResponse404 data;

 }
/// Response for 500 (application/json).
final class DestinationListError500 extends DestinationListError {const DestinationListError500(this.data);

/// The decoded response payload.
final DestinationListResponse500 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class DestinationListErrorUnknown extends DestinationListError {const DestinationListErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
