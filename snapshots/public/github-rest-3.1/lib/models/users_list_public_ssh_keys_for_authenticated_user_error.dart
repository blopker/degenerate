// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersListPublicSshKeysForAuthenticatedUserError {const UsersListPublicSshKeysForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static UsersListPublicSshKeysForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const UsersListPublicSshKeysForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return UsersListPublicSshKeysForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return UsersListPublicSshKeysForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return UsersListPublicSshKeysForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return UsersListPublicSshKeysForAuthenticatedUserErrorUnknown(response);
}
}
}
/// Response for 304.
final class UsersListPublicSshKeysForAuthenticatedUserError304 extends UsersListPublicSshKeysForAuthenticatedUserError {const UsersListPublicSshKeysForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class UsersListPublicSshKeysForAuthenticatedUserError401 extends UsersListPublicSshKeysForAuthenticatedUserError {const UsersListPublicSshKeysForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class UsersListPublicSshKeysForAuthenticatedUserError403 extends UsersListPublicSshKeysForAuthenticatedUserError {const UsersListPublicSshKeysForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class UsersListPublicSshKeysForAuthenticatedUserError404 extends UsersListPublicSshKeysForAuthenticatedUserError {const UsersListPublicSshKeysForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class UsersListPublicSshKeysForAuthenticatedUserErrorUnknown extends UsersListPublicSshKeysForAuthenticatedUserError {const UsersListPublicSshKeysForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
