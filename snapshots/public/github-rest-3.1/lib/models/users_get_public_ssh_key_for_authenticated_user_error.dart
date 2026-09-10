// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersGetPublicSshKeyForAuthenticatedUserError {const UsersGetPublicSshKeyForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static UsersGetPublicSshKeyForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const UsersGetPublicSshKeyForAuthenticatedUserError304();case 401:
final json = jsonDecode(response.body);
return  UsersGetPublicSshKeyForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  UsersGetPublicSshKeyForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  UsersGetPublicSshKeyForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));default:
return  UsersGetPublicSshKeyForAuthenticatedUserErrorUnknown(response); }}
}
/// Response for 304.
final class UsersGetPublicSshKeyForAuthenticatedUserError304 extends UsersGetPublicSshKeyForAuthenticatedUserError {const UsersGetPublicSshKeyForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class UsersGetPublicSshKeyForAuthenticatedUserError401 extends UsersGetPublicSshKeyForAuthenticatedUserError {const UsersGetPublicSshKeyForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class UsersGetPublicSshKeyForAuthenticatedUserError403 extends UsersGetPublicSshKeyForAuthenticatedUserError {const UsersGetPublicSshKeyForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class UsersGetPublicSshKeyForAuthenticatedUserError404 extends UsersGetPublicSshKeyForAuthenticatedUserError {const UsersGetPublicSshKeyForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class UsersGetPublicSshKeyForAuthenticatedUserErrorUnknown extends UsersGetPublicSshKeyForAuthenticatedUserError {const UsersGetPublicSshKeyForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
