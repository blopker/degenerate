// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersDeletePublicSshKeyForAuthenticatedUserError {const UsersDeletePublicSshKeyForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static UsersDeletePublicSshKeyForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const UsersDeletePublicSshKeyForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return UsersDeletePublicSshKeyForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return UsersDeletePublicSshKeyForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return UsersDeletePublicSshKeyForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return UsersDeletePublicSshKeyForAuthenticatedUserErrorUnknown(response);
}
}
}
/// Response for 304.
final class UsersDeletePublicSshKeyForAuthenticatedUserError304 extends UsersDeletePublicSshKeyForAuthenticatedUserError {const UsersDeletePublicSshKeyForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class UsersDeletePublicSshKeyForAuthenticatedUserError401 extends UsersDeletePublicSshKeyForAuthenticatedUserError {const UsersDeletePublicSshKeyForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class UsersDeletePublicSshKeyForAuthenticatedUserError403 extends UsersDeletePublicSshKeyForAuthenticatedUserError {const UsersDeletePublicSshKeyForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class UsersDeletePublicSshKeyForAuthenticatedUserError404 extends UsersDeletePublicSshKeyForAuthenticatedUserError {const UsersDeletePublicSshKeyForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class UsersDeletePublicSshKeyForAuthenticatedUserErrorUnknown extends UsersDeletePublicSshKeyForAuthenticatedUserError {const UsersDeletePublicSshKeyForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
