// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersListGpgKeysForAuthenticatedUserError {const UsersListGpgKeysForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static UsersListGpgKeysForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const UsersListGpgKeysForAuthenticatedUserError304();case 401:
final json = jsonDecode(response.body);
return  UsersListGpgKeysForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  UsersListGpgKeysForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  UsersListGpgKeysForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));default:
return  UsersListGpgKeysForAuthenticatedUserErrorUnknown(response); }}
}
/// Response for 304.
final class UsersListGpgKeysForAuthenticatedUserError304 extends UsersListGpgKeysForAuthenticatedUserError {const UsersListGpgKeysForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class UsersListGpgKeysForAuthenticatedUserError401 extends UsersListGpgKeysForAuthenticatedUserError {const UsersListGpgKeysForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class UsersListGpgKeysForAuthenticatedUserError403 extends UsersListGpgKeysForAuthenticatedUserError {const UsersListGpgKeysForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class UsersListGpgKeysForAuthenticatedUserError404 extends UsersListGpgKeysForAuthenticatedUserError {const UsersListGpgKeysForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class UsersListGpgKeysForAuthenticatedUserErrorUnknown extends UsersListGpgKeysForAuthenticatedUserError {const UsersListGpgKeysForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
