// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersListFollowersForAuthenticatedUserError {const UsersListFollowersForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static UsersListFollowersForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const UsersListFollowersForAuthenticatedUserError304();case 401:
final json = jsonDecode(response.body);
return  UsersListFollowersForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  UsersListFollowersForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));default:
return  UsersListFollowersForAuthenticatedUserErrorUnknown(response); }}
}
/// Response for 304.
final class UsersListFollowersForAuthenticatedUserError304 extends UsersListFollowersForAuthenticatedUserError {const UsersListFollowersForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class UsersListFollowersForAuthenticatedUserError401 extends UsersListFollowersForAuthenticatedUserError {const UsersListFollowersForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class UsersListFollowersForAuthenticatedUserError403 extends UsersListFollowersForAuthenticatedUserError {const UsersListFollowersForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class UsersListFollowersForAuthenticatedUserErrorUnknown extends UsersListFollowersForAuthenticatedUserError {const UsersListFollowersForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
