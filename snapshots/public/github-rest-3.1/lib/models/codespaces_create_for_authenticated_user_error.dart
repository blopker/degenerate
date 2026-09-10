// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'codespaces_create_for_authenticated_user_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodespacesCreateForAuthenticatedUserError {const CodespacesCreateForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static CodespacesCreateForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 401:
final json = jsonDecode(response.body);
return  CodespacesCreateForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  CodespacesCreateForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  CodespacesCreateForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));case 503:
final json = jsonDecode(response.body);
return  CodespacesCreateForAuthenticatedUserError503(CodespacesCreateForAuthenticatedUserResponse503.fromJson(json as Map<String, dynamic>));default:
return  CodespacesCreateForAuthenticatedUserErrorUnknown(response); }}
}
/// Response for 401 (application/json).
final class CodespacesCreateForAuthenticatedUserError401 extends CodespacesCreateForAuthenticatedUserError {const CodespacesCreateForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class CodespacesCreateForAuthenticatedUserError403 extends CodespacesCreateForAuthenticatedUserError {const CodespacesCreateForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CodespacesCreateForAuthenticatedUserError404 extends CodespacesCreateForAuthenticatedUserError {const CodespacesCreateForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 503 (application/json).
final class CodespacesCreateForAuthenticatedUserError503 extends CodespacesCreateForAuthenticatedUserError {const CodespacesCreateForAuthenticatedUserError503(this.data);

/// The decoded response payload.
final CodespacesCreateForAuthenticatedUserResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodespacesCreateForAuthenticatedUserErrorUnknown extends CodespacesCreateForAuthenticatedUserError {const CodespacesCreateForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
