// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersListPublicEmailsForAuthenticatedUserError {const UsersListPublicEmailsForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static UsersListPublicEmailsForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const UsersListPublicEmailsForAuthenticatedUserError304();case 401:
final json = jsonDecode(response.body);
return  UsersListPublicEmailsForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  UsersListPublicEmailsForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  UsersListPublicEmailsForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));default:
return  UsersListPublicEmailsForAuthenticatedUserErrorUnknown(response); }}
}
/// Response for 304.
final class UsersListPublicEmailsForAuthenticatedUserError304 extends UsersListPublicEmailsForAuthenticatedUserError {const UsersListPublicEmailsForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class UsersListPublicEmailsForAuthenticatedUserError401 extends UsersListPublicEmailsForAuthenticatedUserError {const UsersListPublicEmailsForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class UsersListPublicEmailsForAuthenticatedUserError403 extends UsersListPublicEmailsForAuthenticatedUserError {const UsersListPublicEmailsForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class UsersListPublicEmailsForAuthenticatedUserError404 extends UsersListPublicEmailsForAuthenticatedUserError {const UsersListPublicEmailsForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class UsersListPublicEmailsForAuthenticatedUserErrorUnknown extends UsersListPublicEmailsForAuthenticatedUserError {const UsersListPublicEmailsForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
