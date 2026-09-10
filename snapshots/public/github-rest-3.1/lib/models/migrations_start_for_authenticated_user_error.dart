// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class MigrationsStartForAuthenticatedUserError {const MigrationsStartForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static MigrationsStartForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const MigrationsStartForAuthenticatedUserError304();case 401:
final json = jsonDecode(response.body);
return  MigrationsStartForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  MigrationsStartForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  MigrationsStartForAuthenticatedUserError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  MigrationsStartForAuthenticatedUserErrorUnknown(response); }}
}
/// Response for 304.
final class MigrationsStartForAuthenticatedUserError304 extends MigrationsStartForAuthenticatedUserError {const MigrationsStartForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class MigrationsStartForAuthenticatedUserError401 extends MigrationsStartForAuthenticatedUserError {const MigrationsStartForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class MigrationsStartForAuthenticatedUserError403 extends MigrationsStartForAuthenticatedUserError {const MigrationsStartForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class MigrationsStartForAuthenticatedUserError422 extends MigrationsStartForAuthenticatedUserError {const MigrationsStartForAuthenticatedUserError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class MigrationsStartForAuthenticatedUserErrorUnknown extends MigrationsStartForAuthenticatedUserError {const MigrationsStartForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
