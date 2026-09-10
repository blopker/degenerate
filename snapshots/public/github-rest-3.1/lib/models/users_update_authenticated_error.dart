// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersUpdateAuthenticatedError {const UsersUpdateAuthenticatedError();

/// Decodes the payload for its declared status and content type.
static UsersUpdateAuthenticatedError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const UsersUpdateAuthenticatedError304();
case 401:
final json = jsonDecode(response.body);
return UsersUpdateAuthenticatedError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return UsersUpdateAuthenticatedError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return UsersUpdateAuthenticatedError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return UsersUpdateAuthenticatedError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return UsersUpdateAuthenticatedErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class UsersUpdateAuthenticatedError304 extends UsersUpdateAuthenticatedError {const UsersUpdateAuthenticatedError304();

 }
/// Response for 401 (application/json).
final class UsersUpdateAuthenticatedError401 extends UsersUpdateAuthenticatedError {const UsersUpdateAuthenticatedError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class UsersUpdateAuthenticatedError403 extends UsersUpdateAuthenticatedError {const UsersUpdateAuthenticatedError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class UsersUpdateAuthenticatedError404 extends UsersUpdateAuthenticatedError {const UsersUpdateAuthenticatedError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class UsersUpdateAuthenticatedError422 extends UsersUpdateAuthenticatedError {const UsersUpdateAuthenticatedError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class UsersUpdateAuthenticatedErrorUnknown extends UsersUpdateAuthenticatedError {const UsersUpdateAuthenticatedErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
