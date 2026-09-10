// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersListEmailsForAuthenticatedUserError {const UsersListEmailsForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static UsersListEmailsForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const UsersListEmailsForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return UsersListEmailsForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return UsersListEmailsForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return UsersListEmailsForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return UsersListEmailsForAuthenticatedUserErrorUnknown(response);
}
}
}
/// Response for 304.
final class UsersListEmailsForAuthenticatedUserError304 extends UsersListEmailsForAuthenticatedUserError {const UsersListEmailsForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class UsersListEmailsForAuthenticatedUserError401 extends UsersListEmailsForAuthenticatedUserError {const UsersListEmailsForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class UsersListEmailsForAuthenticatedUserError403 extends UsersListEmailsForAuthenticatedUserError {const UsersListEmailsForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class UsersListEmailsForAuthenticatedUserError404 extends UsersListEmailsForAuthenticatedUserError {const UsersListEmailsForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class UsersListEmailsForAuthenticatedUserErrorUnknown extends UsersListEmailsForAuthenticatedUserError {const UsersListEmailsForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
