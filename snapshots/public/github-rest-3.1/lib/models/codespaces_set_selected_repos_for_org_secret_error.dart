// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodespacesSetSelectedReposForOrgSecretError {const CodespacesSetSelectedReposForOrgSecretError();

/// Decodes the payload for its declared status and content type.
static CodespacesSetSelectedReposForOrgSecretError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return  CodespacesSetSelectedReposForOrgSecretError404(BasicError.fromJson(json as Map<String, dynamic>));case 409:
return  const CodespacesSetSelectedReposForOrgSecretError409();default:
return  CodespacesSetSelectedReposForOrgSecretErrorUnknown(response); }}
}
/// Response for 404 (application/json).
final class CodespacesSetSelectedReposForOrgSecretError404 extends CodespacesSetSelectedReposForOrgSecretError {const CodespacesSetSelectedReposForOrgSecretError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 409.
final class CodespacesSetSelectedReposForOrgSecretError409 extends CodespacesSetSelectedReposForOrgSecretError {const CodespacesSetSelectedReposForOrgSecretError409();

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodespacesSetSelectedReposForOrgSecretErrorUnknown extends CodespacesSetSelectedReposForOrgSecretError {const CodespacesSetSelectedReposForOrgSecretErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
