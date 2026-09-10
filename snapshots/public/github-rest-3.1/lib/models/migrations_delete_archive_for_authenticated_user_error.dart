// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class MigrationsDeleteArchiveForAuthenticatedUserError {const MigrationsDeleteArchiveForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static MigrationsDeleteArchiveForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const MigrationsDeleteArchiveForAuthenticatedUserError304();case 401:
final json = jsonDecode(response.body);
return  MigrationsDeleteArchiveForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  MigrationsDeleteArchiveForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  MigrationsDeleteArchiveForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));default:
return  MigrationsDeleteArchiveForAuthenticatedUserErrorUnknown(response); }}
}
/// Response for 304.
final class MigrationsDeleteArchiveForAuthenticatedUserError304 extends MigrationsDeleteArchiveForAuthenticatedUserError {const MigrationsDeleteArchiveForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class MigrationsDeleteArchiveForAuthenticatedUserError401 extends MigrationsDeleteArchiveForAuthenticatedUserError {const MigrationsDeleteArchiveForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class MigrationsDeleteArchiveForAuthenticatedUserError403 extends MigrationsDeleteArchiveForAuthenticatedUserError {const MigrationsDeleteArchiveForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class MigrationsDeleteArchiveForAuthenticatedUserError404 extends MigrationsDeleteArchiveForAuthenticatedUserError {const MigrationsDeleteArchiveForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class MigrationsDeleteArchiveForAuthenticatedUserErrorUnknown extends MigrationsDeleteArchiveForAuthenticatedUserError {const MigrationsDeleteArchiveForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
