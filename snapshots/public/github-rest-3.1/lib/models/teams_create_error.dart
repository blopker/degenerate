// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class TeamsCreateError {const TeamsCreateError();

/// Decodes the payload for its declared status and content type.
static TeamsCreateError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return TeamsCreateError403(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return TeamsCreateError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return TeamsCreateErrorUnknown(response);
}
}
}
/// Response for 403 (application/json).
final class TeamsCreateError403 extends TeamsCreateError {const TeamsCreateError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class TeamsCreateError422 extends TeamsCreateError {const TeamsCreateError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class TeamsCreateErrorUnknown extends TeamsCreateError {const TeamsCreateErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
