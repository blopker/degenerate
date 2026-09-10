// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersSetPrimaryEmailVisibilityForAuthenticatedUserError {const UsersSetPrimaryEmailVisibilityForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static UsersSetPrimaryEmailVisibilityForAuthenticatedUserError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const UsersSetPrimaryEmailVisibilityForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return UsersSetPrimaryEmailVisibilityForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return UsersSetPrimaryEmailVisibilityForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return UsersSetPrimaryEmailVisibilityForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return UsersSetPrimaryEmailVisibilityForAuthenticatedUserError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return UsersSetPrimaryEmailVisibilityForAuthenticatedUserErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class UsersSetPrimaryEmailVisibilityForAuthenticatedUserError304 extends UsersSetPrimaryEmailVisibilityForAuthenticatedUserError {const UsersSetPrimaryEmailVisibilityForAuthenticatedUserError304();

 }
/// Response for 401 (application/json).
final class UsersSetPrimaryEmailVisibilityForAuthenticatedUserError401 extends UsersSetPrimaryEmailVisibilityForAuthenticatedUserError {const UsersSetPrimaryEmailVisibilityForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class UsersSetPrimaryEmailVisibilityForAuthenticatedUserError403 extends UsersSetPrimaryEmailVisibilityForAuthenticatedUserError {const UsersSetPrimaryEmailVisibilityForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class UsersSetPrimaryEmailVisibilityForAuthenticatedUserError404 extends UsersSetPrimaryEmailVisibilityForAuthenticatedUserError {const UsersSetPrimaryEmailVisibilityForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class UsersSetPrimaryEmailVisibilityForAuthenticatedUserError422 extends UsersSetPrimaryEmailVisibilityForAuthenticatedUserError {const UsersSetPrimaryEmailVisibilityForAuthenticatedUserError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class UsersSetPrimaryEmailVisibilityForAuthenticatedUserErrorUnknown extends UsersSetPrimaryEmailVisibilityForAuthenticatedUserError {const UsersSetPrimaryEmailVisibilityForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
