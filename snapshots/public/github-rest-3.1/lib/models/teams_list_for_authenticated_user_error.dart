// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class TeamsListForAuthenticatedUserError {const TeamsListForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static TeamsListForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const TeamsListForAuthenticatedUserError304();case 403:
final json = jsonDecode(response.body);
return  TeamsListForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  TeamsListForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));default:
return  TeamsListForAuthenticatedUserErrorUnknown(response); }}
}
/// Response for 304.
final class TeamsListForAuthenticatedUserError304 extends TeamsListForAuthenticatedUserError {const TeamsListForAuthenticatedUserError304();

}
/// Response for 403 (application/json).
final class TeamsListForAuthenticatedUserError403 extends TeamsListForAuthenticatedUserError {const TeamsListForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class TeamsListForAuthenticatedUserError404 extends TeamsListForAuthenticatedUserError {const TeamsListForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class TeamsListForAuthenticatedUserErrorUnknown extends TeamsListForAuthenticatedUserError {const TeamsListForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
