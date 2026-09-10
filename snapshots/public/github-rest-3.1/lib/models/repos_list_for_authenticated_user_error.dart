// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposListForAuthenticatedUserError {const ReposListForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static ReposListForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const ReposListForAuthenticatedUserError304();case 401:
final json = jsonDecode(response.body);
return  ReposListForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  ReposListForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  ReposListForAuthenticatedUserError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  ReposListForAuthenticatedUserErrorUnknown(response); }}
}
/// Response for 304.
final class ReposListForAuthenticatedUserError304 extends ReposListForAuthenticatedUserError {const ReposListForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class ReposListForAuthenticatedUserError401 extends ReposListForAuthenticatedUserError {const ReposListForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ReposListForAuthenticatedUserError403 extends ReposListForAuthenticatedUserError {const ReposListForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ReposListForAuthenticatedUserError422 extends ReposListForAuthenticatedUserError {const ReposListForAuthenticatedUserError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposListForAuthenticatedUserErrorUnknown extends ReposListForAuthenticatedUserError {const ReposListForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
