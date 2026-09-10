// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersCreateGpgKeyForAuthenticatedUserError {const UsersCreateGpgKeyForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static UsersCreateGpgKeyForAuthenticatedUserError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const UsersCreateGpgKeyForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return UsersCreateGpgKeyForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return UsersCreateGpgKeyForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return UsersCreateGpgKeyForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return UsersCreateGpgKeyForAuthenticatedUserError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return UsersCreateGpgKeyForAuthenticatedUserErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class UsersCreateGpgKeyForAuthenticatedUserError304 extends UsersCreateGpgKeyForAuthenticatedUserError {const UsersCreateGpgKeyForAuthenticatedUserError304();

 }
/// Response for 401 (application/json).
final class UsersCreateGpgKeyForAuthenticatedUserError401 extends UsersCreateGpgKeyForAuthenticatedUserError {const UsersCreateGpgKeyForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class UsersCreateGpgKeyForAuthenticatedUserError403 extends UsersCreateGpgKeyForAuthenticatedUserError {const UsersCreateGpgKeyForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class UsersCreateGpgKeyForAuthenticatedUserError404 extends UsersCreateGpgKeyForAuthenticatedUserError {const UsersCreateGpgKeyForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class UsersCreateGpgKeyForAuthenticatedUserError422 extends UsersCreateGpgKeyForAuthenticatedUserError {const UsersCreateGpgKeyForAuthenticatedUserError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class UsersCreateGpgKeyForAuthenticatedUserErrorUnknown extends UsersCreateGpgKeyForAuthenticatedUserError {const UsersCreateGpgKeyForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
