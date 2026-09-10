// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersDeleteSocialAccountForAuthenticatedUserError {const UsersDeleteSocialAccountForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static UsersDeleteSocialAccountForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const UsersDeleteSocialAccountForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return UsersDeleteSocialAccountForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return UsersDeleteSocialAccountForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return UsersDeleteSocialAccountForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return UsersDeleteSocialAccountForAuthenticatedUserError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return UsersDeleteSocialAccountForAuthenticatedUserErrorUnknown(response);
}
}
}
/// Response for 304.
final class UsersDeleteSocialAccountForAuthenticatedUserError304 extends UsersDeleteSocialAccountForAuthenticatedUserError {const UsersDeleteSocialAccountForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class UsersDeleteSocialAccountForAuthenticatedUserError401 extends UsersDeleteSocialAccountForAuthenticatedUserError {const UsersDeleteSocialAccountForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class UsersDeleteSocialAccountForAuthenticatedUserError403 extends UsersDeleteSocialAccountForAuthenticatedUserError {const UsersDeleteSocialAccountForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class UsersDeleteSocialAccountForAuthenticatedUserError404 extends UsersDeleteSocialAccountForAuthenticatedUserError {const UsersDeleteSocialAccountForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class UsersDeleteSocialAccountForAuthenticatedUserError422 extends UsersDeleteSocialAccountForAuthenticatedUserError {const UsersDeleteSocialAccountForAuthenticatedUserError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class UsersDeleteSocialAccountForAuthenticatedUserErrorUnknown extends UsersDeleteSocialAccountForAuthenticatedUserError {const UsersDeleteSocialAccountForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
