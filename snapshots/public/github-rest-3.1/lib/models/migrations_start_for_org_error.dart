// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class MigrationsStartForOrgError {const MigrationsStartForOrgError();

/// Decodes the payload for its declared status and content type.
static MigrationsStartForOrgError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return MigrationsStartForOrgError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return MigrationsStartForOrgError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return MigrationsStartForOrgErrorUnknown(response);
}
}
}
/// Response for 404 (application/json).
final class MigrationsStartForOrgError404 extends MigrationsStartForOrgError {const MigrationsStartForOrgError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class MigrationsStartForOrgError422 extends MigrationsStartForOrgError {const MigrationsStartForOrgError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class MigrationsStartForOrgErrorUnknown extends MigrationsStartForOrgError {const MigrationsStartForOrgErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
