// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersCreateSshSigningKeyForAuthenticatedUserError {const UsersCreateSshSigningKeyForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static UsersCreateSshSigningKeyForAuthenticatedUserError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const UsersCreateSshSigningKeyForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return UsersCreateSshSigningKeyForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return UsersCreateSshSigningKeyForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return UsersCreateSshSigningKeyForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return UsersCreateSshSigningKeyForAuthenticatedUserError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return UsersCreateSshSigningKeyForAuthenticatedUserErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class UsersCreateSshSigningKeyForAuthenticatedUserError304 extends UsersCreateSshSigningKeyForAuthenticatedUserError {const UsersCreateSshSigningKeyForAuthenticatedUserError304();

 }
/// Response for 401 (application/json).
final class UsersCreateSshSigningKeyForAuthenticatedUserError401 extends UsersCreateSshSigningKeyForAuthenticatedUserError {const UsersCreateSshSigningKeyForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class UsersCreateSshSigningKeyForAuthenticatedUserError403 extends UsersCreateSshSigningKeyForAuthenticatedUserError {const UsersCreateSshSigningKeyForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class UsersCreateSshSigningKeyForAuthenticatedUserError404 extends UsersCreateSshSigningKeyForAuthenticatedUserError {const UsersCreateSshSigningKeyForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class UsersCreateSshSigningKeyForAuthenticatedUserError422 extends UsersCreateSshSigningKeyForAuthenticatedUserError {const UsersCreateSshSigningKeyForAuthenticatedUserError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class UsersCreateSshSigningKeyForAuthenticatedUserErrorUnknown extends UsersCreateSshSigningKeyForAuthenticatedUserError {const UsersCreateSshSigningKeyForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
