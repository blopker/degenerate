// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class MigrationsGetArchiveForAuthenticatedUserError {const MigrationsGetArchiveForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static MigrationsGetArchiveForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 302:
return  const MigrationsGetArchiveForAuthenticatedUserError302();case 304:
return  const MigrationsGetArchiveForAuthenticatedUserError304();case 401:
final json = jsonDecode(response.body);
return  MigrationsGetArchiveForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  MigrationsGetArchiveForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));default:
return  MigrationsGetArchiveForAuthenticatedUserErrorUnknown(response); }}
}
/// Response for 302.
final class MigrationsGetArchiveForAuthenticatedUserError302 extends MigrationsGetArchiveForAuthenticatedUserError {const MigrationsGetArchiveForAuthenticatedUserError302();

}
/// Response for 304.
final class MigrationsGetArchiveForAuthenticatedUserError304 extends MigrationsGetArchiveForAuthenticatedUserError {const MigrationsGetArchiveForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class MigrationsGetArchiveForAuthenticatedUserError401 extends MigrationsGetArchiveForAuthenticatedUserError {const MigrationsGetArchiveForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class MigrationsGetArchiveForAuthenticatedUserError403 extends MigrationsGetArchiveForAuthenticatedUserError {const MigrationsGetArchiveForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class MigrationsGetArchiveForAuthenticatedUserErrorUnknown extends MigrationsGetArchiveForAuthenticatedUserError {const MigrationsGetArchiveForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
