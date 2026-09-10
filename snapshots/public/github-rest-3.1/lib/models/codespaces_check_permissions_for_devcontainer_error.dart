// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'codespaces_check_permissions_for_devcontainer_response503.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodespacesCheckPermissionsForDevcontainerError {const CodespacesCheckPermissionsForDevcontainerError();

/// Decodes the payload for its declared status and content type.
static CodespacesCheckPermissionsForDevcontainerError parse(ApiResponse response) {switch (response.statusCode) {
case 401:
final json = jsonDecode(response.body);
return  CodespacesCheckPermissionsForDevcontainerError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  CodespacesCheckPermissionsForDevcontainerError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  CodespacesCheckPermissionsForDevcontainerError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  CodespacesCheckPermissionsForDevcontainerError422(ValidationError.fromJson(json as Map<String, dynamic>));case 503:
final json = jsonDecode(response.body);
return  CodespacesCheckPermissionsForDevcontainerError503(CodespacesCheckPermissionsForDevcontainerResponse503.fromJson(json as Map<String, dynamic>));default:
return  CodespacesCheckPermissionsForDevcontainerErrorUnknown(response); }}
}
/// Response for 401 (application/json).
final class CodespacesCheckPermissionsForDevcontainerError401 extends CodespacesCheckPermissionsForDevcontainerError {const CodespacesCheckPermissionsForDevcontainerError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class CodespacesCheckPermissionsForDevcontainerError403 extends CodespacesCheckPermissionsForDevcontainerError {const CodespacesCheckPermissionsForDevcontainerError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CodespacesCheckPermissionsForDevcontainerError404 extends CodespacesCheckPermissionsForDevcontainerError {const CodespacesCheckPermissionsForDevcontainerError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class CodespacesCheckPermissionsForDevcontainerError422 extends CodespacesCheckPermissionsForDevcontainerError {const CodespacesCheckPermissionsForDevcontainerError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// Response for 503 (application/json).
final class CodespacesCheckPermissionsForDevcontainerError503 extends CodespacesCheckPermissionsForDevcontainerError {const CodespacesCheckPermissionsForDevcontainerError503(this.data);

/// The decoded response payload.
final CodespacesCheckPermissionsForDevcontainerResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodespacesCheckPermissionsForDevcontainerErrorUnknown extends CodespacesCheckPermissionsForDevcontainerError {const CodespacesCheckPermissionsForDevcontainerErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
