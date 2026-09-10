// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersGetAuthenticatedError {const UsersGetAuthenticatedError();

/// Decodes the payload for its declared status and content type.
static UsersGetAuthenticatedError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const UsersGetAuthenticatedError304();case 401:
final json = jsonDecode(response.body);
return  UsersGetAuthenticatedError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  UsersGetAuthenticatedError403(BasicError.fromJson(json as Map<String, dynamic>));default:
return  UsersGetAuthenticatedErrorUnknown(response); }}
}
/// Response for 304.
final class UsersGetAuthenticatedError304 extends UsersGetAuthenticatedError {const UsersGetAuthenticatedError304();

}
/// Response for 401 (application/json).
final class UsersGetAuthenticatedError401 extends UsersGetAuthenticatedError {const UsersGetAuthenticatedError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class UsersGetAuthenticatedError403 extends UsersGetAuthenticatedError {const UsersGetAuthenticatedError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class UsersGetAuthenticatedErrorUnknown extends UsersGetAuthenticatedError {const UsersGetAuthenticatedErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
