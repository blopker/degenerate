// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_event_raw_read_ds_response404.dart';import 'get_event_raw_read_ds_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GetEventRawReadDsError {const GetEventRawReadDsError();

/// Decodes the payload for its declared status and content type.
static GetEventRawReadDsError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return  GetEventRawReadDsError404(GetEventRawReadDsResponse404.fromJson(json as Map<String, dynamic>));case 500:
final json = jsonDecode(response.body);
return  GetEventRawReadDsError500(GetEventRawReadDsResponse500.fromJson(json as Map<String, dynamic>));default:
return  GetEventRawReadDsErrorUnknown(response); }}
}
/// Response for 404 (application/json).
final class GetEventRawReadDsError404 extends GetEventRawReadDsError {const GetEventRawReadDsError404(this.data);

/// The decoded response payload.
final GetEventRawReadDsResponse404 data;

}
/// Response for 500 (application/json).
final class GetEventRawReadDsError500 extends GetEventRawReadDsError {const GetEventRawReadDsError500(this.data);

/// The decoded response payload.
final GetEventRawReadDsResponse500 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class GetEventRawReadDsErrorUnknown extends GetEventRawReadDsError {const GetEventRawReadDsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
