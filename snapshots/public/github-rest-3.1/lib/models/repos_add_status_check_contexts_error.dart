// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposAddStatusCheckContextsError {const ReposAddStatusCheckContextsError();

/// Decodes the payload for its declared status and content type.
static ReposAddStatusCheckContextsError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return ReposAddStatusCheckContextsError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return ReposAddStatusCheckContextsError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return ReposAddStatusCheckContextsError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return ReposAddStatusCheckContextsErrorUnknown(response);
}
}
}
/// Response for 403 (application/json).
final class ReposAddStatusCheckContextsError403 extends ReposAddStatusCheckContextsError {const ReposAddStatusCheckContextsError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class ReposAddStatusCheckContextsError404 extends ReposAddStatusCheckContextsError {const ReposAddStatusCheckContextsError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ReposAddStatusCheckContextsError422 extends ReposAddStatusCheckContextsError {const ReposAddStatusCheckContextsError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposAddStatusCheckContextsErrorUnknown extends ReposAddStatusCheckContextsError {const ReposAddStatusCheckContextsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
