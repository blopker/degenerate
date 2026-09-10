// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class MigrationsListForAuthenticatedUserError {const MigrationsListForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static MigrationsListForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const MigrationsListForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return MigrationsListForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return MigrationsListForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
default:
return MigrationsListForAuthenticatedUserErrorUnknown(response);
}
}
}
/// Response for 304.
final class MigrationsListForAuthenticatedUserError304 extends MigrationsListForAuthenticatedUserError {const MigrationsListForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class MigrationsListForAuthenticatedUserError401 extends MigrationsListForAuthenticatedUserError {const MigrationsListForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class MigrationsListForAuthenticatedUserError403 extends MigrationsListForAuthenticatedUserError {const MigrationsListForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class MigrationsListForAuthenticatedUserErrorUnknown extends MigrationsListForAuthenticatedUserError {const MigrationsListForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
