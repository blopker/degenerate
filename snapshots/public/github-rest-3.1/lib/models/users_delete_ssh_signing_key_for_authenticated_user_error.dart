// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersDeleteSshSigningKeyForAuthenticatedUserError {const UsersDeleteSshSigningKeyForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static UsersDeleteSshSigningKeyForAuthenticatedUserError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const UsersDeleteSshSigningKeyForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return UsersDeleteSshSigningKeyForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return UsersDeleteSshSigningKeyForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return UsersDeleteSshSigningKeyForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return UsersDeleteSshSigningKeyForAuthenticatedUserErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class UsersDeleteSshSigningKeyForAuthenticatedUserError304 extends UsersDeleteSshSigningKeyForAuthenticatedUserError {const UsersDeleteSshSigningKeyForAuthenticatedUserError304();

 }
/// Response for 401 (application/json).
final class UsersDeleteSshSigningKeyForAuthenticatedUserError401 extends UsersDeleteSshSigningKeyForAuthenticatedUserError {const UsersDeleteSshSigningKeyForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class UsersDeleteSshSigningKeyForAuthenticatedUserError403 extends UsersDeleteSshSigningKeyForAuthenticatedUserError {const UsersDeleteSshSigningKeyForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class UsersDeleteSshSigningKeyForAuthenticatedUserError404 extends UsersDeleteSshSigningKeyForAuthenticatedUserError {const UsersDeleteSshSigningKeyForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class UsersDeleteSshSigningKeyForAuthenticatedUserErrorUnknown extends UsersDeleteSshSigningKeyForAuthenticatedUserError {const UsersDeleteSshSigningKeyForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
