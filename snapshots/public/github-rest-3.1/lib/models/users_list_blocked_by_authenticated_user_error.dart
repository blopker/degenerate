// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersListBlockedByAuthenticatedUserError {const UsersListBlockedByAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static UsersListBlockedByAuthenticatedUserError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const UsersListBlockedByAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return UsersListBlockedByAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return UsersListBlockedByAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return UsersListBlockedByAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return UsersListBlockedByAuthenticatedUserErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class UsersListBlockedByAuthenticatedUserError304 extends UsersListBlockedByAuthenticatedUserError {const UsersListBlockedByAuthenticatedUserError304();

 }
/// Response for 401 (application/json).
final class UsersListBlockedByAuthenticatedUserError401 extends UsersListBlockedByAuthenticatedUserError {const UsersListBlockedByAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class UsersListBlockedByAuthenticatedUserError403 extends UsersListBlockedByAuthenticatedUserError {const UsersListBlockedByAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class UsersListBlockedByAuthenticatedUserError404 extends UsersListBlockedByAuthenticatedUserError {const UsersListBlockedByAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class UsersListBlockedByAuthenticatedUserErrorUnknown extends UsersListBlockedByAuthenticatedUserError {const UsersListBlockedByAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
