// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersBlockError {const UsersBlockError();

/// Decodes the payload for its declared status and content type.
static UsersBlockError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const UsersBlockError304();case 401:
final json = jsonDecode(response.body);
return  UsersBlockError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  UsersBlockError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  UsersBlockError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  UsersBlockError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  UsersBlockErrorUnknown(response); }}
}
/// Response for 304.
final class UsersBlockError304 extends UsersBlockError {const UsersBlockError304();

}
/// Response for 401 (application/json).
final class UsersBlockError401 extends UsersBlockError {const UsersBlockError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class UsersBlockError403 extends UsersBlockError {const UsersBlockError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class UsersBlockError404 extends UsersBlockError {const UsersBlockError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class UsersBlockError422 extends UsersBlockError {const UsersBlockError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class UsersBlockErrorUnknown extends UsersBlockError {const UsersBlockErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
