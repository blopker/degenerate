// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'update_portals_response400.dart';import 'update_portals_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UpdatePortalsError {const UpdatePortalsError();

/// Decodes the payload for its declared status and content type.
static UpdatePortalsError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  UpdatePortalsError400(UpdatePortalsResponse400.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  UpdatePortalsError404(UpdatePortalsResponse404.fromJson(json as Map<String, dynamic>));default:
return  UpdatePortalsErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class UpdatePortalsError400 extends UpdatePortalsError {const UpdatePortalsError400(this.data);

/// The decoded response payload.
final UpdatePortalsResponse400 data;

}
/// Response for 404 (application/json).
final class UpdatePortalsError404 extends UpdatePortalsError {const UpdatePortalsError404(this.data);

/// The decoded response payload.
final UpdatePortalsResponse404 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class UpdatePortalsErrorUnknown extends UpdatePortalsError {const UpdatePortalsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
