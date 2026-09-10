// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_permission_list_response400.dart';import 'get_permission_list_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GetPermissionListError {const GetPermissionListError();

/// Decodes the payload for its declared status and content type.
static GetPermissionListError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return GetPermissionListError400(GetPermissionListResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return GetPermissionListError404(GetPermissionListResponse404.fromJson(json as Map<String, dynamic>));
default:
return GetPermissionListErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class GetPermissionListError400 extends GetPermissionListError {const GetPermissionListError400(this.data);

/// The decoded response payload.
final GetPermissionListResponse400 data;

}
/// Response for 404 (application/json).
final class GetPermissionListError404 extends GetPermissionListError {const GetPermissionListError404(this.data);

/// The decoded response payload.
final GetPermissionListResponse404 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class GetPermissionListErrorUnknown extends GetPermissionListError {const GetPermissionListErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
