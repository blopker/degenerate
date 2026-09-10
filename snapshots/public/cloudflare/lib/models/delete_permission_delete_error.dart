// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_permission_delete_response400.dart';import 'delete_permission_delete_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class DeletePermissionDeleteError {const DeletePermissionDeleteError();

/// Decodes the payload for its declared status and content type.
static DeletePermissionDeleteError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return DeletePermissionDeleteError400(DeletePermissionDeleteResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return DeletePermissionDeleteError404(DeletePermissionDeleteResponse404.fromJson(json as Map<String, dynamic>));
default:
return DeletePermissionDeleteErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class DeletePermissionDeleteError400 extends DeletePermissionDeleteError {const DeletePermissionDeleteError400(this.data);

/// The decoded response payload.
final DeletePermissionDeleteResponse400 data;

 }
/// Response for 404 (application/json).
final class DeletePermissionDeleteError404 extends DeletePermissionDeleteError {const DeletePermissionDeleteError404(this.data);

/// The decoded response payload.
final DeletePermissionDeleteResponse404 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class DeletePermissionDeleteErrorUnknown extends DeletePermissionDeleteError {const DeletePermissionDeleteErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
