// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersGetSshSigningKeyForAuthenticatedUserError {const UsersGetSshSigningKeyForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static UsersGetSshSigningKeyForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const UsersGetSshSigningKeyForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return UsersGetSshSigningKeyForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return UsersGetSshSigningKeyForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return UsersGetSshSigningKeyForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return UsersGetSshSigningKeyForAuthenticatedUserErrorUnknown(response);
}
}
}
/// Response for 304.
final class UsersGetSshSigningKeyForAuthenticatedUserError304 extends UsersGetSshSigningKeyForAuthenticatedUserError {const UsersGetSshSigningKeyForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class UsersGetSshSigningKeyForAuthenticatedUserError401 extends UsersGetSshSigningKeyForAuthenticatedUserError {const UsersGetSshSigningKeyForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class UsersGetSshSigningKeyForAuthenticatedUserError403 extends UsersGetSshSigningKeyForAuthenticatedUserError {const UsersGetSshSigningKeyForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class UsersGetSshSigningKeyForAuthenticatedUserError404 extends UsersGetSshSigningKeyForAuthenticatedUserError {const UsersGetSshSigningKeyForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class UsersGetSshSigningKeyForAuthenticatedUserErrorUnknown extends UsersGetSshSigningKeyForAuthenticatedUserError {const UsersGetSshSigningKeyForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
