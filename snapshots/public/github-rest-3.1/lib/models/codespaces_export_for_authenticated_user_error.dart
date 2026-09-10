// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodespacesExportForAuthenticatedUserError {const CodespacesExportForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static CodespacesExportForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 401:
final json = jsonDecode(response.body);
return  CodespacesExportForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  CodespacesExportForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  CodespacesExportForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  CodespacesExportForAuthenticatedUserError422(ValidationError.fromJson(json as Map<String, dynamic>));case 500:
final json = jsonDecode(response.body);
return  CodespacesExportForAuthenticatedUserError500(BasicError.fromJson(json as Map<String, dynamic>));default:
return  CodespacesExportForAuthenticatedUserErrorUnknown(response); }}
}
/// Response for 401 (application/json).
final class CodespacesExportForAuthenticatedUserError401 extends CodespacesExportForAuthenticatedUserError {const CodespacesExportForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class CodespacesExportForAuthenticatedUserError403 extends CodespacesExportForAuthenticatedUserError {const CodespacesExportForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CodespacesExportForAuthenticatedUserError404 extends CodespacesExportForAuthenticatedUserError {const CodespacesExportForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class CodespacesExportForAuthenticatedUserError422 extends CodespacesExportForAuthenticatedUserError {const CodespacesExportForAuthenticatedUserError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// Response for 500 (application/json).
final class CodespacesExportForAuthenticatedUserError500 extends CodespacesExportForAuthenticatedUserError {const CodespacesExportForAuthenticatedUserError500(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodespacesExportForAuthenticatedUserErrorUnknown extends CodespacesExportForAuthenticatedUserError {const CodespacesExportForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
