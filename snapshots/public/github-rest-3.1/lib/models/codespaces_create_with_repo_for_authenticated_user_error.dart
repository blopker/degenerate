// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'codespaces_create_with_repo_for_authenticated_user_response503.dart';import 'scim_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodespacesCreateWithRepoForAuthenticatedUserError {const CodespacesCreateWithRepoForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static CodespacesCreateWithRepoForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json', )) {
final json = jsonDecode(response.body);
return  CodespacesCreateWithRepoForAuthenticatedUserError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); } else if (responseMediaTypeMatches(contentType, 'application/scim+json', )) {
final json = jsonDecode(response.body);
return  CodespacesCreateWithRepoForAuthenticatedUserError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>)); } else {
final json = jsonDecode(response.body);
return  CodespacesCreateWithRepoForAuthenticatedUserError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); }case 401:
final json = jsonDecode(response.body);
return  CodespacesCreateWithRepoForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  CodespacesCreateWithRepoForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  CodespacesCreateWithRepoForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));case 503:
final json = jsonDecode(response.body);
return  CodespacesCreateWithRepoForAuthenticatedUserError503(CodespacesCreateWithRepoForAuthenticatedUserResponse503.fromJson(json as Map<String, dynamic>));default:
return  CodespacesCreateWithRepoForAuthenticatedUserErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class CodespacesCreateWithRepoForAuthenticatedUserError400ApplicationJson extends CodespacesCreateWithRepoForAuthenticatedUserError {const CodespacesCreateWithRepoForAuthenticatedUserError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class CodespacesCreateWithRepoForAuthenticatedUserError400ApplicationScimJson extends CodespacesCreateWithRepoForAuthenticatedUserError {const CodespacesCreateWithRepoForAuthenticatedUserError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 401 (application/json).
final class CodespacesCreateWithRepoForAuthenticatedUserError401 extends CodespacesCreateWithRepoForAuthenticatedUserError {const CodespacesCreateWithRepoForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class CodespacesCreateWithRepoForAuthenticatedUserError403 extends CodespacesCreateWithRepoForAuthenticatedUserError {const CodespacesCreateWithRepoForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CodespacesCreateWithRepoForAuthenticatedUserError404 extends CodespacesCreateWithRepoForAuthenticatedUserError {const CodespacesCreateWithRepoForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 503 (application/json).
final class CodespacesCreateWithRepoForAuthenticatedUserError503 extends CodespacesCreateWithRepoForAuthenticatedUserError {const CodespacesCreateWithRepoForAuthenticatedUserError503(this.data);

/// The decoded response payload.
final CodespacesCreateWithRepoForAuthenticatedUserResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodespacesCreateWithRepoForAuthenticatedUserErrorUnknown extends CodespacesCreateWithRepoForAuthenticatedUserError {const CodespacesCreateWithRepoForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
