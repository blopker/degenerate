// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersListFollowedByAuthenticatedUserError {const UsersListFollowedByAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static UsersListFollowedByAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const UsersListFollowedByAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return UsersListFollowedByAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return UsersListFollowedByAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
default:
return UsersListFollowedByAuthenticatedUserErrorUnknown(response);
}
}
}
/// Response for 304.
final class UsersListFollowedByAuthenticatedUserError304 extends UsersListFollowedByAuthenticatedUserError {const UsersListFollowedByAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class UsersListFollowedByAuthenticatedUserError401 extends UsersListFollowedByAuthenticatedUserError {const UsersListFollowedByAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class UsersListFollowedByAuthenticatedUserError403 extends UsersListFollowedByAuthenticatedUserError {const UsersListFollowedByAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class UsersListFollowedByAuthenticatedUserErrorUnknown extends UsersListFollowedByAuthenticatedUserError {const UsersListFollowedByAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
