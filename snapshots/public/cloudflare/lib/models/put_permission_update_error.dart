// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'put_permission_update_response400.dart';import 'put_permission_update_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class PutPermissionUpdateError {const PutPermissionUpdateError();

/// Decodes the payload for its declared status and content type.
static PutPermissionUpdateError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  PutPermissionUpdateError400(PutPermissionUpdateResponse400.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  PutPermissionUpdateError404(PutPermissionUpdateResponse404.fromJson(json as Map<String, dynamic>));default:
return  PutPermissionUpdateErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class PutPermissionUpdateError400 extends PutPermissionUpdateError {const PutPermissionUpdateError400(this.data);

/// The decoded response payload.
final PutPermissionUpdateResponse400 data;

}
/// Response for 404 (application/json).
final class PutPermissionUpdateError404 extends PutPermissionUpdateError {const PutPermissionUpdateError404(this.data);

/// The decoded response payload.
final PutPermissionUpdateResponse404 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class PutPermissionUpdateErrorUnknown extends PutPermissionUpdateError {const PutPermissionUpdateErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
