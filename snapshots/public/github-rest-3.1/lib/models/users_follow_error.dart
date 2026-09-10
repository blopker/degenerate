// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersFollowError {const UsersFollowError();

/// Decodes the payload for its declared status and content type.
static UsersFollowError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const UsersFollowError304();case 401:
final json = jsonDecode(response.body);
return  UsersFollowError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  UsersFollowError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  UsersFollowError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  UsersFollowError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  UsersFollowErrorUnknown(response); }}
}
/// Response for 304.
final class UsersFollowError304 extends UsersFollowError {const UsersFollowError304();

}
/// Response for 401 (application/json).
final class UsersFollowError401 extends UsersFollowError {const UsersFollowError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class UsersFollowError403 extends UsersFollowError {const UsersFollowError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class UsersFollowError404 extends UsersFollowError {const UsersFollowError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class UsersFollowError422 extends UsersFollowError {const UsersFollowError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class UsersFollowErrorUnknown extends UsersFollowError {const UsersFollowErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
