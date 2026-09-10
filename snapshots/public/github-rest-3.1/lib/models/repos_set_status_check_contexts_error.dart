// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposSetStatusCheckContextsError {const ReposSetStatusCheckContextsError();

/// Decodes the payload for its declared status and content type.
static ReposSetStatusCheckContextsError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return ReposSetStatusCheckContextsError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return ReposSetStatusCheckContextsError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return ReposSetStatusCheckContextsErrorUnknown(response);
}
}
}
/// Response for 404 (application/json).
final class ReposSetStatusCheckContextsError404 extends ReposSetStatusCheckContextsError {const ReposSetStatusCheckContextsError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ReposSetStatusCheckContextsError422 extends ReposSetStatusCheckContextsError {const ReposSetStatusCheckContextsError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposSetStatusCheckContextsErrorUnknown extends ReposSetStatusCheckContextsError {const ReposSetStatusCheckContextsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
