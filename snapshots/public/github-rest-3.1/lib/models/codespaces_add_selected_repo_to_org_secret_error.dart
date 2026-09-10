// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodespacesAddSelectedRepoToOrgSecretError {const CodespacesAddSelectedRepoToOrgSecretError();

/// Decodes the payload for its declared status and content type.
static CodespacesAddSelectedRepoToOrgSecretError parse(ApiResponse response) { switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return CodespacesAddSelectedRepoToOrgSecretError404(BasicError.fromJson(json as Map<String, dynamic>));
case 409:
return const CodespacesAddSelectedRepoToOrgSecretError409();
case 422:
final json = jsonDecode(response.body);
return CodespacesAddSelectedRepoToOrgSecretError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return CodespacesAddSelectedRepoToOrgSecretErrorUnknown(response);
}
 } 
 }
/// Response for 404 (application/json).
final class CodespacesAddSelectedRepoToOrgSecretError404 extends CodespacesAddSelectedRepoToOrgSecretError {const CodespacesAddSelectedRepoToOrgSecretError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 409.
final class CodespacesAddSelectedRepoToOrgSecretError409 extends CodespacesAddSelectedRepoToOrgSecretError {const CodespacesAddSelectedRepoToOrgSecretError409();

 }
/// Response for 422 (application/json).
final class CodespacesAddSelectedRepoToOrgSecretError422 extends CodespacesAddSelectedRepoToOrgSecretError {const CodespacesAddSelectedRepoToOrgSecretError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class CodespacesAddSelectedRepoToOrgSecretErrorUnknown extends CodespacesAddSelectedRepoToOrgSecretError {const CodespacesAddSelectedRepoToOrgSecretErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
