// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'patch_indicator_update_response400.dart';import 'patch_indicator_update_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class PatchIndicatorUpdateError {const PatchIndicatorUpdateError();

/// Decodes the payload for its declared status and content type.
static PatchIndicatorUpdateError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return PatchIndicatorUpdateError400(PatchIndicatorUpdateResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return PatchIndicatorUpdateError404(PatchIndicatorUpdateResponse404.fromJson(json as Map<String, dynamic>));
default:
return PatchIndicatorUpdateErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class PatchIndicatorUpdateError400 extends PatchIndicatorUpdateError {const PatchIndicatorUpdateError400(this.data);

/// The decoded response payload.
final PatchIndicatorUpdateResponse400 data;

 }
/// Response for 404 (application/json).
final class PatchIndicatorUpdateError404 extends PatchIndicatorUpdateError {const PatchIndicatorUpdateError404(this.data);

/// The decoded response payload.
final PatchIndicatorUpdateResponse404 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class PatchIndicatorUpdateErrorUnknown extends PatchIndicatorUpdateError {const PatchIndicatorUpdateErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
