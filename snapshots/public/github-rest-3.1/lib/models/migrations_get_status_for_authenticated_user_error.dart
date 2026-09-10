// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class MigrationsGetStatusForAuthenticatedUserError {const MigrationsGetStatusForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static MigrationsGetStatusForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const MigrationsGetStatusForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return MigrationsGetStatusForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return MigrationsGetStatusForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return MigrationsGetStatusForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return MigrationsGetStatusForAuthenticatedUserErrorUnknown(response);
}
}
}
/// Response for 304.
final class MigrationsGetStatusForAuthenticatedUserError304 extends MigrationsGetStatusForAuthenticatedUserError {const MigrationsGetStatusForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class MigrationsGetStatusForAuthenticatedUserError401 extends MigrationsGetStatusForAuthenticatedUserError {const MigrationsGetStatusForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class MigrationsGetStatusForAuthenticatedUserError403 extends MigrationsGetStatusForAuthenticatedUserError {const MigrationsGetStatusForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class MigrationsGetStatusForAuthenticatedUserError404 extends MigrationsGetStatusForAuthenticatedUserError {const MigrationsGetStatusForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class MigrationsGetStatusForAuthenticatedUserErrorUnknown extends MigrationsGetStatusForAuthenticatedUserError {const MigrationsGetStatusForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
