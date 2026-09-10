// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodespacesPublishForAuthenticatedUserError {const CodespacesPublishForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static CodespacesPublishForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 401:
final json = jsonDecode(response.body);
return  CodespacesPublishForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  CodespacesPublishForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  CodespacesPublishForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  CodespacesPublishForAuthenticatedUserError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  CodespacesPublishForAuthenticatedUserErrorUnknown(response); }}
}
/// Response for 401 (application/json).
final class CodespacesPublishForAuthenticatedUserError401 extends CodespacesPublishForAuthenticatedUserError {const CodespacesPublishForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class CodespacesPublishForAuthenticatedUserError403 extends CodespacesPublishForAuthenticatedUserError {const CodespacesPublishForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CodespacesPublishForAuthenticatedUserError404 extends CodespacesPublishForAuthenticatedUserError {const CodespacesPublishForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class CodespacesPublishForAuthenticatedUserError422 extends CodespacesPublishForAuthenticatedUserError {const CodespacesPublishForAuthenticatedUserError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodespacesPublishForAuthenticatedUserErrorUnknown extends CodespacesPublishForAuthenticatedUserError {const CodespacesPublishForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
