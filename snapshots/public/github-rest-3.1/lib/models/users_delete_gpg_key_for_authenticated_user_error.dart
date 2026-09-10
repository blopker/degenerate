// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersDeleteGpgKeyForAuthenticatedUserError {const UsersDeleteGpgKeyForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static UsersDeleteGpgKeyForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const UsersDeleteGpgKeyForAuthenticatedUserError304();case 401:
final json = jsonDecode(response.body);
return  UsersDeleteGpgKeyForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  UsersDeleteGpgKeyForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  UsersDeleteGpgKeyForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  UsersDeleteGpgKeyForAuthenticatedUserError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  UsersDeleteGpgKeyForAuthenticatedUserErrorUnknown(response); }}
}
/// Response for 304.
final class UsersDeleteGpgKeyForAuthenticatedUserError304 extends UsersDeleteGpgKeyForAuthenticatedUserError {const UsersDeleteGpgKeyForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class UsersDeleteGpgKeyForAuthenticatedUserError401 extends UsersDeleteGpgKeyForAuthenticatedUserError {const UsersDeleteGpgKeyForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class UsersDeleteGpgKeyForAuthenticatedUserError403 extends UsersDeleteGpgKeyForAuthenticatedUserError {const UsersDeleteGpgKeyForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class UsersDeleteGpgKeyForAuthenticatedUserError404 extends UsersDeleteGpgKeyForAuthenticatedUserError {const UsersDeleteGpgKeyForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class UsersDeleteGpgKeyForAuthenticatedUserError422 extends UsersDeleteGpgKeyForAuthenticatedUserError {const UsersDeleteGpgKeyForAuthenticatedUserError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class UsersDeleteGpgKeyForAuthenticatedUserErrorUnknown extends UsersDeleteGpgKeyForAuthenticatedUserError {const UsersDeleteGpgKeyForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
