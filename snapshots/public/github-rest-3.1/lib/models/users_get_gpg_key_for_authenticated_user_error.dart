// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersGetGpgKeyForAuthenticatedUserError {const UsersGetGpgKeyForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static UsersGetGpgKeyForAuthenticatedUserError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const UsersGetGpgKeyForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return UsersGetGpgKeyForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return UsersGetGpgKeyForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return UsersGetGpgKeyForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return UsersGetGpgKeyForAuthenticatedUserErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class UsersGetGpgKeyForAuthenticatedUserError304 extends UsersGetGpgKeyForAuthenticatedUserError {const UsersGetGpgKeyForAuthenticatedUserError304();

 }
/// Response for 401 (application/json).
final class UsersGetGpgKeyForAuthenticatedUserError401 extends UsersGetGpgKeyForAuthenticatedUserError {const UsersGetGpgKeyForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class UsersGetGpgKeyForAuthenticatedUserError403 extends UsersGetGpgKeyForAuthenticatedUserError {const UsersGetGpgKeyForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class UsersGetGpgKeyForAuthenticatedUserError404 extends UsersGetGpgKeyForAuthenticatedUserError {const UsersGetGpgKeyForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class UsersGetGpgKeyForAuthenticatedUserErrorUnknown extends UsersGetGpgKeyForAuthenticatedUserError {const UsersGetGpgKeyForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
