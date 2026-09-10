// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersAddSocialAccountForAuthenticatedUserError {const UsersAddSocialAccountForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static UsersAddSocialAccountForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const UsersAddSocialAccountForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return UsersAddSocialAccountForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return UsersAddSocialAccountForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return UsersAddSocialAccountForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return UsersAddSocialAccountForAuthenticatedUserError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return UsersAddSocialAccountForAuthenticatedUserErrorUnknown(response);
}
}
}
/// Response for 304.
final class UsersAddSocialAccountForAuthenticatedUserError304 extends UsersAddSocialAccountForAuthenticatedUserError {const UsersAddSocialAccountForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class UsersAddSocialAccountForAuthenticatedUserError401 extends UsersAddSocialAccountForAuthenticatedUserError {const UsersAddSocialAccountForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class UsersAddSocialAccountForAuthenticatedUserError403 extends UsersAddSocialAccountForAuthenticatedUserError {const UsersAddSocialAccountForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class UsersAddSocialAccountForAuthenticatedUserError404 extends UsersAddSocialAccountForAuthenticatedUserError {const UsersAddSocialAccountForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class UsersAddSocialAccountForAuthenticatedUserError422 extends UsersAddSocialAccountForAuthenticatedUserError {const UsersAddSocialAccountForAuthenticatedUserError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class UsersAddSocialAccountForAuthenticatedUserErrorUnknown extends UsersAddSocialAccountForAuthenticatedUserError {const UsersAddSocialAccountForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
