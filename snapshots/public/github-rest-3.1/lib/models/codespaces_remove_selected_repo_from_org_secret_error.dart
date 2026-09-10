// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodespacesRemoveSelectedRepoFromOrgSecretError {const CodespacesRemoveSelectedRepoFromOrgSecretError();

/// Decodes the payload for its declared status and content type.
static CodespacesRemoveSelectedRepoFromOrgSecretError parse(ApiResponse response) { switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return CodespacesRemoveSelectedRepoFromOrgSecretError404(BasicError.fromJson(json as Map<String, dynamic>));
case 409:
return const CodespacesRemoveSelectedRepoFromOrgSecretError409();
case 422:
final json = jsonDecode(response.body);
return CodespacesRemoveSelectedRepoFromOrgSecretError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return CodespacesRemoveSelectedRepoFromOrgSecretErrorUnknown(response);
}
 } 
 }
/// Response for 404 (application/json).
final class CodespacesRemoveSelectedRepoFromOrgSecretError404 extends CodespacesRemoveSelectedRepoFromOrgSecretError {const CodespacesRemoveSelectedRepoFromOrgSecretError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 409.
final class CodespacesRemoveSelectedRepoFromOrgSecretError409 extends CodespacesRemoveSelectedRepoFromOrgSecretError {const CodespacesRemoveSelectedRepoFromOrgSecretError409();

 }
/// Response for 422 (application/json).
final class CodespacesRemoveSelectedRepoFromOrgSecretError422 extends CodespacesRemoveSelectedRepoFromOrgSecretError {const CodespacesRemoveSelectedRepoFromOrgSecretError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class CodespacesRemoveSelectedRepoFromOrgSecretErrorUnknown extends CodespacesRemoveSelectedRepoFromOrgSecretError {const CodespacesRemoveSelectedRepoFromOrgSecretErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
