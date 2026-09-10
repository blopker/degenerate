// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersListSocialAccountsForAuthenticatedUserError {const UsersListSocialAccountsForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static UsersListSocialAccountsForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const UsersListSocialAccountsForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return UsersListSocialAccountsForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return UsersListSocialAccountsForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return UsersListSocialAccountsForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return UsersListSocialAccountsForAuthenticatedUserErrorUnknown(response);
}
}
}
/// Response for 304.
final class UsersListSocialAccountsForAuthenticatedUserError304 extends UsersListSocialAccountsForAuthenticatedUserError {const UsersListSocialAccountsForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class UsersListSocialAccountsForAuthenticatedUserError401 extends UsersListSocialAccountsForAuthenticatedUserError {const UsersListSocialAccountsForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class UsersListSocialAccountsForAuthenticatedUserError403 extends UsersListSocialAccountsForAuthenticatedUserError {const UsersListSocialAccountsForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class UsersListSocialAccountsForAuthenticatedUserError404 extends UsersListSocialAccountsForAuthenticatedUserError {const UsersListSocialAccountsForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class UsersListSocialAccountsForAuthenticatedUserErrorUnknown extends UsersListSocialAccountsForAuthenticatedUserError {const UsersListSocialAccountsForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
