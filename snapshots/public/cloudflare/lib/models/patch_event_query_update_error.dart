// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'patch_event_query_update_response400.dart';import 'patch_event_query_update_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class PatchEventQueryUpdateError {const PatchEventQueryUpdateError();

/// Decodes the payload for its declared status and content type.
static PatchEventQueryUpdateError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return PatchEventQueryUpdateError400(PatchEventQueryUpdateResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return PatchEventQueryUpdateError404(PatchEventQueryUpdateResponse404.fromJson(json as Map<String, dynamic>));
default:
return PatchEventQueryUpdateErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class PatchEventQueryUpdateError400 extends PatchEventQueryUpdateError {const PatchEventQueryUpdateError400(this.data);

/// The decoded response payload.
final PatchEventQueryUpdateResponse400 data;

 }
/// Response for 404 (application/json).
final class PatchEventQueryUpdateError404 extends PatchEventQueryUpdateError {const PatchEventQueryUpdateError404(this.data);

/// The decoded response payload.
final PatchEventQueryUpdateResponse404 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class PatchEventQueryUpdateErrorUnknown extends PatchEventQueryUpdateError {const PatchEventQueryUpdateErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
