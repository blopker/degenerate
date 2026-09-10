// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersListSshSigningKeysForAuthenticatedUserError {const UsersListSshSigningKeysForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static UsersListSshSigningKeysForAuthenticatedUserError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const UsersListSshSigningKeysForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return UsersListSshSigningKeysForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return UsersListSshSigningKeysForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return UsersListSshSigningKeysForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return UsersListSshSigningKeysForAuthenticatedUserErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class UsersListSshSigningKeysForAuthenticatedUserError304 extends UsersListSshSigningKeysForAuthenticatedUserError {const UsersListSshSigningKeysForAuthenticatedUserError304();

 }
/// Response for 401 (application/json).
final class UsersListSshSigningKeysForAuthenticatedUserError401 extends UsersListSshSigningKeysForAuthenticatedUserError {const UsersListSshSigningKeysForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class UsersListSshSigningKeysForAuthenticatedUserError403 extends UsersListSshSigningKeysForAuthenticatedUserError {const UsersListSshSigningKeysForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class UsersListSshSigningKeysForAuthenticatedUserError404 extends UsersListSshSigningKeysForAuthenticatedUserError {const UsersListSshSigningKeysForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class UsersListSshSigningKeysForAuthenticatedUserErrorUnknown extends UsersListSshSigningKeysForAuthenticatedUserError {const UsersListSshSigningKeysForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
