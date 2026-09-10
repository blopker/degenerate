// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class MigrationsUnlockRepoForAuthenticatedUserError {const MigrationsUnlockRepoForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static MigrationsUnlockRepoForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const MigrationsUnlockRepoForAuthenticatedUserError304();case 401:
final json = jsonDecode(response.body);
return  MigrationsUnlockRepoForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  MigrationsUnlockRepoForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  MigrationsUnlockRepoForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));default:
return  MigrationsUnlockRepoForAuthenticatedUserErrorUnknown(response); }}
}
/// Response for 304.
final class MigrationsUnlockRepoForAuthenticatedUserError304 extends MigrationsUnlockRepoForAuthenticatedUserError {const MigrationsUnlockRepoForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class MigrationsUnlockRepoForAuthenticatedUserError401 extends MigrationsUnlockRepoForAuthenticatedUserError {const MigrationsUnlockRepoForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class MigrationsUnlockRepoForAuthenticatedUserError403 extends MigrationsUnlockRepoForAuthenticatedUserError {const MigrationsUnlockRepoForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class MigrationsUnlockRepoForAuthenticatedUserError404 extends MigrationsUnlockRepoForAuthenticatedUserError {const MigrationsUnlockRepoForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class MigrationsUnlockRepoForAuthenticatedUserErrorUnknown extends MigrationsUnlockRepoForAuthenticatedUserError {const MigrationsUnlockRepoForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
