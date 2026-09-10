// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersCreatePublicSshKeyForAuthenticatedUserError {const UsersCreatePublicSshKeyForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static UsersCreatePublicSshKeyForAuthenticatedUserError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const UsersCreatePublicSshKeyForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return UsersCreatePublicSshKeyForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return UsersCreatePublicSshKeyForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return UsersCreatePublicSshKeyForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return UsersCreatePublicSshKeyForAuthenticatedUserError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return UsersCreatePublicSshKeyForAuthenticatedUserErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class UsersCreatePublicSshKeyForAuthenticatedUserError304 extends UsersCreatePublicSshKeyForAuthenticatedUserError {const UsersCreatePublicSshKeyForAuthenticatedUserError304();

 }
/// Response for 401 (application/json).
final class UsersCreatePublicSshKeyForAuthenticatedUserError401 extends UsersCreatePublicSshKeyForAuthenticatedUserError {const UsersCreatePublicSshKeyForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class UsersCreatePublicSshKeyForAuthenticatedUserError403 extends UsersCreatePublicSshKeyForAuthenticatedUserError {const UsersCreatePublicSshKeyForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class UsersCreatePublicSshKeyForAuthenticatedUserError404 extends UsersCreatePublicSshKeyForAuthenticatedUserError {const UsersCreatePublicSshKeyForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class UsersCreatePublicSshKeyForAuthenticatedUserError422 extends UsersCreatePublicSshKeyForAuthenticatedUserError {const UsersCreatePublicSshKeyForAuthenticatedUserError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class UsersCreatePublicSshKeyForAuthenticatedUserErrorUnknown extends UsersCreatePublicSshKeyForAuthenticatedUserError {const UsersCreatePublicSshKeyForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
