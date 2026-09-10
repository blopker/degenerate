// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersAddEmailForAuthenticatedUserError {const UsersAddEmailForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static UsersAddEmailForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const UsersAddEmailForAuthenticatedUserError304();case 401:
final json = jsonDecode(response.body);
return  UsersAddEmailForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  UsersAddEmailForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  UsersAddEmailForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  UsersAddEmailForAuthenticatedUserError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  UsersAddEmailForAuthenticatedUserErrorUnknown(response); }}
}
/// Response for 304.
final class UsersAddEmailForAuthenticatedUserError304 extends UsersAddEmailForAuthenticatedUserError {const UsersAddEmailForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class UsersAddEmailForAuthenticatedUserError401 extends UsersAddEmailForAuthenticatedUserError {const UsersAddEmailForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class UsersAddEmailForAuthenticatedUserError403 extends UsersAddEmailForAuthenticatedUserError {const UsersAddEmailForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class UsersAddEmailForAuthenticatedUserError404 extends UsersAddEmailForAuthenticatedUserError {const UsersAddEmailForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class UsersAddEmailForAuthenticatedUserError422 extends UsersAddEmailForAuthenticatedUserError {const UsersAddEmailForAuthenticatedUserError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class UsersAddEmailForAuthenticatedUserErrorUnknown extends UsersAddEmailForAuthenticatedUserError {const UsersAddEmailForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
